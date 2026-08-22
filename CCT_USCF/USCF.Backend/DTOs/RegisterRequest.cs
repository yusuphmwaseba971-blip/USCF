using System.ComponentModel.DataAnnotations;

namespace USCF.Backend.DTOs;

public class RegisterRequest
{
    [Required]
    public string FullName { get; set; } = string.Empty;

    [Required]
    public string Username { get; set; } = string.Empty;

    [Required]
    [EmailAddress]
    public string Email { get; set; } = string.Empty;

    [Required]
    [MinLength(8)]
    public string Password { get; set; } = string.Empty;

    [Required]
    [Compare("Password")]
    public string ConfirmPassword { get; set; } = string.Empty;

    public string Role { get; set; } = "Member";

    public int? RegionId { get; set; }
    public int? DistrictId { get; set; }
    public int? BranchId { get; set; }
}
