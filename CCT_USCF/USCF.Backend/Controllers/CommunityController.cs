using Microsoft.AspNetCore.Mvc;
using USCF.Backend.DTOs.Community;
using USCF.Backend.Services.Community;
using USCF.Backend.Services.Identity;

namespace USCF.Backend.Controllers;

[ApiController]
[Route("api/community")]
public sealed class CommunityController : ControllerBase
{
    private readonly CommunityIdentityService _identityService;
    private readonly CctOrganizationAuthorizationService _authorizationService;
    private readonly AppwriteTeamResolverService _teamResolver;
    private readonly AppwriteMembershipSynchronizationService _membershipSynchronization;
    private readonly GroupMessageService _groupMessageService;
    private readonly BranchInvitationService _branchInvitationService;
    private readonly ILogger<CommunityController> _logger;

    public CommunityController(
        CommunityIdentityService identityService,
        CctOrganizationAuthorizationService authorizationService,
        AppwriteTeamResolverService teamResolver,
        AppwriteMembershipSynchronizationService membershipSynchronization,
        GroupMessageService groupMessageService,
        BranchInvitationService branchInvitationService,
        ILogger<CommunityController> logger)
    {
        _identityService = identityService;
        _authorizationService = authorizationService;
        _teamResolver = teamResolver;
        _membershipSynchronization = membershipSynchronization;
        _groupMessageService = groupMessageService;
        _branchInvitationService = branchInvitationService;
        _logger = logger;
    }

    [HttpPost("teams/resolve")]
    public async Task<IActionResult> ResolveTeam(
        [FromBody] ResolveTeamRequest request,
        CancellationToken cancellationToken)
    {
        try
        {
            var user = await RequireCommunityUserAsync(cancellationToken);
            var context = await _authorizationService.ResolveAuthorizedContextAsync(
                user.User,
                request,
                cancellationToken);
            var mapping = await _teamResolver.ResolveTeamAsync(context, cancellationToken);

            return Ok(new ResolveTeamResponse
            {
                OrganizationType = mapping.OrganizationType,
                OrganizationId = mapping.OrganizationId,
                AppwriteTeamId = mapping.AppwriteTeamId,
                DisplayName = mapping.DisplayName
            });
        }
        catch (Exception ex) when (IsClientAuthorizationError(ex))
        {
            return ToAuthorizationResult(ex);
        }
    }

    [HttpPost("memberships/sync")]
    public async Task<IActionResult> SynchronizeMemberships(CancellationToken cancellationToken)
    {
        try
        {
            var user = await RequireCommunityUserAsync(cancellationToken);
            var mappings = await _membershipSynchronization.SynchronizeAsync(user, cancellationToken);

            return Ok(new
            {
                teams = mappings.Select(mapping => new ResolveTeamResponse
                {
                    OrganizationType = mapping.OrganizationType,
                    OrganizationId = mapping.OrganizationId,
                    AppwriteTeamId = mapping.AppwriteTeamId,
                    DisplayName = mapping.DisplayName
                })
            });
        }
        catch (Exception ex) when (IsClientAuthorizationError(ex))
        {
            return ToAuthorizationResult(ex);
        }
    }

    [HttpPost("messages/group")]
    public async Task<IActionResult> CreateGroupMessage(
        [FromBody] CreateGroupMessageRequest request,
        CancellationToken cancellationToken)
    {
        try
        {
            var user = await RequireCommunityUserAsync(cancellationToken);
            var message = await _groupMessageService.CreateAsync(user, request, cancellationToken);
            return Ok(message);
        }
        catch (ArgumentException ex)
        {
            return BadRequest(new { message = ex.Message });
        }
        catch (Exception ex) when (IsClientAuthorizationError(ex))
        {
            return ToAuthorizationResult(ex);
        }
    }

    [HttpPost("branch-invitations")]
    public async Task<IActionResult> CreateBranchInvitation(
        [FromBody] CreateBranchInvitationRequest request,
        CancellationToken cancellationToken)
    {
        try
        {
            var user = await RequireCommunityUserAsync(cancellationToken);
            return Ok(await _branchInvitationService.CreateAsync(user, request.BranchId, cancellationToken));
        }
        catch (ArgumentException ex) { return BadRequest(new { message = ex.Message }); }
        catch (Exception ex) when (IsClientAuthorizationError(ex)) { return ToAuthorizationResult(ex); }
    }

    [HttpPost("branch-invitations/accept")]
    public async Task<IActionResult> AcceptBranchInvitation(
        [FromBody] AcceptBranchInvitationRequest request,
        CancellationToken cancellationToken)
    {
        try
        {
            var user = await RequireCommunityUserAsync(cancellationToken);
            await _branchInvitationService.AcceptAsync(user, request.Token, cancellationToken);
            return Ok(new { message = "Invitation accepted." });
        }
        catch (ArgumentException ex) { return BadRequest(new { message = ex.Message }); }
        catch (Exception ex) when (IsClientAuthorizationError(ex)) { return ToAuthorizationResult(ex); }
    }

    [HttpGet("messages/group")]
    public async Task<IActionResult> GetGroupMessages(
        [FromQuery] string communityId,
        [FromQuery] string organizationalLevel,
        [FromQuery] int? branchId,
        [FromQuery] int? districtId,
        [FromQuery] int? regionId,
        [FromQuery] int limit = 100,
        CancellationToken cancellationToken = default)
    {
        try
        {
            var user = await RequireCommunityUserAsync(cancellationToken);
            var messages = await _groupMessageService.ListAsync(
                user,
                new ResolveTeamRequest
                {
                    CommunityId = communityId,
                    OrganizationalLevel = organizationalLevel,
                    BranchId = branchId,
                    DistrictId = districtId,
                    RegionId = regionId
                },
                limit,
                cancellationToken);

            return Ok(messages);
        }
        catch (Exception ex) when (IsClientAuthorizationError(ex))
        {
            return ToAuthorizationResult(ex);
        }
    }

    private async Task<AuthenticatedCommunityUser> RequireCommunityUserAsync(
        CancellationToken cancellationToken)
    {
        var firebaseIdToken = GetBearerToken();
        if (string.IsNullOrWhiteSpace(firebaseIdToken))
            throw new FirebaseTokenVerificationException("Firebase ID token is required.");

        return await _identityService.RequireUserAsync(firebaseIdToken, cancellationToken);
    }

    private string? GetBearerToken()
    {
        var authorization = Request.Headers.Authorization.ToString();
        const string bearerPrefix = "Bearer ";

        if (string.IsNullOrWhiteSpace(authorization) ||
            !authorization.StartsWith(bearerPrefix, StringComparison.OrdinalIgnoreCase))
        {
            return null;
        }

        var token = authorization[bearerPrefix.Length..].Trim();
        return string.IsNullOrWhiteSpace(token) ? null : token;
    }

    private static bool IsClientAuthorizationError(Exception ex)
    {
        return ex is UnauthorizedAccessException or FirebaseTokenVerificationException;
    }

    private IActionResult ToAuthorizationResult(Exception ex)
    {
        if (ex is FirebaseTokenVerificationException)
            return Unauthorized(new { message = "Invalid Firebase ID token." });

        _logger.LogWarning("Community request denied: {Reason}", ex.Message);
        return Forbid();
    }
}
