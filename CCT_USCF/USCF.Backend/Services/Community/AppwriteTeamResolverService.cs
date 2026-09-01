using System.Collections.Concurrent;
using Microsoft.EntityFrameworkCore;
using USCF.Backend.Data;
using USCF.Backend.Models;

namespace USCF.Backend.Services.Community;

public sealed class AppwriteTeamResolverService
{
    private static readonly ConcurrentDictionary<string, SemaphoreSlim> Locks = new();

    private readonly USCFDbContext _db;
    private readonly IAppwriteCommunityGateway _appwriteGateway;

    public AppwriteTeamResolverService(
        USCFDbContext db,
        IAppwriteCommunityGateway appwriteGateway)
    {
        _db = db;
        _appwriteGateway = appwriteGateway;
    }

    public async Task<AppwriteTeamMapping> ResolveTeamAsync(
        CctOrganizationContext context,
        CancellationToken cancellationToken = default)
    {
        var lockKey = context.StableKey;
        var gate = Locks.GetOrAdd(lockKey, _ => new SemaphoreSlim(1, 1));
        await gate.WaitAsync(cancellationToken);

        try
        {
            var existing = await FindMappingAsync(context, cancellationToken);
            if (existing != null)
            {
                await _appwriteGateway.EnsureTeamAsync(existing.AppwriteTeamId, existing.DisplayName, cancellationToken);
                return existing;
            }

            var mapping = new AppwriteTeamMapping
            {
                OrganizationType = context.OrganizationType,
                OrganizationId = context.OrganizationId,
                AppwriteTeamId = BuildStableTeamId(context),
                DisplayName = context.DisplayName,
                CreatedAtUtc = DateTime.UtcNow,
                UpdatedAtUtc = DateTime.UtcNow
            };

            await _appwriteGateway.EnsureTeamAsync(mapping.AppwriteTeamId, mapping.DisplayName, cancellationToken);
            _db.AppwriteTeamMappings.Add(mapping);

            try
            {
                await _db.SaveChangesAsync(cancellationToken);
                return mapping;
            }
            catch (DbUpdateException)
            {
                var concurrent = await FindMappingAsync(context, cancellationToken);
                if (concurrent != null)
                    return concurrent;

                throw;
            }
        }
        finally
        {
            gate.Release();
        }
    }

    private Task<AppwriteTeamMapping?> FindMappingAsync(
        CctOrganizationContext context,
        CancellationToken cancellationToken)
    {
        return _db.AppwriteTeamMappings
            .SingleOrDefaultAsync(
                item => item.OrganizationType == context.OrganizationType &&
                        item.OrganizationId == context.OrganizationId,
                cancellationToken);
    }

    private static string BuildStableTeamId(CctOrganizationContext context)
    {
        return $"cct-{context.OrganizationType.ToLowerInvariant()}-{context.OrganizationId}";
    }
}
