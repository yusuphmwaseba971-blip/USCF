using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Options;
using USCF.Backend.Data;
using USCF.Backend.Models;
using USCF.Backend.Options;

namespace USCF.Backend.Services;

public class MediaStorageService
{
    private readonly USCFDbContext _db;
    private readonly IWebHostEnvironment _environment;
    private readonly MediaOptions _options;
    private readonly ILogger<MediaStorageService> _logger;

    public MediaStorageService(USCFDbContext db, IWebHostEnvironment environment, IOptions<MediaOptions> options, ILogger<MediaStorageService> logger)
    {
        _db = db;
        _environment = environment;
        _options = options.Value;
        _logger = logger;
    }

    public string GetUploadsDirectory()
    {
        var root = _environment.WebRootPath ?? Path.Combine(Directory.GetCurrentDirectory(), "wwwroot");
        var uploadsDirectory = Path.Combine(root, _options.UploadRootRelativePath);
        Directory.CreateDirectory(uploadsDirectory);
        return uploadsDirectory;
    }

    public async Task<long> GetStorageUsageBytesAsync()
    {
        var storageDirectory = GetUploadsDirectory();
        var files = Directory.EnumerateFiles(storageDirectory, "*", SearchOption.AllDirectories);
        long total = 0;

        foreach (var file in files)
        {
            total += new FileInfo(file).Length;
        }

        return total + await _db.PostMedias.AsNoTracking().Where(m => !m.IsDeleted && m.FileSizeBytes.HasValue).SumAsync(m => (long?)m.FileSizeBytes ?? 0);
    }

    public async Task<(bool Allowed, string? Message)> CanAcceptUploadAsync(long requestedBytes)
    {
        if (requestedBytes <= 0)
        {
            return (false, "The uploaded file is empty.");
        }

        var currentUsageBytes = await GetStorageUsageBytesAsync();
        var hardLimitBytes = _options.HardLimitBytes;
        var warningThresholdBytes = _options.WarningThresholdBytes;

        // If adding this upload would exceed the hard limit, reject immediately.
        if (currentUsageBytes + requestedBytes > hardLimitBytes)
        {
            return (false, $"Storage is at the hard limit ({_options.MediaHardLimitGb} GB). New media uploads are temporarily blocked until space is recovered.");
        }

        // If we're at or above the warning threshold (or this upload would push us over it),
        // attempt an automated cleanup of expired temporary media and recalculate usage.
        if (currentUsageBytes + requestedBytes >= warningThresholdBytes)
        {
            try
            {
                _logger.LogWarning("Storage usage at or above warning threshold ({Threshold} bytes). Running expired-media cleanup.", warningThresholdBytes);

                var expiredMedia = await _db.PostMedias
                    .Where(m => m.IsTemporary && !m.IsDeleted && m.ExpiresAt != null && m.ExpiresAt <= DateTime.UtcNow)
                    .ToListAsync();

                if (expiredMedia.Count > 0)
                {
                    var uploadsDirectory = Path.Combine(_environment.WebRootPath ?? Path.Combine(Directory.GetCurrentDirectory(), "wwwroot"), _options.UploadRootRelativePath);

                    foreach (var media in expiredMedia)
                    {
                        try
                        {
                            if (!string.IsNullOrWhiteSpace(media.StoragePath))
                            {
                                var candidate = Path.Combine(uploadsDirectory, media.StoragePath.Replace('/', Path.DirectorySeparatorChar).Replace('\\', Path.DirectorySeparatorChar));
                                var physicalPath = Path.GetFullPath(candidate);
                                if (System.IO.File.Exists(physicalPath))
                                {
                                    System.IO.File.Delete(physicalPath);
                                    _logger.LogInformation("Deleted expired media file {Path}", physicalPath);
                                }
                            }

                            media.IsDeleted = true;
                            media.DeletedAt = DateTime.UtcNow;
                            media.ExpiresAt = null;
                        }
                        catch (Exception ex)
                        {
                            _logger.LogError(ex, "Failed to delete expired media {MediaId}", media.Id);
                        }
                    }

                    await _db.SaveChangesAsync();

                    // Remove orphaned files after DB cleanup
                    if (Directory.Exists(uploadsDirectory))
                    {
                        foreach (var orphan in Directory.EnumerateFiles(uploadsDirectory, "*", SearchOption.AllDirectories))
                        {
                            try
                            {
                                var relativePath = Path.GetRelativePath(uploadsDirectory, orphan).Replace('\\', '/');
                                var hasRecord = await _db.PostMedias.AnyAsync(m => m.StoragePath == relativePath && !m.IsDeleted);
                                if (!hasRecord)
                                {
                                    System.IO.File.Delete(orphan);
                                    _logger.LogInformation("Removed orphaned media file: {Path}", orphan);
                                }
                            }
                            catch (Exception ex)
                            {
                                _logger.LogError(ex, "Failed to delete orphaned file {Path}", orphan);
                            }
                        }
                    }

                    // Recalculate storage usage after cleanup
                    currentUsageBytes = await GetStorageUsageBytesAsync();
                }
                else
                {
                    _logger.LogInformation("No expired media found during cleanup run.");
                }
            }
            catch (Exception ex)
            {
                _logger.LogError(ex, "Automated cleanup at warning threshold failed.");
                // If cleanup fails, fall through to normal capacity checks to avoid blocking all uploads.
            }
        }

        // Final check against hard limit after any cleanup attempt
        if (currentUsageBytes + requestedBytes > hardLimitBytes)
        {
            return (false, $"Storage is at the hard limit ({_options.MediaHardLimitGb} GB). New media uploads are temporarily blocked until space is recovered.");
        }

        return (true, null);
    }
}
