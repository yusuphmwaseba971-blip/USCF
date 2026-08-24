using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Options;
using USCF.Backend.Data;
using USCF.Backend.Options;

namespace USCF.Backend.Services;

public sealed class UserRetentionCleanupService
{
    private readonly USCFDbContext _db;
    private readonly UserRetentionOptions _options;
    private readonly ILogger<UserRetentionCleanupService> _logger;

    public UserRetentionCleanupService(USCFDbContext db, IOptions<UserRetentionOptions> options, ILogger<UserRetentionCleanupService> logger)
    {
        _db = db;
        _options = options.Value;
        _logger = logger;
    }

    public async Task RunRetentionCleanupAsync()
    {
        if (!_options.Enabled)
        {
            return;
        }

        var cutoff = DateTime.UtcNow.AddDays(-_options.UserDataRetentionDays);

        var candidates = await _db.Users
            .Where(u => u.CreatedAt <= cutoff && u.IsActive)
            .ToListAsync();

        foreach (var user in candidates)
        {
            try
            {
                user.IsActive = false;
                user.FullName = "Retained User";
                user.Email = $"retained-{user.Id:N}@deleted.local";
                user.Username = $"user_{user.Id:N}";
                user.PhoneNumber = null;
                user.Bio = null;
                user.ProfileImageUrl = null;
                user.UpdatedAt = DateTime.UtcNow;

                _logger.LogInformation("Anonymized user record {UserId} for retention policy.", user.Id);
            }
            catch (Exception ex)
            {
                _logger.LogError(ex, "Retention processing failed for user {UserId}", user.Id);
            }
        }

        await _db.SaveChangesAsync();
    }
}
