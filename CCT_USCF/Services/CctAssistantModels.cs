namespace CCT_USCF.Services;

public sealed record CctPageContext(
    string PageName,
    IReadOnlyList<string> QuickActions);

public enum CctAssistantIntent
{
    CctFeature,
    GeneralKnowledge,
    ExternalCurrentInformation,
    InAppNavigation,
    Troubleshooting
}

public enum CctNavigationTarget
{
    Home,
    Profile,
    Settings,
    ChurchGroups,
    BranchChat,
    Community,
    PrayerRequests,
    Announcements,
    Bible,
    Sermons,
    Notifications
}

public sealed record CctAssistantAction(
    CctNavigationTarget Target,
    string Label);

public sealed record CctAssistantReply(
    string Text,
    CctAssistantIntent Intent = CctAssistantIntent.GeneralKnowledge,
    CctNavigationTarget? DetectedDestination = null,
    IReadOnlyList<CctAssistantAction>? Actions = null)
{
    public IReadOnlyList<CctAssistantAction> ContextualActions =>
        Actions ?? Array.Empty<CctAssistantAction>();
}

public interface ICctAssistantService
{
    bool IsEnabled { get; }
    event EventHandler? EnabledChanged;
    void SetEnabled(bool enabled);
    CctPageContext GetCurrentPageContext();
    IReadOnlyList<string> GetQuickActions();
    Task<CctAssistantReply> AskAsync(string prompt, CancellationToken cancellationToken = default);
}
