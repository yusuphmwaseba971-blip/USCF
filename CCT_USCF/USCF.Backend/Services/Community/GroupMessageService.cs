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
        var messageType = string.IsNullOrWhiteSpace(request.MessageType)
            ? "text"
            : request.MessageType.Trim().ToLowerInvariant();
        if (messageType == "text" && string.IsNullOrWhiteSpace(content))
            throw new ArgumentException("Message content is required.", nameof(request));
        if (messageType != "text" && string.IsNullOrWhiteSpace(request.MediaUrl))
            throw new ArgumentException("Media URL is required for media messages.", nameof(request));

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

        var clientMessageId = NormalizeClientMessageId(request.ClientMessageId);
        var message = new AppwriteGroupMessageRecord
        {
            Id = string.Empty,
            MessageId = clientMessageId,
            ClientMessageId = clientMessageId,
            SenderAppwriteUserId = user.AppwriteMapping.AppwriteUserId,
            SenderFirebaseUid = user.FirebaseIdentity.FirebaseUid,
            SenderName = string.IsNullOrWhiteSpace(user.User.FullName) ? user.User.Username : user.User.FullName,
            OrganizationType = mapping.OrganizationType,
            OrganizationId = mapping.OrganizationId,
            CommunityId = mapping.OrganizationId.ToString(),
            AppwriteTeamId = mapping.AppwriteTeamId,
            Content = content,
            MessageType = messageType,
            MediaUrl = request.MediaUrl?.Trim() ?? string.Empty,
            ThumbnailUrl = request.ThumbnailUrl?.Trim() ?? string.Empty,
            FileName = request.FileName?.Trim() ?? string.Empty,
            FileSize = Math.Max(0, request.FileSize),
            Duration = Math.Max(0, request.Duration),
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
            ClientMessageId = message.ClientMessageId,
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
            MediaUrl = message.MediaUrl,
            ThumbnailUrl = message.ThumbnailUrl,
            FileName = message.FileName,
            FileSize = message.FileSize,
            Duration = message.Duration,
            CreatedAt = message.CreatedAtUtc
        };
    }

    private static string NormalizeClientMessageId(string? value)
    {
        if (string.IsNullOrWhiteSpace(value))
            return Guid.NewGuid().ToString("N");

        var normalized = value.Trim();
        if (normalized.Length > 100 ||
            normalized.Any(character => !char.IsLetterOrDigit(character) &&
                                        character is not '-' and not '_'))
        {
            throw new ArgumentException("Client message id is invalid.", nameof(value));
        }

        return normalized;
    }
}
