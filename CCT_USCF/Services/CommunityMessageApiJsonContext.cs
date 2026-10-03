using System.Text.Json.Serialization;
using CCT_USCF.Models;

namespace CCT_USCF.Services;

internal sealed record CreateGroupMessageRequest(
    string CommunityId,
    string? ClientMessageId,
    string OrganizationalLevel,
    int? BranchId,
    int? RegionId,
    int? DistrictId,
    string Content,
    string MessageType,
    string? MediaUrl,
    string? ThumbnailUrl,
    string? FileName,
    long FileSize,
    double Duration,
    string? ReplyToMessageId,
    string? ReplyToSenderName,
    string? ReplyToPreview);

internal sealed record UpdateGroupMessageRequest(string Content);

[JsonSourceGenerationOptions(
    PropertyNameCaseInsensitive = true,
    PropertyNamingPolicy = JsonKnownNamingPolicy.CamelCase)]
[JsonSerializable(typeof(CommunityMessage))]
[JsonSerializable(typeof(CreateGroupMessageRequest))]
[JsonSerializable(typeof(UpdateGroupMessageRequest))]
internal partial class CommunityMessageApiJsonContext : JsonSerializerContext
{
}
