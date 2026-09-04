using System.ComponentModel.DataAnnotations;

namespace USCF.Backend.Models;

public sealed class BranchInvitation
{
    [Key]
    public Guid Id { get; set; } = Guid.NewGuid();
    [Required, MaxLength(128)]
    public string TokenHash { get; set; } = string.Empty;
    public int BranchId { get; set; }
    public int DistrictId { get; set; }
    public int RegionId { get; set; }
    [Required, MaxLength(200)]
    public string InviterUid { get; set; } = string.Empty;
    public DateTime CreatedAtUtc { get; set; } = DateTime.UtcNow;
    public DateTime ExpiresAtUtc { get; set; }
    public DateTime? UsedAtUtc { get; set; }
    public DateTime? RevokedAtUtc { get; set; }
    public int UsageLimit { get; set; } = 1;
    public int UsageCount { get; set; }
}
