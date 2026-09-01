namespace USCF.Backend.DTOs.Community;

public sealed class CreateGroupMessageRequest
{
    public string CommunityId { get; set; } = string.Empty;

    public string OrganizationalLevel { get; set; } = string.Empty;

    public int? BranchId { get; set; }

    public int? DistrictId { get; set; }

    public int? RegionId { get; set; }

    public string Content { get; set; } = string.Empty;

    public string MessageType { get; set; } = "text";
}
