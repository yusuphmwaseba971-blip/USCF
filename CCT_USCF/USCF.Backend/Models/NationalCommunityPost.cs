using System.ComponentModel.DataAnnotations;

namespace USCF.Backend.Models;

public sealed class NationalCommunityPost
{
    [Key] public Guid Id { get; set; } = Guid.NewGuid();
    [Required, MaxLength(128)] public string AuthorUid { get; set; } = string.Empty;
    [Required, MaxLength(200)] public string AuthorName { get; set; } = string.Empty;
    [MaxLength(2000)] public string? AuthorPhoto { get; set; }
    [MaxLength(200)] public string? Title { get; set; }
    [Required, MaxLength(10000)] public string Content { get; set; } = string.Empty;
    [MaxLength(2000)] public string? ImageUrl { get; set; }
    [MaxLength(2000)] public string? VideoUrl { get; set; }
    [MaxLength(2000)] public string? AudioUrl { get; set; }
    [MaxLength(2000)] public string? LinkUrl { get; set; }
    [Required, MaxLength(20)] public string Visibility { get; set; } = "national";
    public int? AuthorRegionId { get; set; }
    [MaxLength(200)] public string? AuthorRegionName { get; set; }
    public int? AuthorDistrictId { get; set; }
    [MaxLength(200)] public string? AuthorDistrictName { get; set; }
    public int? AuthorBranchId { get; set; }
    [MaxLength(200)] public string? AuthorBranchName { get; set; }
    public DateTime CreatedAtUtc { get; set; } = DateTime.UtcNow;
    public DateTime UpdatedAtUtc { get; set; } = DateTime.UtcNow;
    public List<NationalCommunityLike> Likes { get; set; } = new();
    public List<NationalCommunityComment> Comments { get; set; } = new();
}

public sealed class NationalCommunityLike
{
    [Key] public Guid Id { get; set; } = Guid.NewGuid();
    public Guid PostId { get; set; }
    [Required, MaxLength(128)] public string UserUid { get; set; } = string.Empty;
    public DateTime CreatedAtUtc { get; set; } = DateTime.UtcNow;
}

public sealed class NationalCommunityComment
{
    [Key] public Guid Id { get; set; } = Guid.NewGuid();
    public Guid PostId { get; set; }
    [Required, MaxLength(128)] public string AuthorUid { get; set; } = string.Empty;
    [Required, MaxLength(200)] public string AuthorName { get; set; } = string.Empty;
    [MaxLength(2000)] public string? AuthorPhoto { get; set; }
    [Required, MaxLength(2000)] public string Content { get; set; } = string.Empty;
    public DateTime CreatedAtUtc { get; set; } = DateTime.UtcNow;
}

public sealed class NationalCommunityEvent
{
    [Key] public Guid Id { get; set; } = Guid.NewGuid();
    [Required, MaxLength(128)] public string RecipientUid { get; set; } = string.Empty;
    [Required, MaxLength(128)] public string ActorUid { get; set; } = string.Empty;
    [Required, MaxLength(200)] public string ActorName { get; set; } = string.Empty;
    [MaxLength(2000)] public string? ActorPhoto { get; set; }
    [Required, MaxLength(30)] public string EventType { get; set; } = string.Empty;
    public Guid PostId { get; set; }
    public Guid? CommentId { get; set; }
    [Required, MaxLength(2000)] public string Message { get; set; } = string.Empty;
    public DateTime CreatedAtUtc { get; set; } = DateTime.UtcNow;
    public bool IsRead { get; set; }
}
