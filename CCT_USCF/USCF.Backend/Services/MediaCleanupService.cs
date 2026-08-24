using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Options;
using USCF.Backend.Data;
using USCF.Backend.Models;
using USCF.Backend.Options;

namespace USCF.Backend.Services;

public sealed class MediaCleanupService
{
    private readonly USCFDbContext _db;
    private readonly IWebHostEnvironment _environment;
    private readonly MediaOptions _options;
    private readonly ILogger<MediaCleanupService> _logger;

    public MediaCleanupService(USCFDbContext db, IWebHostEnvironment environment, IOptions<MediaOptions> options, ILogger<MediaCleanupService> logger)
    {
        _db = db;
        _environment = environment;
        _options = options.Value;
        _logger = logger;
    }

    public async Task RunCleanupAsync()
    {
        var threshold = DateTime.UtcNow.AddDays(-_options.TemporaryMediaRetentionDays);

        var expiredMedia = await _db.PostMedias
            .Where(m => m.IsTemporary && !m.IsDeleted && m.ExpiresAt != null && m.ExpiresAt <= DateTime.UtcNow)
            .ToListAsync();

        if (expiredMedia.Count == 0)
        {
            return;
        }

        foreach (var media in expiredMedia)
        {
            try
            {
                var physicalPath = GetPhysicalPath(media.StoragePath);
                if (!string.IsNullOrWhiteSpace(physicalPath) && System.IO.File.Exists(physicalPath))
                {
                    System.IO.File.Delete(physicalPath);
                }

                media.IsDeleted = true;
                media.DeletedAt = DateTime.UtcNow;
                media.ExpiresAt = null;

                _logger.LogInformation("Expired temporary media cleaned up: {MediaId} at {DeletedAt}", media.Id, media.DeletedAt);
            }
            catch (Exception ex)
            {
                _logger.LogError(ex, "Failed to clean up expired temporary media {MediaId}", media.Id);
            }
        }

        await _db.SaveChangesAsync();

        var uploadsDirectory = Path.Combine(_environment.WebRootPath ?? Path.Combine(Directory.GetCurrentDirectory(), "wwwroot"), _options.UploadRootRelativePath);
        if (Directory.Exists(uploadsDirectory))
        {
            foreach (var orphan in Directory.EnumerateFiles(uploadsDirectory, "*", SearchOption.AllDirectories))
            {
                var relativePath = Path.GetRelativePath(uploadsDirectory, orphan).Replace('\\', '/');
                var hasRecord = await _db.PostMedias.AnyAsync(m => m.StoragePath == relativePath && !m.IsDeleted);
                if (!hasRecord)
                {
                    try
                    {
                        System.IO.File.Delete(orphan);
                        _logger.LogInformation("Removed orphaned temporary media file: {Path}", orphan);
                    }
                    catch (Exception ex)
                    {
                        _logger.LogError(ex, "Failed to delete orphaned temporary file: {Path}", orphan);
                    }
                }
            }
        }
    }

    private string? GetPhysicalPath(string? storagePath)
    {
        if (string.IsNullOrWhiteSpace(storagePath))
        {
            return null;
        }

        var root = _environment.WebRootPath ?? Path.Combine(Directory.GetCurrentDirectory(), "wwwroot");
        var uploadsDirectory = Path.Combine(root, _options.UploadRootRelativePath);
        var candidate = Path.Combine(uploadsDirectory, storagePath.Replace('/', Path.DirectorySeparatorChar).Replace('\\', Path.DirectorySeparatorChar));
        return Path.GetFullPath(candidate);
    }
}
