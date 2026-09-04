using System.ComponentModel.DataAnnotations;

namespace USCF.Backend.DTOs;

public sealed class NationalCommunityCreateDto
{
    [MaxLength(200)] public string? Title { get; set; }
    [MaxLength(10000)] public string? Content { get; set; }
    [Url, MaxLength(2000)] public string? ImageUrl { get; set; }
    [Url, MaxLength(2000)] public string? VideoUrl { get; set; }
    [Url, MaxLength(2000)] public string? AudioUrl { get; set; }
    [Url, MaxLength(2000)] public string? LinkUrl { get; set; }
    public double? AudioDurationSeconds { get; set; }
}

public sealed class NationalCommunityCommentCreateDto
{
    [Required, MaxLength(2000)] public string Content { get; set; } = string.Empty;
}
