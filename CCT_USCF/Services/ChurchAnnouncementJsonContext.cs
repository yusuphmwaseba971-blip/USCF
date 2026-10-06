using System.Text.Json.Serialization;
using CCT_USCF.Models;

namespace CCT_USCF.Services;

internal sealed record CreateChurchAnnouncementPayload(
    string Title,
    string Message,
    string TargetLevel,
    int? RegionId,
    int? DistrictId,
    int? BranchId,
    string? ImageUrl,
    string? AttachmentUrl);

internal sealed record AnnouncementCreateResponse(bool Success, string? AnnouncementId);

[JsonSourceGenerationOptions(
    PropertyNameCaseInsensitive = true,
    PropertyNamingPolicy = JsonKnownNamingPolicy.CamelCase)]
[JsonSerializable(typeof(ChurchAnnouncementOptions))]
[JsonSerializable(typeof(List<ChurchNotification>))]
[JsonSerializable(typeof(CreateChurchAnnouncementPayload))]
[JsonSerializable(typeof(AnnouncementCreateResponse))]
internal partial class ChurchAnnouncementJsonContext : JsonSerializerContext
{
}
