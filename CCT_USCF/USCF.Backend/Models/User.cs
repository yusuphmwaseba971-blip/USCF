using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace USCF.Backend.Models;

public class User
{
    [Key]
    public Guid Id { get; set; } = Guid.NewGuid();

    [Required]
    [MaxLength(200)]
    public string FullName { get; set; } = string.Empty;

    [Required]
    [MaxLength(100)]
    public string Username { get; set; } = string.Empty;

    [Required]
    [MaxLength(320)]
    public string Email { get; set; } = string.Empty;

    [Required]
    public string PasswordHash { get; set; } = string.Empty;

    [MaxLength(20)]
    public string? PhoneNumber { get; set; }

    public string? ProfileImageUrl { get; set; }

    public string? Bio { get; set; }

    [MaxLength(50)]
    public string Role { get; set; } = "Member";

    public int? RegionId { get; set; }
    public int? DistrictId { get; set; }
    public int? BranchId { get; set; }

    public DateTime CreatedAt { get; set; } = DateTime.UtcNow;
    public DateTime UpdatedAt { get; set; } = DateTime.UtcNow;
    public DateTime? LastSeenAt { get; set; }

    public bool IsActive { get; set; } = true;

    [MaxLength(50)]
    public string RoleVerificationStatus { get; set; } = "Pending";
}
