using System.Security.Cryptography;
using System.Text;
using Microsoft.EntityFrameworkCore;
using USCF.Backend.Data;
using USCF.Backend.DTOs.Community;

namespace USCF.Backend.Services.Community;

public sealed class BranchInvitationService
{
    private readonly USCFDbContext _db;
    private readonly CctOrganizationAuthorizationService _authorization;
    private readonly IConfiguration _configuration;

    public BranchInvitationService(USCFDbContext db, CctOrganizationAuthorizationService authorization, IConfiguration configuration)
    {
        _db = db;
        _authorization = authorization;
        _configuration = configuration;
    }

    public async Task<BranchInvitationDto> CreateAsync(AuthenticatedCommunityUser user, int branchId, CancellationToken cancellationToken)
    {
        var context = await _authorization.ResolveAuthorizedContextAsync(user.User, new ResolveTeamRequest
        {
            CommunityId = branchId.ToString(),
            BranchId = branchId,
            OrganizationalLevel = "Branch"
        }, cancellationToken);
        var branch = await _db.Branches.AsNoTracking().SingleAsync(item => item.Id == context.OrganizationId, cancellationToken);
        var baseUrl = _configuration["Invitation:PublicBaseUrl"]?.TrimEnd('/');
        if (string.IsNullOrWhiteSpace(baseUrl) || !Uri.TryCreate(baseUrl, UriKind.Absolute, out var uri) || uri.Scheme != Uri.UriSchemeHttps)
            throw new InvalidOperationException("Invitation public HTTPS URL is not configured.");
        var tokenBytes = RandomNumberGenerator.GetBytes(32);
        var token = Convert.ToBase64String(tokenBytes).Replace("+", "-").Replace("/", "_").TrimEnd('=');
        var invitation = new Models.BranchInvitation
        {
            TokenHash = Hash(token),
            BranchId = branch.Id,
            DistrictId = branch.DistrictId,
            RegionId = branch.RegionId,
            InviterUid = user.FirebaseIdentity.FirebaseUid,
            ExpiresAtUtc = DateTime.UtcNow.AddDays(7)
        };
        _db.BranchInvitations.Add(invitation);
        await _db.SaveChangesAsync(cancellationToken);
        return new BranchInvitationDto
        {
            InvitationId = invitation.Id.ToString("N"),
            BranchId = branch.Id,
            BranchName = branch.Name,
            ExpiresAtUtc = invitation.ExpiresAtUtc,
            Url = $"{baseUrl}/invite/{token}"
        };
    }

    public async Task AcceptAsync(AuthenticatedCommunityUser user, string token, CancellationToken cancellationToken)
    {
        if (string.IsNullOrWhiteSpace(token))
            throw new ArgumentException("Invitation token is required.", nameof(token));
        var invitation = await _db.BranchInvitations.SingleOrDefaultAsync(item => item.TokenHash == Hash(token.Trim()), cancellationToken);
        if (invitation == null || invitation.RevokedAtUtc != null || invitation.UsedAtUtc != null ||
            invitation.ExpiresAtUtc <= DateTime.UtcNow || invitation.UsageCount >= invitation.UsageLimit)
            throw new UnauthorizedAccessException("This invitation is invalid or expired.");
        var branch = await _db.Branches.SingleOrDefaultAsync(item =>
            item.Id == invitation.BranchId &&
            item.DistrictId == invitation.DistrictId &&
            item.RegionId == invitation.RegionId, cancellationToken);
        if (branch == null)
            throw new UnauthorizedAccessException("The invited Branch Group is no longer available.");
        var target = await _db.Users.SingleAsync(item => item.Id == user.User.Id, cancellationToken);
        target.BranchId = branch.Id;
        target.DistrictId = branch.DistrictId;
        target.RegionId = branch.RegionId;
        invitation.UsageCount++;
        invitation.UsedAtUtc = DateTime.UtcNow;
        await _db.SaveChangesAsync(cancellationToken);
    }

    private static string Hash(string token) =>
        Convert.ToHexString(SHA256.HashData(Encoding.UTF8.GetBytes(token)));
}
