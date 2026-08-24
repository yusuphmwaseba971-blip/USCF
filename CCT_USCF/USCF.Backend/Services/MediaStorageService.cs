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

        if (currentUsageBytes + requestedBytes > hardLimitBytes)
        {
            return (false, $"Storage is at the hard limit ({_options.MediaHardLimitGb} GB). New media uploads are temporarily blocked until space is recovered.");
        }

        return (true, null);
    }
}
