using Microsoft.EntityFrameworkCore;
using USCF.Backend.Data;
using USCF.Backend.DTOs.Community;
using USCF.Backend.Models;

namespace USCF.Backend.Services.Community;

public sealed class CctOrganizationAuthorizationService
{
    private readonly USCFDbContext _db;

    public CctOrganizationAuthorizationService(USCFDbContext db)
    {
        _db = db;
    }

    public async Task<CctOrganizationContext> ResolveAuthorizedContextAsync(
        User user,
        ResolveTeamRequest request,
        CancellationToken cancellationToken = default)
    {
        var context = await ResolveRequestedContextAsync(request, cancellationToken);
        if (!IsAuthorized(user, context))
            throw new UnauthorizedAccessException("The authenticated user is not authorized for this CCT group.");

        return context;
    }

    public async Task<IReadOnlyList<CctOrganizationContext>> GetAuthorizedContextsAsync(
        User user,
        CancellationToken cancellationToken = default)
    {
        var contexts = new List<CctOrganizationContext>();

        if (user.BranchId is int branchId && branchId > 0)
        {
            var branch = await _db.Branches.AsNoTracking()
                .SingleOrDefaultAsync(item => item.Id == branchId, cancellationToken);
            contexts.Add(new CctOrganizationContext("Branch", branchId, branch?.Name ?? $"Branch {branchId}"));
        }

        if (user.DistrictId is int districtId && districtId > 0)
        {
            var district = await _db.Districts.AsNoTracking()
                .SingleOrDefaultAsync(item => item.Id == districtId, cancellationToken);
            contexts.Add(new CctOrganizationContext("District", districtId, district?.Name ?? $"District {districtId}"));
        }

        if (user.RegionId is int regionId && regionId > 0)
        {
            var region = await _db.Regions.AsNoTracking()
                .SingleOrDefaultAsync(item => item.Id == regionId, cancellationToken);
            contexts.Add(new CctOrganizationContext("Region", regionId, region?.Name ?? $"Region {regionId}"));
        }

        return contexts;
    }

    private async Task<CctOrganizationContext> ResolveRequestedContextAsync(
        ResolveTeamRequest request,
        CancellationToken cancellationToken)
    {
        var level = NormalizeLevel(request.OrganizationalLevel);
        var requestedId = GetRequestedId(level, request);
        var hasCommunityId = int.TryParse(request.CommunityId, out var parsedCommunityId) && parsedCommunityId > 0;

        if (requestedId <= 0 && hasCommunityId)
            requestedId = parsedCommunityId;

        if (requestedId > 0 && hasCommunityId && requestedId != parsedCommunityId)
            throw new UnauthorizedAccessException("The requested group does not match the requested CCT organization.");

        if (requestedId <= 0)
            throw new UnauthorizedAccessException("A valid CCT organization identifier is required.");

        return level switch
        {
            "Branch" => await ResolveBranchAsync(requestedId, cancellationToken),
            "District" => await ResolveDistrictAsync(requestedId, cancellationToken),
            "Region" => await ResolveRegionAsync(requestedId, cancellationToken),
            _ => throw new UnauthorizedAccessException("This CCT group type does not have a server-side membership source yet.")
        };
    }

    private static int GetRequestedId(string level, ResolveTeamRequest request)
    {
        return level switch
        {
            "Branch" => request.BranchId ?? 0,
            "District" => request.DistrictId ?? 0,
            "Region" => request.RegionId ?? 0,
            _ => 0
        };
    }

    private async Task<CctOrganizationContext> ResolveBranchAsync(
        int branchId,
        CancellationToken cancellationToken)
    {
        var branch = await _db.Branches.AsNoTracking()
            .SingleOrDefaultAsync(item => item.Id == branchId, cancellationToken);
        return new CctOrganizationContext("Branch", branchId, branch?.Name ?? $"Branch {branchId}");
    }

    private async Task<CctOrganizationContext> ResolveDistrictAsync(
        int districtId,
        CancellationToken cancellationToken)
    {
        var district = await _db.Districts.AsNoTracking()
            .SingleOrDefaultAsync(item => item.Id == districtId, cancellationToken);
        return new CctOrganizationContext("District", districtId, district?.Name ?? $"District {districtId}");
    }

    private async Task<CctOrganizationContext> ResolveRegionAsync(
        int regionId,
        CancellationToken cancellationToken)
    {
        var region = await _db.Regions.AsNoTracking()
            .SingleOrDefaultAsync(item => item.Id == regionId, cancellationToken);
        return new CctOrganizationContext("Region", regionId, region?.Name ?? $"Region {regionId}");
    }

    private static bool IsAuthorized(User user, CctOrganizationContext context)
    {
        return context.OrganizationType switch
        {
            "Branch" => user.BranchId == context.OrganizationId,
            "District" => user.DistrictId == context.OrganizationId,
            "Region" => user.RegionId == context.OrganizationId,
            _ => false
        };
    }

    private static string NormalizeLevel(string? value)
    {
        if (string.IsNullOrWhiteSpace(value))
            return "Branch";

        return value.Trim() switch
        {
            "Branch Group" => "Branch",
            "District Group" => "District",
            "Regional Group" => "Region",
            "Region" => "Region",
            "Regional" => "Region",
            "District" => "District",
            "Branch" => "Branch",
            _ => value.Trim()
        };
    }
}
