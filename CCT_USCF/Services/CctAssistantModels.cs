namespace CCT_USCF.Services;

public sealed record CctPageContext(
    string PageName,
    IReadOnlyList<string> QuickActions);

public sealed record CctAssistantReply(
    string Text,
    string? SuggestedAction = null);

public interface ICctAssistantService
{
    bool IsEnabled { get; }
    event EventHandler? EnabledChanged;
    void SetEnabled(bool enabled);
    CctPageContext GetCurrentPageContext();
    IReadOnlyList<string> GetQuickActions();
    Task<CctAssistantReply> AskAsync(string prompt, CancellationToken cancellationToken = default);
}
