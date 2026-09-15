using System.Text;

namespace CCT_USCF.Services;

public sealed class CctAssistantService : ICctAssistantService
{
    private const string EnabledKey = "cct.assistant.enabled";
    private readonly CloudflareAiService _ai;
    private readonly ExternalInformationService _external;

    public CctAssistantService(
        CloudflareAiService ai,
        ExternalInformationService external)
    {
        _ai = ai;
        _external = external;
    }

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
        var intent = ClassifyIntent(normalized);
        var isWritingRequest = IsWritingRequest(normalized);
        var navigation = intent is CctAssistantIntent.CctFeature
            or CctAssistantIntent.InAppNavigation
            or CctAssistantIntent.Troubleshooting
            ? TryGetNavigation(normalized)
            : null;
        if (isWritingRequest && !IsExplicitNavigationRequest(normalized))
            navigation = null;
        if (navigation is { Count: > 0 })
        {
            var actions = navigation
                .Select(target => new CctAssistantAction(target, CctNavigation.GetLabel(target)))
                .ToArray();
            var explicitRequest = IsExplicitNavigationRequest(normalized);
            var text = navigation.Count == 1
                ? explicitRequest
                    ? $"Sure. I can take you to {CctNavigation.GetLabel(navigation[0]).Replace("Open ", string.Empty, StringComparison.Ordinal)}."
                    : $"You can find that in {CctNavigation.GetLabel(navigation[0]).Replace("Open ", string.Empty, StringComparison.Ordinal)}. Would you like me to take you there?"
                : "You can manage your account from your profile or app settings. Which would you like to open?";
            if (intent == CctAssistantIntent.Troubleshooting)
            {
                text = BuildTroubleshootingGuidance(navigation[0]);
            }
            return new(
                text,
                intent == CctAssistantIntent.Troubleshooting
                    ? CctAssistantIntent.Troubleshooting
                    : CctAssistantIntent.InAppNavigation,
                navigation.Count == 1 ? navigation[0] : null,
                actions);
        }

        var user = MauiProgram.CurrentUser;
        var runtimeContext = new StringBuilder()
            .AppendLine($"Current page: {context.PageName}.")
            .AppendLine($"Role: {Safe(user?.Role)}.")
            .AppendLine($"Leadership level: {Safe(user?.LeadershipLevel)}.")
            .AppendLine($"Leadership duty: {Safe(user?.LeadershipDuty)}.")
            .AppendLine($"Region ID: {Safe(user?.RegionId)}.")
            .AppendLine($"District ID: {Safe(user?.DistrictId)}.")
            .AppendLine($"Branch ID: {Safe(user?.BranchId)}.")
            .ToString();
        var knowledge = CctUsfcKnowledgeBase.BuildRelevantKnowledge(normalized, context.PageName);
        var externalSources = intent == CctAssistantIntent.ExternalCurrentInformation
            ? await _external.SearchAsync(normalized, cancellationToken)
            : string.Empty;
        var promptWithContext = new StringBuilder()
            .AppendLine("You are the CCT-USCF Assistant inside the Android app.")
            .AppendLine("Fully support English, Kiswahili, and mixed English/Kiswahili.")
            .AppendLine("Respond naturally in the user's dominant language. When the user writes Kiswahili, use natural Tanzanian Kiswahili rather than word-for-word translation. Honor explicit requests such as 'Jibu kwa Kiswahili' or 'Please answer in English'.")
            .AppendLine("Preserve CCT-USCF feature names such as Branch Chat, Prayer Requests, Community, Bible, Profile, Settings, Appwrite, Groq, and Cloudflare.")
            .AppendLine("You are an assistant, not an autonomous publisher. When asked to write a prayer, encouragement, notice, worship message, community message, branch message, event description, or other content, prepare a draft for review and editing.")
            .AppendLine("Treat generated content as a draft. Never independently send, publish, submit, delete, edit existing published content, or send a chat message. The user must use the existing application action.")
            .AppendLine("For rewriting requests, return the revised draft without publishing it.")
            .AppendLine("Navigation requests may use the existing application navigation/action mechanism; consequential actions always remain under the user's control.")
            .AppendLine($"Intent category: {intent}.")
            .AppendLine(intent == CctAssistantIntent.CctFeature ||
                        intent == CctAssistantIntent.Troubleshooting
                ? $"If the request is about a CCT-USCF feature not covered by the verified knowledge, explain what information is missing and use this response: \"{CctUsfcKnowledgeBase.UnknownAnswer}\""
                : "Do not use the unknown CCT-USCF feature response for ordinary general questions.")
            .AppendLine("Never invent pages, buttons, workflows, permissions, data, counts, news, or offline behavior.")
            .AppendLine("The application/backend is authoritative for authentication, authorization, data, and operations.")
            .AppendLine("Never claim to have published, sent, deleted, or changed anything.")
            .AppendLine("Keep the response concise and helpful.")
            .AppendLine()
            .AppendLine("VERIFIED CCT-USCF KNOWLEDGE:")
            .AppendLine(knowledge)
            .AppendLine()
            .AppendLine("SAFE CURRENT APPLICATION CONTEXT:")
            .AppendLine(runtimeContext)
            .AppendLine()
            .AppendLine("EXTERNAL/CURRENT SOURCES:")
            .AppendLine(string.IsNullOrWhiteSpace(externalSources)
                ? "Not applicable."
                : externalSources)
            .AppendLine()
            .AppendLine($"User request: {normalized}")
            .ToString();

