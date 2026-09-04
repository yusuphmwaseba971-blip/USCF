namespace USCF.Backend.DTOs.Community;

public sealed class CreateGroupMessageRequest
{
    public string? ClientMessageId { get; set; }
    public string CommunityId { get; set; } = string.Empty;

    public string OrganizationalLevel { get; set; } = string.Empty;

    public int? BranchId { get; set; }

    public int? DistrictId { get; set; }

    public int? RegionId { get; set; }

    public string Content { get; set; } = string.Empty;

    public string MessageType { get; set; } = "text";

    public string? MediaUrl { get; set; }

    public string? ThumbnailUrl { get; set; }

    public string? FileName { get; set; }

    public long FileSize { get; set; }

    public double Duration { get; set; }
}
