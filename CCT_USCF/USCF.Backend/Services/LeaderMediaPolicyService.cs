using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Options;
using USCF.Backend.Data;
using USCF.Backend.Models;
using USCF.Backend.Options;

namespace USCF.Backend.Services;

public enum LeaderMediaKind
{
    Image,
    Video
}

public sealed class LeaderMediaPolicyResult
{
    public bool IsAllowed { get; init; }
    public string? Message { get; init; }
    public int DailyUsedCount { get; init; }
    public int DailyLimit { get; init; }
}

public class LeaderMediaPolicyService
{
    private readonly USCFDbContext _db;
    private readonly MediaOptions _options;

    public LeaderMediaPolicyService(USCFDbContext db, IOptions<MediaOptions> options)
    {
        _db = db;
        _options = options.Value;
    }

    public async Task<LeaderMediaPolicyResult> CheckUploadAsync(Guid userId, LeaderMediaKind kind, long fileSizeBytes)
    {
        var user = await _db.Users.AsNoTracking().FirstOrDefaultAsync(u => u.Id == userId);
        if (user == null)
        {
            return new LeaderMediaPolicyResult { IsAllowed = false, Message = "User not found." };
        }

        if (!IsVerifiedLeader(user))
        {
            return new LeaderMediaPolicyResult { IsAllowed = false, Message = "Only verified and authorized leaders may use leader media publishing privileges." };
        }

        var dailyLimit = kind == LeaderMediaKind.Image ? _options.MaxLeaderImagesPerDay : _options.MaxLeaderVideosPerDay;
        var dailyCount = await _db.PostMedias.CountAsync(m =>
            m.UploadedByUserId == userId &&
            m.IsTemporary &&
            m.CreatedAt >= DateTime.UtcNow.Date &&
            m.MediaType == kind.ToString().ToLowerInvariant());

        if (dailyCount >= dailyLimit)
        {
            return new LeaderMediaPolicyResult
            {
                IsAllowed = false,
                Message = $"You have reached today's {kind.ToString().ToLowerInvariant()} limit of {dailyLimit} {kind.ToString().ToLowerInvariant()}s.",
                DailyUsedCount = dailyCount,
                DailyLimit = dailyLimit
            };
        }

        if (kind == LeaderMediaKind.Video && fileSizeBytes > _options.MaxVideoSizeBytes)
        {
            return new LeaderMediaPolicyResult
            {
                IsAllowed = false,
                Message = $"Maximum video size: { _options.MaxVideoSizeMb } MB.",
                DailyUsedCount = dailyCount,
                DailyLimit = dailyLimit
            };
        }

        return new LeaderMediaPolicyResult { IsAllowed = true, DailyUsedCount = dailyCount, DailyLimit = dailyLimit };
    }

    public static bool IsVerifiedLeader(User user)
    {
        if (string.IsNullOrWhiteSpace(user.Role))
        {
            return false;
        }

        var normalizedRole = user.Role.Trim();
        var roleMatches = normalizedRole.Equals("Leader", StringComparison.OrdinalIgnoreCase)
            || normalizedRole.Equals("NationalLeader", StringComparison.OrdinalIgnoreCase)
            || normalizedRole.Equals("RegionalLeader", StringComparison.OrdinalIgnoreCase)
            || normalizedRole.Equals("DistrictLeader", StringComparison.OrdinalIgnoreCase)
            || normalizedRole.Equals("BranchLeader", StringComparison.OrdinalIgnoreCase);

        if (!roleMatches)
        {
            return false;
        }

        var status = user.RoleVerificationStatus ?? string.Empty;
        return status.Equals("Verified", StringComparison.OrdinalIgnoreCase)
            || status.Equals("Authorized", StringComparison.OrdinalIgnoreCase)
            || status.Equals("Approved", StringComparison.OrdinalIgnoreCase);
    }
}
