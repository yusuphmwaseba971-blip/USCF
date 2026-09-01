using System.ComponentModel.DataAnnotations;

namespace USCF.Backend.Models;

public class FirebaseAppwriteIdentityMapping
{
    [Key]
    public Guid Id { get; set; } = Guid.NewGuid();

    [Required]
    [MaxLength(128)]
    public string FirebaseUid { get; set; } = string.Empty;

    [Required]
    [MaxLength(128)]
    public string AppwriteUserId { get; set; } = string.Empty;

    [Required]
    [MaxLength(128)]
    public string FirebaseProjectId { get; set; } = string.Empty;

    [MaxLength(320)]
    public string? Email { get; set; }

    [MaxLength(200)]
    public string? DisplayName { get; set; }

    public DateTime CreatedAtUtc { get; set; } = DateTime.UtcNow;

    public DateTime UpdatedAtUtc { get; set; } = DateTime.UtcNow;
}
