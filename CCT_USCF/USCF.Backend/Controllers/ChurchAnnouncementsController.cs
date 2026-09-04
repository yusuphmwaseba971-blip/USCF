using FirebaseAdmin;
using FirebaseAdmin.Messaging;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using USCF.Backend.Data;
using USCF.Backend.DTOs;
using USCF.Backend.Models;
using USCF.Backend.Services.Community;
using USCF.Backend.Services.Identity;

namespace USCF.Backend.Controllers;

[ApiController]
[Route("api/church-announcements")]
public sealed class ChurchAnnouncementsController : ControllerBase
{
    private readonly USCFDbContext _db;
    private readonly CommunityIdentityService _identity;
    private readonly IConfiguration _configuration;
    public ChurchAnnouncementsController(USCFDbContext db, CommunityIdentityService identity, IConfiguration configuration)
        => (_db, _identity, _configuration) = (db, identity, configuration);

    [HttpGet("options")]
    public async Task<IActionResult> Options(CancellationToken ct)
    {
        var user = await TryRequireUserAsync(ct);
        if (user is null) return Unauthorized();
        var scope = ScopeFor(user.User);
        if (scope is null) return Ok(new ChurchAnnouncementOptionsDto("Member", "Incomplete organization profile", []));
        var targets = await GetTargetsAsync(scope, ct);
        return Ok(new ChurchAnnouncementOptionsDto(scope.DisplayName, await OrganizationNameAsync(scope, ct), targets));
    }

    [HttpGet("notifications")]
    public async Task<IActionResult> Notifications(CancellationToken ct)
    {
        var user = await TryRequireUserAsync(ct);
        if (user is null) return Unauthorized();
        var rows = await _db.ChurchNotifications.AsNoTracking()
            .Where(x => x.RecipientUid == user.FirebaseIdentity.FirebaseUid)
            .OrderByDescending(x => x.CreatedAtUtc).Take(100).ToListAsync(ct);
        return Ok(rows.Select(ToDto));
    }

    [HttpGet("notifications/unread-count")]
    public async Task<IActionResult> UnreadCount(CancellationToken ct)
    {
        var user = await TryRequireUserAsync(ct);
        if (user is null) return Unauthorized();
        return Ok(new { count = await _db.ChurchNotifications.CountAsync(
            x => x.RecipientUid == user.FirebaseIdentity.FirebaseUid && !x.IsRead, ct) });
    }

    [HttpPost("notifications/{id:guid}/read")]
    public async Task<IActionResult> MarkRead(Guid id, CancellationToken ct)
    {
        var user = await TryRequireUserAsync(ct);
        if (user is null) return Unauthorized();
        var row = await _db.ChurchNotifications.FirstOrDefaultAsync(
            x => x.Id == id && x.RecipientUid == user.FirebaseIdentity.FirebaseUid, ct);
        if (row is null) return NotFound();
        row.IsRead = true;
        await _db.SaveChangesAsync(ct);
        return Ok();
    }

    [HttpPost]
    public async Task<IActionResult> Create(ChurchAnnouncementCreateDto dto, CancellationToken ct)
    {
        var user = await TryRequireUserAsync(ct);
        if (user is null) return Unauthorized();
        if (string.IsNullOrWhiteSpace(dto.Title) || string.IsNullOrWhiteSpace(dto.Message))
            return BadRequest(new { message = "Announcement title and message are required." });

        var scope = ScopeFor(user.User);
        if (scope is null) return BadRequest(new { message = "Your organization profile is incomplete." });
        var target = Normalize(dto.TargetLevel);
        if (!scope.AllowedLevels.Contains(target, StringComparer.OrdinalIgnoreCase))
            return Forbid();
        if (!await IsValidTargetAsync(scope, target, dto, ct))
            return Forbid();

        var announcement = new ChurchAnnouncement
        {
            SenderUid = user.FirebaseIdentity.FirebaseUid,
            SenderName = user.User.FullName,
            SenderLeadershipLevel = scope.DisplayName,
            TargetLevel = target,
            TargetRegionId = target == "Region" ? dto.RegionId : null,
            TargetDistrictId = target == "District" ? dto.DistrictId : null,
            TargetBranchId = target == "Branch" ? dto.BranchId : null,
            Title = dto.Title.Trim(),
            Message = dto.Message.Trim()
        };
        var recipients = await RecipientUidsAsync(announcement, ct);
        if (recipients.Count == 0) return BadRequest(new { message = "No eligible recipients were found." });
        foreach (var uid in recipients)
            announcement.Notifications.Add(new ChurchNotification
            {
                AnnouncementId = announcement.Id, RecipientUid = uid, Title = announcement.Title,
                Message = announcement.Message, SenderName = announcement.SenderName,
                TargetLevel = announcement.TargetLevel
            });
        _db.ChurchAnnouncements.Add(announcement);
        await _db.SaveChangesAsync(ct);

        var tokens = await _db.Users.Where(x => x.IsActive && x.FcmToken != null && x.FcmToken != "")
            .Join(_db.FirebaseAppwriteIdentityMappings, u => u.Email.ToLower(),
                m => m.Email!.ToLower(), (u, m) => new { m.FirebaseUid, u.FcmToken })
            .Where(x => recipients.Contains(x.FirebaseUid)).Select(x => x.FcmToken!).ToListAsync(ct);
        try
        {
            await SendPushAsync(tokens, announcement, ct);
            announcement.Status = "Delivered";
            await _db.SaveChangesAsync(ct);
            return Ok(new { id = announcement.Id, status = announcement.Status });
        }
        catch (Exception ex)
        {
            announcement.Status = "DeliveryFailed";
            await _db.SaveChangesAsync(ct);
            Console.WriteLine($"[ANNOUNCEMENT] Delivery failed for {announcement.Id}: {ex.GetType().Name}");
            return StatusCode(StatusCodes.Status503ServiceUnavailable,
                new { message = "Announcement saved, but notification delivery is currently unavailable.", id = announcement.Id });
        }
    }

