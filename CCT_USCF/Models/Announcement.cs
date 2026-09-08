namespace CCT_USCF.Models;

public sealed class Announcement
{
    public string Id { get; set; } = string.Empty;

    public string AnnouncementId { get; set; } = string.Empty;

    public string Title { get; set; } = string.Empty;

    public string Content { get; set; } = string.Empty;

    public string SenderUid { get; set; } = string.Empty;

    public string SenderName { get; set; } = string.Empty;

    public string ScopeType { get; set; } = string.Empty;

    public string RegionId { get; set; } = string.Empty;

    public string DistrictId { get; set; } = string.Empty;

    public string BranchId { get; set; } = string.Empty;

    public string ImageUrl { get; set; } = string.Empty;

    public string AttachmentUrl { get; set; } = string.Empty;

    public bool IsActive { get; set; }

    public DateTimeOffset? ExpiresAt { get; set; }

    public DateTimeOffset CreatedAt { get; set; }

    public DateTimeOffset UpdatedAt { get; set; }
}