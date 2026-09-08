namespace CCT_USCF.Models;

public sealed class CreateAnnouncementRequest
{
    public string Title { get; set; } = string.Empty;

    public string Content { get; set; } = string.Empty;

    public string ScopeType { get; set; } = string.Empty;

    public string RegionId { get; set; } = string.Empty;

    public string DistrictId { get; set; } = string.Empty;

    public string BranchId { get; set; } = string.Empty;

    public string ImageUrl { get; set; } = string.Empty;

    public string AttachmentUrl { get; set; } = string.Empty;

    public DateTimeOffset? ExpiresAt { get; set; }
}