namespace CCT_USCF.Models;

public class CurrentUser
{
    public Guid Id { get; set; }
    public string FullName { get; set; } = string.Empty;
    public string Username { get; set; } = string.Empty;
    public string Email { get; set; } = string.Empty;
    public string PhoneNumber { get; set; } = string.Empty;
    public string Role { get; set; } = string.Empty;
    public string LeadershipLevel { get; set; } = string.Empty;
    public string LeadershipDuty { get; set; } = string.Empty;
    public string ExistingRole { get; set; } = string.Empty;
    public string Organization { get; set; } = string.Empty;

    public int? RegionId { get; set; }
    public string? Region { get; set; }
    public int? DistrictId { get; set; }
    public string? District { get; set; }
    public int? BranchId { get; set; }
    public string? Branch { get; set; }
}