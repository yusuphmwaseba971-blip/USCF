namespace USCF.Backend.DTOs.Community;

public sealed class GroupMessageDto
{
    public string Id { get; set; } = string.Empty;

    public string MessageId { get; set; } = string.Empty;
    public string ClientMessageId { get; set; } = string.Empty;

    public string SenderUid { get; set; } = string.Empty;

    public string SenderName { get; set; } = string.Empty;

    public string Content { get; set; } = string.Empty;

    public string CommunityId { get; set; } = string.Empty;

    public string? BranchId { get; set; }

    public string? RegionId { get; set; }

    public string? DistrictId { get; set; }

    public string AppwriteTeamId { get; set; } = string.Empty;

    public string MessageType { get; set; } = "text";

    public string? MediaUrl { get; set; }

    public string? ThumbnailUrl { get; set; }

    public string? FileName { get; set; }

    public long FileSize { get; set; }

    public double Duration { get; set; }

    public DateTime CreatedAt { get; set; } = DateTime.UtcNow;

    public DateTime? UpdatedAt { get; set; }
}