        var reply = await _ai.GenerateAsync(promptWithContext, cancellationToken);
        return reply with { Intent = intent };
    }

    private static List<CctNavigationTarget>? TryGetNavigation(string prompt)
    {
        if (ContainsAny(prompt, "account", "account details", "my account") &&
            !ContainsAny(prompt, "profile", "settings"))
        {
            return [CctNavigationTarget.Profile, CctNavigationTarget.Settings];
        }

        var targets = new List<CctNavigationTarget>();
        if (ContainsAny(prompt, "community", "community page", "community posts", "what's happening in the community", "what is happening in the community", "jumuiya"))
            targets.Add(CctNavigationTarget.Community);
        if (ContainsAny(prompt, "bible", "scripture", "passage", "read the bible", "read scripture", "biblia", "neno"))
            targets.Add(CctNavigationTarget.Bible);
        if (ContainsAny(prompt, "prayer request", "prayer requests", "submit a prayer", "my prayers", "i want to pray", "maombi", "ombi la maombi"))
            targets.Add(CctNavigationTarget.PrayerRequests);
        if (ContainsAny(prompt, "church group", "church groups", "my groups", "where can i find my groups", "vikundi", "kikundi"))
            targets.Add(CctNavigationTarget.ChurchGroups);
        if (ContainsAny(prompt, "profile", "phone number", "profile details"))
            targets.Add(CctNavigationTarget.Profile);
        if (ContainsAny(prompt, "settings", "app settings", "mipangilio"))
            targets.Add(CctNavigationTarget.Settings);
        if (ContainsAny(prompt, "sermon", "sermons", "listen to a sermon"))
            targets.Add(CctNavigationTarget.Sermons);
        if (ContainsAny(prompt, "notification", "notifications"))
            targets.Add(CctNavigationTarget.Notifications);
        if (ContainsAny(prompt, "branch message", "branch messages", "branch chat", "ujumbe wa tawi", "mawasiliano ya tawi"))
            targets.Add(CctNavigationTarget.BranchChat);
        if (ContainsAny(prompt, "announcement", "announcements", "church news"))
            targets.Add(CctNavigationTarget.Announcements);
        if (ContainsAny(prompt, "home page", "home", "go home"))
            targets.Add(CctNavigationTarget.Home);

        return targets.Count == 0 ? null : targets.Distinct().ToList();
    }

    private static string BuildTroubleshootingGuidance(CctNavigationTarget target)
    {
        var destination = CctNavigation.GetLabel(target)
            .Replace("Open ", string.Empty, StringComparison.Ordinal);
        var guidance = target switch
        {
            CctNavigationTarget.PrayerRequests =>
                "Check that the request form has the required content, then retry and review the form's status message.",
            CctNavigationTarget.Announcements =>
                "Check the selected audience, title, and message, then review the existing send status before retrying.",
            CctNavigationTarget.ChurchGroups =>
                "Group visibility depends on the organization data and permissions supplied by the app; check your current region, district, and branch context rather than guessing membership.",
            CctNavigationTarget.Community =>
                "Check the post or message fields and the status shown by the app. Community posts, group chat, and private messaging are separate features.",
            _ =>
                "Review the status message shown by the app and retry the operation."
        };

        return $"Let's troubleshoot that. {guidance} You can also open {destination} to try again.";
    }

    private static bool ContainsAny(string value, params string[] terms) =>
        terms.Any(term => value.Contains(term, StringComparison.OrdinalIgnoreCase));

    private static bool IsExplicitNavigationRequest(string prompt) =>
        prompt.Contains("take me", StringComparison.OrdinalIgnoreCase) ||
        prompt.Contains("open", StringComparison.OrdinalIgnoreCase) ||
        prompt.Contains("go to", StringComparison.OrdinalIgnoreCase) ||
        prompt.Contains("show me", StringComparison.OrdinalIgnoreCase) ||
        prompt.Contains("go home", StringComparison.OrdinalIgnoreCase) ||
        prompt.Contains("fungua", StringComparison.OrdinalIgnoreCase) ||
        prompt.Contains("nenda", StringComparison.OrdinalIgnoreCase) ||
        prompt.Contains("onyesha", StringComparison.OrdinalIgnoreCase) ||
        prompt.Contains("peleka", StringComparison.OrdinalIgnoreCase);

    private static bool IsWritingRequest(string prompt) =>
        ContainsAny(
            prompt,
            "help me write",
            "write a",
            "draft",
            "rewrite",
            "shorter",
            "shorten",
            "mafupi zaidi",
            "make it",
            "improve this",
            "andika",
            "niandikie",
            "nisaidie kuandika",
            "fanya ... mafupi",
            "boresha",
            "rekebisha");

    private static CctAssistantIntent ClassifyIntent(string prompt)
    {
        if (IsExplicitNavigationRequest(prompt))
            return CctAssistantIntent.InAppNavigation;

        if (ContainsAny(
                prompt,
                "latest",
                "current",
                "today's news",
                "today news",
                "regulations",
                "price",
                "breaking news",
                "what is happening today",
                "what happened today",
                "admission requirements",
                "university regulations",
                "current regulations"))
        {
            return CctAssistantIntent.ExternalCurrentInformation;
        }

        if (ContainsAny(
                prompt,
                "can't",
                "cannot",
                "not working",
                "unable",
                "error",
                "fails",
                "failed",
                "troubleshoot",
                "problem",
                "isn't sending",
                "is not sending",
                "isn't posting",
                "is not posting",
                "can't submit",
                "cannot submit",
                "can't see"))
        {
            return CctAssistantIntent.Troubleshooting;
        }

        if (ContainsAny(
                prompt,
                "uscf",
                "cct",
                "prayer request",
                "church group",
                "announcement",
                "community",
                "profile",
                "settings",
                "bible",
                "sermon",
                "notification",
                "church news",
                "what's happening in the community",
                "what is happening in the community",
                "i want to pray",
                "where can i find my groups",
                "read scripture"))
        {
            return CctAssistantIntent.CctFeature;
        }

        if (ContainsAny(prompt, "fungua", "nenda", "onyesha", "peleka", "maombi", "ujumbe wa tawi", "tawi"))
            return CctAssistantIntent.InAppNavigation;

        return CctAssistantIntent.GeneralKnowledge;
    }

    private static string Safe(object? value) =>
        value?.ToString() is { Length: > 0 } text ? text : "unknown";
}
