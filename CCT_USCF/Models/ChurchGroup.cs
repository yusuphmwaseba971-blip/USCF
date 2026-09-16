namespace CCT_USCF.Models;

public sealed class ChurchGroup
{
    public string GroupId { get; set; } = string.Empty;
    public string GroupName { get; set; } = string.Empty;
    public string Description { get; set; } = string.Empty;
    public string GroupType { get; set; } = "CUSTOM";
    public string ScopeType { get; set; } = "BRANCH";
    public string ParentGroupId { get; set; } = string.Empty;
    public int? RegionId { get; set; }
    public int? DistrictId { get; set; }
    public int? BranchId { get; set; }
    public string CreatedByUid { get; set; } = string.Empty;
    public DateTime CreatedAt { get; set; }
    public bool IsActive { get; set; } = true;
    public bool CanManage { get; set; }
    public int MemberCount { get; set; }
    public bool IsStandard { get; set; }
    public string IconKey { get; set; } = string.Empty;
}
