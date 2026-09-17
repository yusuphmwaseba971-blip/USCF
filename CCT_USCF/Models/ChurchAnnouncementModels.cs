namespace CCT_USCF.Models;

public sealed record ChurchAnnouncementTarget(string Level, int Id, string Name, int? RegionId, int? DistrictId)
{
    public override string ToString() => $"{Level}: {Name}";
}

public sealed record ChurchAnnouncementOptions(string LeadershipLevel, string Organization, IReadOnlyList<ChurchAnnouncementTarget> Targets);

public sealed record ChurchNotification(Guid Id, Guid AnnouncementId, string Title, string Message,
    string SenderName, string TargetLevel, DateTime CreatedAtUtc, bool IsRead,
    int? RegionId = null, int? DistrictId = null, int? BranchId = null,
    string ImageUrl = "", string AttachmentUrl = "", DateTime? ExpiresAtUtc = null,
    bool IsActive = true)
{
    public string ReadState => IsRead ? "SEEN / DONE" : "UNSEEN";

    public string ScopeLabel => TargetLevel.Trim().ToUpperInvariant() switch
    {
        "REGION" or "REGIONAL" => "REGIONAL",
        "DISTRICT" => "DISTRICT",
        "BRANCH" => "BRANCH",
        _ => "NATIONAL"
    };

    public string Preview => Message.Length > 180 ? $"{Message[..180].TrimEnd()}..." : Message;
    public bool HasImage => !string.IsNullOrWhiteSpace(ImageUrl);
    public bool HasAttachment => !string.IsNullOrWhiteSpace(AttachmentUrl);
}
