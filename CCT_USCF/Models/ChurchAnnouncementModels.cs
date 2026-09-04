namespace CCT_USCF.Models;

public sealed record ChurchAnnouncementTarget(string Level, int Id, string Name, int? RegionId, int? DistrictId)
{
    public override string ToString() => $"{Level}: {Name}";
}

public sealed record ChurchAnnouncementOptions(string LeadershipLevel, string Organization, IReadOnlyList<ChurchAnnouncementTarget> Targets);

public sealed record ChurchNotification(Guid Id, Guid AnnouncementId, string Title, string Message,
    string SenderName, string TargetLevel, DateTime CreatedAtUtc, bool IsRead);
