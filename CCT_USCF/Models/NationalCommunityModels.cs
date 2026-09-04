namespace CCT_USCF.Models;

public sealed class NationalCommunityCreateRequest
{
    public string? Title { get; set; }
    public string? Content { get; set; }
    public string? ImageUrl { get; set; }
    public string? VideoUrl { get; set; }
    public string? AudioUrl { get; set; }
    public string? LinkUrl { get; set; }
    public double? AudioDurationSeconds { get; set; }
}

public sealed class NationalCommunityPost
{
    public Guid Id { get; set; }
    public string AuthorUid { get; set; } = string.Empty;
    public string AuthorName { get; set; } = string.Empty;
    public string? AuthorPhoto { get; set; }
    public string? Title { get; set; }
    public string Content { get; set; } = string.Empty;
    public string? ImageUrl { get; set; }
    public string? VideoUrl { get; set; }
    public string? AudioUrl { get; set; }
    public string? LinkUrl { get; set; }
    public string Visibility { get; set; } = "national";
    public string? AuthorRegionName { get; set; }
    public string? AuthorDistrictName { get; set; }
    public string? AuthorBranchName { get; set; }
    public DateTime CreatedAtUtc { get; set; }
    public int LikeCount { get; set; }
    public int CommentCount { get; set; }
    public bool LikedByCurrentUser { get; set; }
}

public sealed class NationalCommunityComment
{
    public Guid Id { get; set; }
    public Guid PostId { get; set; }
    public string AuthorName { get; set; } = string.Empty;
    public string Content { get; set; } = string.Empty;
    public DateTime CreatedAtUtc { get; set; }
}

public sealed class NationalCommunityEvent
{
    public Guid Id { get; set; }
    public string EventType { get; set; } = string.Empty;
    public string ActorName { get; set; } = string.Empty;
    public string Message { get; set; } = string.Empty;
    public Guid PostId { get; set; }
    public DateTime CreatedAtUtc { get; set; }
}
