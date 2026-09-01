using System.ComponentModel.DataAnnotations;

namespace USCF.Backend.Models;

public sealed class AppwriteTeamMembership
{
    [Key]
    public Guid Id { get; set; } = Guid.NewGuid();

    public Guid TeamMappingId { get; set; }

    [Required]
    [MaxLength(128)]
    public string FirebaseUid { get; set; } = string.Empty;

    [Required]
    [MaxLength(128)]
    public string AppwriteUserId { get; set; } = string.Empty;

    public bool IsActive { get; set; } = true;

    public DateTime CreatedAtUtc { get; set; } = DateTime.UtcNow;

    public DateTime UpdatedAtUtc { get; set; } = DateTime.UtcNow;
}
