using System.ComponentModel.DataAnnotations;

namespace USCF.Backend.Models;

public class BibleVerse
{
    [Key]
    public Guid Id { get; set; } = Guid.NewGuid();

    [Required]
    [MaxLength(200)]
    public string Book { get; set; } = string.Empty;

    public int Chapter { get; set; }

    public int VerseNumber { get; set; }

    [Required]
    public string Text { get; set; } = string.Empty;

    public string? AudioReference { get; set; }

    public int? AudioDurationSeconds { get; set; }

    public long? AudioFileSizeBytes { get; set; }

    public string? AudioMimeType { get; set; }

    public DateTime CreatedAt { get; set; } = DateTime.UtcNow;

    public DateTime UpdatedAt { get; set; } = DateTime.UtcNow;
}