    [HttpPost("token")]
    public async Task<IActionResult> RegisterToken([FromBody] FcmTokenDto dto, CancellationToken ct)
    {
        var user = await TryRequireUserAsync(ct);
        if (user is null) return Unauthorized();
        if (string.IsNullOrWhiteSpace(dto.Token)) return BadRequest();
        var profile = await _db.Users.SingleAsync(x => x.Id == user.User.Id, ct);
        profile.FcmToken = dto.Token.Trim();
        await _db.SaveChangesAsync(ct);
        return Ok();
    }

    private async Task SendPushAsync(IReadOnlyList<string> tokens, ChurchAnnouncement announcement, CancellationToken ct)
    {
        if (tokens.Count == 0) return;
        var projectId = _configuration["Firebase:ProjectId"];
        var app = FirebaseApp.GetInstance("CCT-USCF-IdentityBridge")
            ?? throw new InvalidOperationException("Firebase server messaging is not configured.");
        var messaging = FirebaseMessaging.GetMessaging(app);
        foreach (var chunk in tokens.Chunk(500))
        {
            ct.ThrowIfCancellationRequested();
            await messaging.SendEachForMulticastAsync(new MulticastMessage
            {
                Tokens = chunk.ToList(),
                Notification = new Notification { Title = announcement.Title, Body = announcement.Message },
                Data = new Dictionary<string, string> { ["announcementId"] = announcement.Id.ToString() }
            }, ct);
        }
    }

    private async Task<List<string>> RecipientUidsAsync(ChurchAnnouncement a, CancellationToken ct)
    {
        var users = _db.Users.AsNoTracking().Where(x => x.IsActive);
        users = a.TargetLevel switch
        {
            "National" => users,
            "Region" => users.Where(x => x.RegionId == a.TargetRegionId),
            "District" => users.Where(x => x.DistrictId == a.TargetDistrictId),
            "Branch" => users.Where(x => x.BranchId == a.TargetBranchId),
            _ => users.Where(_ => false)
        };
        return await users.Join(_db.FirebaseAppwriteIdentityMappings, u => u.Email.ToLower(),
            m => m.Email!.ToLower(), (_, m) => m.FirebaseUid).Distinct().ToListAsync(ct);
    }

    private async Task<bool> IsValidTargetAsync(LeaderScope scope, string target, ChurchAnnouncementCreateDto dto, CancellationToken ct)
    {
        if (target == "National") return true;
        if (target == "Region")
            return dto.RegionId.HasValue && await _db.Regions.AnyAsync(x => x.Id == dto.RegionId &&
                (scope.AllowedLevels.Contains("National") || scope.RegionIds.Contains(x.Id)), ct);
        if (target == "District")
            return dto.DistrictId.HasValue && await _db.Districts.AnyAsync(x => x.Id == dto.DistrictId &&
                (scope.AllowedLevels.Contains("National") || scope.DistrictIds.Contains(x.Id)), ct);
        if (target == "Branch")
            return dto.BranchId.HasValue && await _db.Branches.AnyAsync(x => x.Id == dto.BranchId &&
                (scope.AllowedLevels.Contains("National") || scope.BranchIds.Contains(x.Id)), ct);
        return false;
    }

