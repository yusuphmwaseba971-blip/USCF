using System.Text;

namespace CCT_USCF.Services;

public sealed class CctAssistantService : ICctAssistantService
{
    private const string EnabledKey = "cct.assistant.enabled";
    private readonly FirebaseAiLogicService _ai;

    public CctAssistantService(FirebaseAiLogicService ai) => _ai = ai;

    public bool IsEnabled => Preferences.Default.Get(EnabledKey, true);
    public event EventHandler? EnabledChanged;

    public void SetEnabled(bool enabled)
    {
        Preferences.Default.Set(EnabledKey, enabled);
        EnabledChanged?.Invoke(this, EventArgs.Empty);
    }

    public CctPageContext GetCurrentPageContext()
    {
        var route = Shell.Current?.CurrentState.Location.ToString() ?? string.Empty;
        var page = route.Contains("bible", StringComparison.OrdinalIgnoreCase) ? "Bible" :
            route.Contains("prayer", StringComparison.OrdinalIgnoreCase) ? "Prayer Requests" :
            route.Contains("community", StringComparison.OrdinalIgnoreCase) ? "Community" :
            route.Contains("churchannouncement", StringComparison.OrdinalIgnoreCase) ? "Church Announcement editor" :
            route.Contains("churchgroup", StringComparison.OrdinalIgnoreCase) ? "Church Groups" :
            route.Contains("profile", StringComparison.OrdinalIgnoreCase) ? "Profile" : "Home";

        var actions = page switch
        {
            "Bible" => new[] { "Find a Bible passage", "Explain this passage", "Help me bookmark this", "Help me find today's reading", "Teach me this page", "What should I do here?", "Guide me through this page", "What can USCF Assistance do?" },
            "Prayer Requests" => new[] { "Show me today's prayers", "Help me submit a prayer", "Teach me this page", "Explain the prayer options", "Help me find a prayer", "What should I do here?", "Guide me through this page", "What can USCF Assistance do?" },
            "Community" => new[] { "What's new today?", "Show me my groups", "Find an announcement", "Teach me this page", "Help me write a post", "What should I do here?", "Guide me through this page", "What can USCF Assistance do?" },
            "Church Announcement editor" => new[] { "Improve this announcement", "Help me write an announcement", "Shorten this announcement", "Make it clearer", "Teach me this page", "What should I do here?", "Guide me through this page", "What can USCF Assistance do?" },
            "Church Groups" => new[] { "Explain groups", "Find my groups", "Open Community", "Teach me this page", "What should I do here?", "Guide me through this page", "Help me find something", "What can USCF Assistance do?" },
            "Profile" => new[] { "Help me update my profile", "Teach me this page", "Where can I change my details?", "Help me understand my account", "Open Settings", "What should I do here?", "Guide me through this page", "What can USCF Assistance do?" },
            _ => new[] { "What can USCF Assistance do?", "Teach me this page", "What's new today?", "Take me to my groups", "Help me find something", "Help me write", "Guide me through this page", "What should I do here?" }
        };
        return new CctPageContext(page, actions);
    }

    public IReadOnlyList<string> GetQuickActions() => GetCurrentPageContext().QuickActions;

    public async Task<CctAssistantReply> AskAsync(
        string prompt,
        CancellationToken cancellationToken = default)
    {
        if (!IsEnabled)
            return new("USCF Assistance is turned off. You can enable it in Settings.");
        if (string.IsNullOrWhiteSpace(prompt))
            return new("Tell me what you need help with.");

        var context = GetCurrentPageContext();
        var normalized = prompt.Trim();
        var navigation = TryGetNavigation(normalized);
        if (navigation is not null)
            return new($"I can take you to {navigation}.", navigation);

        if (normalized.Contains("today", StringComparison.OrdinalIgnoreCase) &&
            normalized.Contains("prayer", StringComparison.OrdinalIgnoreCase))
            return new("I can open the Prayer Requests page so you can see the prayers available to your account.", "Open Prayer Requests");

        if (normalized.Contains("publish", StringComparison.OrdinalIgnoreCase))
            return new("I can help prepare an announcement, but publishing always stays in the existing editor and requires your explicit confirmation.", "Open Church Announcement");

        if (normalized.Contains("whatsapp", StringComparison.OrdinalIgnoreCase) ||
            normalized.Contains("share", StringComparison.OrdinalIgnoreCase))
            return new("Sharing remains under your control. After publishing, use the normal Android share sheet to choose WhatsApp and the recipient.", "Open Church Announcement");

        var promptWithContext = new StringBuilder()
            .AppendLine("You are USCF Assistance inside the CCT-USCF Android app.")
            .AppendLine($"Current page: {context.PageName}.")
            .AppendLine("Only explain existing app features. Do not invent data, private content, counts, permissions, or news.")
            .AppendLine("Never claim to have published, sent, deleted, or changed anything.")
            .AppendLine("Keep the response concise and helpful.")
            .AppendLine($"User request: {normalized}")
            .ToString();

        return await _ai.GenerateAsync(promptWithContext, cancellationToken);
    }

    private static string? TryGetNavigation(string prompt)
    {
        if (ContainsAny(prompt, "community", "community page")) return "Community";
        if (ContainsAny(prompt, "bible", "scripture", "passage")) return "Bible";
        if (ContainsAny(prompt, "prayer", "prayers")) return "Prayer Requests";
        if (ContainsAny(prompt, "group", "groups")) return "Church Groups";
        if (ContainsAny(prompt, "profile")) return "Profile";
        if (ContainsAny(prompt, "settings")) return "Settings";
        if (ContainsAny(prompt, "home")) return "Home";
        return null;
    }

    private static bool ContainsAny(string value, params string[] terms) =>
        terms.Any(term => value.Contains(term, StringComparison.OrdinalIgnoreCase)) &&
        (value.Contains("open", StringComparison.OrdinalIgnoreCase) ||
         value.Contains("take me", StringComparison.OrdinalIgnoreCase) ||
         value.Contains("where", StringComparison.OrdinalIgnoreCase) ||
         value.Contains("go", StringComparison.OrdinalIgnoreCase) ||
         value.Contains("find", StringComparison.OrdinalIgnoreCase));
}
