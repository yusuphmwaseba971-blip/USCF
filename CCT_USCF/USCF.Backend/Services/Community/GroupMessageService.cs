using USCF.Backend.DTOs.Community;
using USCF.Backend.Models;

namespace USCF.Backend.Services.Community;

public sealed class GroupMessageService
{
    private readonly CctOrganizationAuthorizationService _authorization;
    private readonly AppwriteMembershipSynchronizationService _membershipSynchronization;
    private readonly IAppwriteCommunityGateway _appwriteGateway;

    public GroupMessageService(
        CctOrganizationAuthorizationService authorization,
        AppwriteMembershipSynchronizationService membershipSynchronization,
        IAppwriteCommunityGateway appwriteGateway)
    {
        _authorization = authorization;
        _membershipSynchronization = membershipSynchronization;
        _appwriteGateway = appwriteGateway;
    }

    public async Task<GroupMessageDto> CreateAsync(
        AuthenticatedCommunityUser user,
        CreateGroupMessageRequest request,
        CancellationToken cancellationToken = default)
    {
        var content = request.Content?.Trim() ?? string.Empty;
        if (string.IsNullOrWhiteSpace(content))
            throw new ArgumentException("Message content is required.", nameof(request));

        var resolveRequest = new ResolveTeamRequest
        {
            OrganizationalLevel = request.OrganizationalLevel,
            CommunityId = request.CommunityId,
            BranchId = request.BranchId,
            DistrictId = request.DistrictId,
            RegionId = request.RegionId
        };

        var context = await _authorization.ResolveAuthorizedContextAsync(user.User, resolveRequest, cancellationToken);
        var mapping = await _membershipSynchronization.EnsureMembershipForContextAsync(user, context, cancellationToken);

        var message = new AppwriteGroupMessageRecord
        {
            Id = string.Empty,
            MessageId = Guid.NewGuid().ToString("N"),
            SenderAppwriteUserId = user.AppwriteMapping.AppwriteUserId,
            SenderFirebaseUid = user.FirebaseIdentity.FirebaseUid,
            SenderName = string.IsNullOrWhiteSpace(user.User.FullName) ? user.User.Username : user.User.FullName,
            OrganizationType = mapping.OrganizationType,
            OrganizationId = mapping.OrganizationId,
            CommunityId = mapping.OrganizationId.ToString(),
            AppwriteTeamId = mapping.AppwriteTeamId,
            Content = content,
            MessageType = string.IsNullOrWhiteSpace(request.MessageType) ? "text" : request.MessageType.Trim(),
            CreatedAtUtc = DateTime.UtcNow
        };

        var created = await _appwriteGateway.CreateGroupMessageAsync(message, cancellationToken);
        return ToDto(created);
    }

    public async Task<IReadOnlyList<GroupMessageDto>> ListAsync(
        AuthenticatedCommunityUser user,
        ResolveTeamRequest request,
        int limit,
        CancellationToken cancellationToken = default)
    {
        var context = await _authorization.ResolveAuthorizedContextAsync(user.User, request, cancellationToken);
        var mapping = await _membershipSynchronization.EnsureMembershipForContextAsync(user, context, cancellationToken);
        var messages = await _appwriteGateway.ListGroupMessagesAsync(
            mapping.OrganizationType,
            mapping.OrganizationId,
            limit,
            cancellationToken);

        return messages.Select(ToDto).ToList();
    }

    private static GroupMessageDto ToDto(AppwriteGroupMessageRecord message)
    {
        return new GroupMessageDto
        {
            Id = string.IsNullOrWhiteSpace(message.Id) ? message.MessageId : message.Id,
            MessageId = message.MessageId,
            SenderUid = message.SenderFirebaseUid,
            SenderName = message.SenderName,
            Content = message.Content,
            CommunityId = message.CommunityId,
            BranchId = string.Equals(message.OrganizationType, "Branch", StringComparison.OrdinalIgnoreCase)
                ? message.OrganizationId.ToString()
                : null,
            DistrictId = string.Equals(message.OrganizationType, "District", StringComparison.OrdinalIgnoreCase)
                ? message.OrganizationId.ToString()
                : null,
            RegionId = string.Equals(message.OrganizationType, "Region", StringComparison.OrdinalIgnoreCase)
                ? message.OrganizationId.ToString()
                : null,
            AppwriteTeamId = message.AppwriteTeamId,
            MessageType = message.MessageType,
            CreatedAt = message.CreatedAtUtc
        };
    }
}
