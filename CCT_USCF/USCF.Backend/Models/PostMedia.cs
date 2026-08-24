using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace USCF.Backend.Models;

public class PostMedia
{
    [Key]
    public Guid Id { get; set; } = Guid.NewGuid();

    [Required]
    public Guid PostId { get; set; }

    [Required]
    public string MediaType { get; set; } = "audio"; // audio, image, video, etc.

    [Required]
    public string FileName { get; set; } = string.Empty;

    public string? Url { get; set; }

    public string? StoragePath { get; set; }

    public double? Duration { get; set; }

    public double? TrimStart { get; set; }
    public double? TrimEnd { get; set; }

    public long? FileSizeBytes { get; set; }

    public Guid? UploadedByUserId { get; set; }

    public bool IsTemporary { get; set; } = true;

    public bool IsDeleted { get; set; }

    public DateTime? ExpiresAt { get; set; }

    public DateTime? DeletedAt { get; set; }

    public DateTime CreatedAt { get; set; } = DateTime.UtcNow;

    public virtual Post? Post { get; set; }
}
