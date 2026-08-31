namespace CCT_USCF.Models;

public class CommunityMessage
{
    public string Id { get; set; } = string.Empty;
    public string MessageId { get; set; } = string.Empty;
    public string SenderUid { get; set; } = string.Empty;
    public string SenderName { get; set; } = string.Empty;
    public string Content { get; set; } = string.Empty;
    public string CommunityId { get; set; } = string.Empty;
    public string? BranchId { get; set; }
    public string? RegionId { get; set; }
    public string? DistrictId { get; set; }
    public string MessageType { get; set; } = "text";
    public DateTime CreatedAt { get; set; } = DateTime.UtcNow;
    public DateTime? UpdatedAt { get; set; }
}