    private async Task<IReadOnlyList<ChurchAnnouncementTargetDto>> GetTargetsAsync(LeaderScope scope, CancellationToken ct)
    {
        var result = new List<ChurchAnnouncementTargetDto>();
        if (scope.AllowedLevels.Contains("National")) result.Add(new("National", 0, "National", null, null));
        result.AddRange(await _db.Regions.Where(x => scope.AllowedLevels.Contains("National") || scope.RegionIds.Contains(x.Id)).OrderBy(x => x.Name)
            .Select(x => new ChurchAnnouncementTargetDto("Region", x.Id, x.Name, x.Id, null)).ToListAsync(ct));
        result.AddRange(await _db.Districts.Where(x => scope.AllowedLevels.Contains("National") || scope.DistrictIds.Contains(x.Id)).OrderBy(x => x.Name)
            .Select(x => new ChurchAnnouncementTargetDto("District", x.Id, x.Name, x.RegionId, x.Id)).ToListAsync(ct));
        result.AddRange(await _db.Branches.Where(x => scope.AllowedLevels.Contains("National") || scope.BranchIds.Contains(x.Id)).OrderBy(x => x.Name)
            .Select(x => new ChurchAnnouncementTargetDto("Branch", x.Id, x.Name, x.RegionId, x.DistrictId)).ToListAsync(ct));
        return result;
    }

    private async Task<string> OrganizationNameAsync(LeaderScope scope, CancellationToken ct) =>
        scope.BranchId.HasValue ? await _db.Branches.Where(x => x.Id == scope.BranchId).Select(x => x.Name).FirstOrDefaultAsync(ct) ?? "Branch" :
        scope.DistrictId.HasValue ? await _db.Districts.Where(x => x.Id == scope.DistrictId).Select(x => x.Name).FirstOrDefaultAsync(ct) ?? "District" :
        scope.RegionId.HasValue ? await _db.Regions.Where(x => x.Id == scope.RegionId).Select(x => x.Name).FirstOrDefaultAsync(ct) ?? "Region" : "National";

    private async Task<AuthenticatedCommunityUser?> TryRequireUserAsync(CancellationToken ct)
    {
        try
        {
            var header = Request.Headers.Authorization.ToString();
            if (!header.StartsWith("Bearer ", StringComparison.OrdinalIgnoreCase)) return null;
            return await _identity.RequireUserAsync(header["Bearer ".Length..].Trim(), ct);
        }
        catch (UnauthorizedAccessException) { return null; }
        catch (FirebaseTokenVerificationException) { return null; }
    }

    private static string Normalize(string? value) => value?.Trim().Replace(" ", "", StringComparison.Ordinal).ToLowerInvariant() switch
    {
        "national" => "National", "region" or "regional" => "Region",
        "district" => "District", "branch" => "Branch", _ => string.Empty
    };

    private static LeaderScope? ScopeFor(User user)
    {
        var level = (user.LeadershipLevel ?? user.Role ?? string.Empty).Trim().ToLowerInvariant();
        var national = level.Contains("national") || level.Contains("chairman");
        var regional = national || level.Contains("regional") || level == "region";
        var district = regional || level.Contains("district");
        if (!national && !regional && !district && !user.BranchId.HasValue) return null;
        return new(
            national ? "National Leader" : regional ? "Regional Leader" : district ? "District Leader" : "Branch Member",
            national ? ["National", "Region", "District", "Branch"] : regional ? ["Region", "District", "Branch"] :
                district ? ["District", "Branch"] : ["Branch"],
            national ? [] : user.RegionId.HasValue ? [user.RegionId.Value] : [],
            district ? (user.DistrictId.HasValue ? [user.DistrictId.Value] : []) : [],
            user.BranchId.HasValue ? [user.BranchId.Value] : [], user.RegionId, user.DistrictId, user.BranchId);
    }

    private sealed record LeaderScope(string DisplayName, IReadOnlyList<string> AllowedLevels,
        IReadOnlyList<int> RegionIds, IReadOnlyList<int> DistrictIds, IReadOnlyList<int> BranchIds,
        int? RegionId, int? DistrictId, int? BranchId);
    private static ChurchNotificationDto ToDto(ChurchNotification x) =>
        new(x.Id, x.AnnouncementId, x.Title, x.Message, x.SenderName, x.TargetLevel, x.CreatedAtUtc, x.IsRead);
}

public sealed record FcmTokenDto(string Token);
