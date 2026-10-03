using System.Text.Json.Serialization;

namespace CCT_USCF.Models;

public enum FeedbackType
{
    Bug,
    Suggestion,
    General
}

public enum FeedbackCategory
{
    Home,
    Bible,
    Prayer,
    Community,
    Groups,
    Profile,
    AccountLogin,
    Other
}

public enum FeedbackStatus
{
    New,
    Reviewing,
    Fixing,
    Fixed,
    Closed
}

public static class FeedbackValues
{
    public static string ToAppwriteValue(FeedbackType value) => value switch
    {
        FeedbackType.Bug => "Bug",
        FeedbackType.Suggestion => "Suggestion",
        FeedbackType.General => "General",
        _ => throw new ArgumentOutOfRangeException(nameof(value))
    };

    public static string ToAppwriteValue(FeedbackCategory value) => value switch
    {
        FeedbackCategory.Home => "Home",
        FeedbackCategory.Bible => "Bible",
        FeedbackCategory.Prayer => "Prayer",
        FeedbackCategory.Community => "Community",
        FeedbackCategory.Groups => "Groups",
        FeedbackCategory.Profile => "Profile",
        FeedbackCategory.AccountLogin => "Account/Login",
        FeedbackCategory.Other => "Other",
        _ => throw new ArgumentOutOfRangeException(nameof(value))
    };

    public static string ToAppwriteValue(FeedbackStatus value) => value switch
    {
        FeedbackStatus.New => "New",
        FeedbackStatus.Reviewing => "Reviewing",
        FeedbackStatus.Fixing => "Fixing",
        FeedbackStatus.Fixed => "Fixed",
        FeedbackStatus.Closed => "Closed",
        _ => throw new ArgumentOutOfRangeException(nameof(value))
    };

    public static string ToDisplayName(FeedbackCategory value) =>
        value == FeedbackCategory.AccountLogin
            ? "Account/Login"
            : ToAppwriteValue(value);
}

public sealed class FeedbackCategoryChoice
{
    public FeedbackCategoryChoice(FeedbackCategory value)
    {
        Value = value;
        Name = FeedbackValues.ToDisplayName(value);
    }

    public FeedbackCategory Value { get; }
    public string Name { get; }
}

public sealed class BugFeedbackRequest
{
    public required string RequestId { get; init; }
    public required FeedbackCategory Category { get; init; }
    public required string Title { get; init; }
    public required string Description { get; init; }
    public required string ExpectedResult { get; init; }
    public required string ActualResult { get; init; }
    public byte[]? ScreenshotBytes { get; init; }
    public string? ScreenshotContentType { get; init; }
}

public sealed class SuggestionFeedbackRequest
{
    public required string RequestId { get; init; }
    public required FeedbackCategory Category { get; init; }
    public required string Title { get; init; }
    public required string Description { get; init; }
}

public sealed class GeneralFeedbackRequest
{
    public required string RequestId { get; init; }
    public required int Rating { get; init; }
    public string? Liked { get; init; }
    public string? Improvement { get; init; }
}

public sealed class FeedbackReceipt
{
    public required string FeedbackId { get; init; }
    public required string Reference { get; init; }
    public string? ScreenshotId { get; init; }
    public DateTimeOffset? CreatedAt { get; init; }
}

public sealed class FeedbackAdminSummary
{
    public int Total { get; init; }
    public Dictionary<string, int> Statuses { get; init; } = new(StringComparer.Ordinal);
    public Dictionary<string, int> Types { get; init; } = new(StringComparer.Ordinal);
}

public sealed class FeedbackAdminPage
{
    public IReadOnlyList<FeedbackModel> Reports { get; init; } = Array.Empty<FeedbackModel>();
    public int Total { get; init; }
    public int Limit { get; init; }
    public int Offset { get; init; }
}

public sealed class FeedbackModel
{
    [JsonPropertyName("$id")]
    public string Id { get; init; } = string.Empty;

    [JsonPropertyName("feedback_reference")]
    public string Reference { get; init; } = string.Empty;

    [JsonPropertyName("user_id")]
    public string UserId { get; init; } = string.Empty;

    [JsonPropertyName("user_email")]
    public string? UserEmail { get; init; }

    [JsonPropertyName("type")]
    public string Type { get; init; } = string.Empty;

    [JsonPropertyName("category")]
    public string Category { get; init; } = string.Empty;

    [JsonPropertyName("title")]
    public string Title { get; init; } = string.Empty;

    [JsonPropertyName("description")]
    public string Description { get; init; } = string.Empty;

    [JsonPropertyName("expected_result")]
    public string? ExpectedResult { get; init; }

    [JsonPropertyName("actual_result")]
    public string? ActualResult { get; init; }

    [JsonPropertyName("rating")]
    public int? Rating { get; init; }

    [JsonPropertyName("liked")]
    public string? Liked { get; init; }

    [JsonPropertyName("improvement")]
    public string? Improvement { get; init; }

    [JsonPropertyName("screenshot_id")]
    public string? ScreenshotId { get; init; }

    [JsonPropertyName("app_version")]
    public string? AppVersion { get; init; }

    [JsonPropertyName("device_model")]
    public string? DeviceModel { get; init; }

    [JsonPropertyName("android_version")]
    public string? AndroidVersion { get; init; }

    [JsonPropertyName("status")]
    public string Status { get; init; } = string.Empty;

    [JsonPropertyName("$createdAt")]
    public DateTimeOffset? CreatedAt { get; init; }

    [JsonPropertyName("$updatedAt")]
    public DateTimeOffset? UpdatedAt { get; init; }

    [JsonIgnore]
    public string UserDisplay =>
        string.IsNullOrWhiteSpace(UserEmail) ? UserId : UserEmail;

    [JsonIgnore]
    public string RatingDisplay => $"Rating: {Rating?.ToString() ?? "—"}";

    [JsonIgnore]
    public string CreatedDisplay =>
        $"Created: {CreatedAt?.ToLocalTime().ToString("dd MMM yyyy") ?? "—"}";

    [JsonIgnore]
    public string UpdatedDisplay =>
        $"Updated: {UpdatedAt?.ToLocalTime().ToString("dd MMM yyyy") ?? "—"}";
}
