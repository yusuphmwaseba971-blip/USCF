namespace USCF.Backend.DTOs;

public sealed class ChurchAnnouncementCreateDto
{
    public string? TargetLevel { get; set; }
    public int? RegionId { get; set; }
    public int? DistrictId { get; set; }
    public int? BranchId { get; set; }
    public string? Title { get; set; }
    public string? Message { get; set; }
}

public sealed record ChurchAnnouncementOptionsDto(
    string LeadershipLevel,
    string Organization,
    IReadOnlyList<ChurchAnnouncementTargetDto> Targets);

public sealed record ChurchAnnouncementTargetDto(
    string Level, int Id, string Name, int? RegionId, int? DistrictId);

public sealed record ChurchNotificationDto(
    Guid Id, Guid AnnouncementId, string Title, string Message, string SenderName,
    string TargetLevel, DateTime CreatedAtUtc, bool IsRead);
