namespace CCT_USCF.Services;

public static class CctUsfcKnowledgeBase
{
    public const string UnknownAnswer =
        "I don't have enough verified information about that CCT-USCF feature yet.";

    private static readonly IReadOnlyList<KnowledgeSection> Sections =
    [
        new(
            "identity-navigation",
            ["what is uscf", "what is cct", "home", "navigate", "navigation", "settings"],
            """
            VERIFIED: CCT-USCF is the Android application represented by this assistant.
            USCF Assistance is the in-app contextual assistant; it does not perform authorization
            or silently change application data.
            The Home page provides Settings, notifications, profile access, announcements,
            Prayer Requests, Community activity, Events, and shortcuts to application features.
            """),
        new(
            "church-groups",
            ["church group", "church groups", "group discovery", "national group", "regional group", "district group", "branch group"],
            """
            VERIFIED: Church Group selection exposes National Group, Regional Group, District Group,
            and Branch Group organizational levels. The page also exposes Add Group when the current
            implementation makes it available and a Cancel action.
            Organizational level selection is not the same as authorization to create or manage a group.
            """),
        new(
            "branch-groups-messaging",
            ["branch group", "branch message", "branch chat", "community message", "community chat", "message", "chat"],
            """
            VERIFIED: The application contains Branch Chat and Group Chat pages and a Community
            Message cache service. The application also contains a Community page and a separate
            full Community feed. Do not describe private-message visibility, delivery guarantees,
            notification behavior, or offline synchronization unless the current page/backend
            explicitly confirms it.
            """),
        new(
            "prayer-requests",
            ["prayer request", "submit a prayer", "prayer wall", "my requests", "pray"],
            """
            VERIFIED: Prayer Requests is presented as a Prayer Community/Prayer Wall. It has Add Prayer
            Request, My Requests, and Community actions. The page displays existing request cards and
            supports loading more items. Submission and visibility details must follow the current
            form and backend; this knowledge does not grant permission or invent privacy rules.
            """),
        new(
            "community-posts",
            ["community", "post", "feed", "testimony", "share a thought"],
            """
            VERIFIED: Community provides Create Post and a Church Community feed. The UI describes
            posts as a place to share thoughts, prayers, or testimony and provides navigation to the
            community feed and Prayer Requests. Posts and Community/Group chat are distinct features.
            """),
        new(
            "announcements",
            ["announcement", "announcements", "audience", "attachment", "publish"],
            """
            VERIFIED: Create Announcement contains an Audience picker, title, message editor, image/PDF
            attachment selection, Send Announcement, and Announcement Activity. The page displays the
            user's organization and leadership context. Sending remains an application operation and
            requires the existing backend authorization and explicit user action.
            """),
        new(
            "bible",
            ["bible", "scripture", "verse", "bookmark", "highlight", "notebook", "kjv", "kiswahili", "neno"],
            """
            VERIFIED: Bible supports Kiswahili—Neno and English—KJV selection, Search, Bookmarks,
            Notebook, Appearance, testament/book/chapter navigation, and offline translation search.
            Verse actions include Copy, Note, bookmark, Highlight, and Share. The page also exposes
            Read aloud, Stop, and Post reading.
            """),
        new(
            "sermons-prayers-media",
            ["sermon", "sermons", "media", "audio", "read aloud", "prayers"],
            """
            VERIFIED: The application has a Sermons page and Saved Sermons page. The visible Sermons
            page contains a sermon entry and Back action. Bible Read aloud is separate from sermon
            content. Application prayer resources must not be confused with Prayer Requests.
            Media opening is handled by the application's Media Viewer service/page; unsupported
            media behavior is not asserted here.
            """),
        new(
            "profile-auth-registration",
            ["profile", "account", "login", "sign in", "register", "registration", "password", "username"],
            """
            VERIFIED: Login accepts Email or Username and Password, with LOGIN and Create Account.
            Registration collects full name, username, phone number, email, password and confirmation,
            account type (USCF Member, USCF Leader, or Pastor), and leadership information for leaders.
            The profile model contains role, leadership level/duty, organization, region, district,
            and branch fields. Authentication and profile loading remain Firebase-backed operations.
            Never request or repeat passwords or credentials.
            """),
        new(
            "organization-roles",
            ["national", "regional", "district", "branch", "leadership", "chairman", "permission", "role"],
            """
            VERIFIED: The application represents the organizational hierarchy National → Regional →
            District → Branch and stores role, leadership level, leadership duty, region, district,
            and branch context. Gemini must explain only supplied/documented permission information;
            the application/backend remains authoritative for authorization.
            """),
        new(
            "offline-notifications",
            ["offline", "cache", "sync", "synchronization", "notification", "push"],
            """
            VERIFIED: Bible search is labelled offline in the current UI. The application contains
            a Community Message cache service and Firebase Cloud Messaging integration.
            Do not claim that a feature fully works offline, synchronizes, or notifies in a specific
            foreground/background scenario unless the implementation explicitly verifies it.
            """),
        new(
            "troubleshooting-faq",
            ["error", "not working", "troubleshoot", "help", "faq", "why"],
            """
            VERIFIED: For login/profile issues, use the existing Login, Register, Profile, and Settings
            screens and their displayed status messages. For Prayer Requests, use Add Prayer Request
            and inspect the page status/error state. For announcements, verify Audience, title/message,
            attachment selection, and the existing Send Announcement status. Do not invent a fix when
            the current implementation does not expose the relevant error.
            """)
    ];

    public static string BuildRelevantKnowledge(string question, string pageName)
    {
        var normalized = question.ToLowerInvariant();
        var selected = Sections
            .Where(section =>
                section.Keywords.Any(normalized.Contains) ||
                section.Key.Equals(PageKey(pageName), StringComparison.OrdinalIgnoreCase))
            .Take(3)
            .ToList();

        if (selected.Count == 0)
            selected.Add(Sections[0]);

        return string.Join(
            Environment.NewLine + Environment.NewLine,
            selected.Select(section => $"[{section.Key}] {section.Content.Trim()}"));
    }

    private static string PageKey(string pageName) =>
        pageName switch
        {
            "Prayer Requests" => "prayer-requests",
            "Church Groups" => "church-groups",
            "Church Announcement editor" => "announcements",
            "Bible" => "bible",
            "Profile" => "profile-auth-registration",
            "Community" => "community-posts",
            _ => "identity-navigation"
        };

    private sealed record KnowledgeSection(
        string Key,
        IReadOnlyList<string> Keywords,
        string Content);
}
