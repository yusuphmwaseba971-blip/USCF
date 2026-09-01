using Microsoft.EntityFrameworkCore;
using USCF.Backend.Data;
using USCF.Backend.Models;

namespace USCF.Backend.Services.Community;

public sealed class AppwriteMembershipSynchronizationService
{
    private readonly USCFDbContext _db;
    private readonly CctOrganizationAuthorizationService _authorization;
    private readonly AppwriteTeamResolverService _teamResolver;
    private readonly IAppwriteCommunityGateway _appwriteGateway;

    public AppwriteMembershipSynchronizationService(
        USCFDbContext db,
        CctOrganizationAuthorizationService authorization,
        AppwriteTeamResolverService teamResolver,
        IAppwriteCommunityGateway appwriteGateway)
    {
        _db = db;
        _authorization = authorization;
        _teamResolver = teamResolver;
        _appwriteGateway = appwriteGateway;
    }

    public async Task<IReadOnlyList<AppwriteTeamMapping>> SynchronizeAsync(
        AuthenticatedCommunityUser user,
        CancellationToken cancellationToken = default)
    {
        var contexts = await _authorization.GetAuthorizedContextsAsync(user.User, cancellationToken);
        var activeMappings = new List<AppwriteTeamMapping>();

        foreach (var context in contexts)
        {
            var mapping = await _teamResolver.ResolveTeamAsync(context, cancellationToken);
            await EnsureMembershipAsync(user, mapping, cancellationToken);
            activeMappings.Add(mapping);
        }

        await RemoveStaleMembershipsAsync(user, activeMappings, cancellationToken);
        return activeMappings;
    }

    public async Task<AppwriteTeamMapping> EnsureMembershipForContextAsync(
        AuthenticatedCommunityUser user,
        CctOrganizationContext context,
        CancellationToken cancellationToken = default)
    {
        var mapping = await _teamResolver.ResolveTeamAsync(context, cancellationToken);
        await EnsureMembershipAsync(user, mapping, cancellationToken);
        return mapping;
    }

    private async Task EnsureMembershipAsync(
        AuthenticatedCommunityUser user,
        AppwriteTeamMapping mapping,
        CancellationToken cancellationToken)
    {
        var existing = await _db.AppwriteTeamMemberships
            .SingleOrDefaultAsync(
                item => item.TeamMappingId == mapping.Id &&
                        item.AppwriteUserId == user.AppwriteMapping.AppwriteUserId,
                cancellationToken);

        await _appwriteGateway.EnsureTeamMembershipAsync(
            mapping.AppwriteTeamId,
            user.AppwriteMapping.AppwriteUserId,
            user.AppwriteMapping.Email ?? user.FirebaseIdentity.Email,
            cancellationToken);

        if (existing == null)
        {
            _db.AppwriteTeamMemberships.Add(new AppwriteTeamMembership
            {
                TeamMappingId = mapping.Id,
                FirebaseUid = user.FirebaseIdentity.FirebaseUid,
                AppwriteUserId = user.AppwriteMapping.AppwriteUserId,
                IsActive = true,
                CreatedAtUtc = DateTime.UtcNow,
                UpdatedAtUtc = DateTime.UtcNow
            });
        }
        else if (!existing.IsActive || existing.FirebaseUid != user.FirebaseIdentity.FirebaseUid)
        {
            existing.IsActive = true;
            existing.FirebaseUid = user.FirebaseIdentity.FirebaseUid;
            existing.UpdatedAtUtc = DateTime.UtcNow;
        }

        await _db.SaveChangesAsync(cancellationToken);
    }

    private async Task RemoveStaleMembershipsAsync(
        AuthenticatedCommunityUser user,
        IReadOnlyList<AppwriteTeamMapping> activeMappings,
        CancellationToken cancellationToken)
    {
        var activeMappingIds = activeMappings.Select(item => item.Id).ToHashSet();
        var memberships = await _db.AppwriteTeamMemberships
            .Where(item => item.AppwriteUserId == user.AppwriteMapping.AppwriteUserId && item.IsActive)
            .ToListAsync(cancellationToken);

        foreach (var membership in memberships)
        {
            if (activeMappingIds.Contains(membership.TeamMappingId))
                continue;

            var mapping = await _db.AppwriteTeamMappings
                .SingleOrDefaultAsync(item => item.Id == membership.TeamMappingId, cancellationToken);
            if (mapping == null)
                continue;

            await _appwriteGateway.RemoveTeamMembershipAsync(
                mapping.AppwriteTeamId,
                membership.AppwriteUserId,
                cancellationToken);

            membership.IsActive = false;
            membership.UpdatedAtUtc = DateTime.UtcNow;
        }

        await _db.SaveChangesAsync(cancellationToken);
    }
}
