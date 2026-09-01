using System.ComponentModel.DataAnnotations;

namespace USCF.Backend.Models;

public sealed class AppwriteTeamMapping
{
    [Key]
    public Guid Id { get; set; } = Guid.NewGuid();

    [Required]
    [MaxLength(32)]
    public string OrganizationType { get; set; } = string.Empty;

    public int OrganizationId { get; set; }

    [Required]
    [MaxLength(128)]
    public string AppwriteTeamId { get; set; } = string.Empty;

    [Required]
    [MaxLength(200)]
    public string DisplayName { get; set; } = string.Empty;

    public DateTime CreatedAtUtc { get; set; } = DateTime.UtcNow;

    public DateTime UpdatedAtUtc { get; set; } = DateTime.UtcNow;
}
