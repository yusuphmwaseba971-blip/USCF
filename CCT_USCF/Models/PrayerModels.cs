using System;
using Microsoft.Maui.Graphics;

namespace CCT_USCF.Models;

public enum PrayerCategory
{
    Academic = 0,
    Family = 1,
    Health = 2,
    SpiritualGrowth = 3,
    Relationships = 4,
    Financial = 5,
    Ministry = 6,
    Guidance = 7,
    Thanksgiving = 8,
    Other = 9
}

public enum PrayerReach
{
    MyBranch = 0,
    MyDistrict = 1,
    MyRegion = 2,
    NationalUscf = 3,
    PrayerLeaders = 4
}

public enum PrayerVisibility
{
    Private = 0,
    SelectedAudience = 1,
    NationalPrayerWall = 2
}

public enum PrayerNameVisibility
{
    Anonymous = 0,
    ShowMyName = 1
}

public enum PrayerStatus
{
    Active = 0,
    Answered = 1,
    Archived = 2,
    Moderated = 3
}

public class PrayerRequest
{
    public string PrayerId { get; set; } = string.Empty;
    public string AuthorUid { get; set; } = string.Empty;
    public string AuthorDisplayName { get; set; } = string.Empty;
    public bool IsAnonymous { get; set; }
    public string Content { get; set; } = string.Empty;
    public PrayerCategory Category { get; set; } = PrayerCategory.Other;
    public PrayerReach Reach { get; set; } = PrayerReach.NationalUscf;
    public PrayerVisibility Visibility { get; set; } = PrayerVisibility.NationalPrayerWall;
    public PrayerNameVisibility NameVisibility { get; set; } = PrayerNameVisibility.Anonymous;
    public int? BranchId { get; set; }
    public int? DistrictId { get; set; }
    public int? RegionId { get; set; }
    public PrayerStatus Status { get; set; } = PrayerStatus.Active;
    public DateTime CreatedAtUtc { get; set; } = DateTime.UtcNow;
    public DateTime UpdatedAtUtc { get; set; } = DateTime.UtcNow;
    public int PrayerCount { get; set; }
    public bool IsAnswered { get; set; }
    public DateTime? AnsweredAtUtc { get; set; }
    public bool IsOwnerVisible { get; set; }
    public bool IsPrayed { get; set; }
    public Color CardBackgroundColor => (Math.Abs(PrayerId.GetHashCode()) % 4) switch
    {
        0 => Color.FromArgb("#F1F8F3"),
        1 => Color.FromArgb("#F3F6FB"),
        2 => Color.FromArgb("#FFF8ED"),
        _ => Color.FromArgb("#F8F2FA")
    };
    public string StatusLabelText => string.IsNullOrWhiteSpace(Status.ToString()) ? "Pending" : Status.ToString();
    public string RelativeCreatedAt => CreatedAtUtc == default
        ? "Recently"
        : CreatedAtUtc.ToLocalTime().ToString("g");
    public string CategoryLabel => Enum.GetName(typeof(PrayerCategory), Category) ?? "Other";
    public string ReachLabel => Enum.GetName(typeof(PrayerReach), Reach) ?? "National USCF";
    public string VisibilityLabel => Enum.GetName(typeof(PrayerVisibility), Visibility) ?? "National Prayer Wall";
    public string NameVisibilityLabel => Enum.GetName(typeof(PrayerNameVisibility), NameVisibility) ?? "Anonymous";
    public string StatusLabel => Enum.GetName(typeof(PrayerStatus), Status) ?? "Active";
}

public class PrayerAction
{
    public string PrayerId { get; set; } = string.Empty;
    public string UserUid { get; set; } = string.Empty;
    public DateTime CreatedAtUtc { get; set; } = DateTime.UtcNow;
}

public class PrayerReport
{
    public string ReportId { get; set; } = string.Empty;
    public string PrayerId { get; set; } = string.Empty;
    public string ReporterUid { get; set; } = string.Empty;
    public string Reason { get; set; } = string.Empty;
    public string Details { get; set; } = string.Empty;
    public DateTime CreatedAtUtc { get; set; } = DateTime.UtcNow;
}
