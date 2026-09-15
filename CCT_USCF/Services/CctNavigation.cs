using CCT_USCF.Pages;

namespace CCT_USCF.Services;

public static class CctNavigation
{
    public static string GetRoute(CctNavigationTarget target) =>
        target switch
        {
            CctNavigationTarget.Home => "//home",
            CctNavigationTarget.Profile => "//profile",
            CctNavigationTarget.Settings => nameof(SettingsPage),
            CctNavigationTarget.ChurchGroups => nameof(ChurchGroupSelectionPage),
            CctNavigationTarget.BranchChat => MauiProgram.CurrentUser is { BranchId: int branchId } user
                ? $"{nameof(BranchChatPage)}?branchId={branchId}&branchName={Uri.EscapeDataString(user.Branch ?? string.Empty)}"
                : nameof(ChurchGroupSelectionPage),
            CctNavigationTarget.Community => "//community",
            CctNavigationTarget.PrayerRequests => "//prayer",
            CctNavigationTarget.Announcements => nameof(AnnouncementActivityPage),
            CctNavigationTarget.Bible => "//bible",
            CctNavigationTarget.Sermons => nameof(SermonsPage),
            CctNavigationTarget.Notifications => nameof(AnnouncementActivityPage),
            _ => throw new ArgumentOutOfRangeException(nameof(target), target, "Unsupported CCT-USCF destination.")
        };

    public static string GetLabel(CctNavigationTarget target) =>
        target switch
        {
            CctNavigationTarget.Home => "Go Home",
            CctNavigationTarget.Profile => "Open Profile",
            CctNavigationTarget.Settings => "Open Settings",
            CctNavigationTarget.ChurchGroups => "Open Church Groups",
            CctNavigationTarget.BranchChat => "Open Branch Messages",
            CctNavigationTarget.Community => "Open Community",
            CctNavigationTarget.PrayerRequests => "Open Prayer Requests",
            CctNavigationTarget.Announcements => "Open Announcements",
            CctNavigationTarget.Bible => "Open Bible",
            CctNavigationTarget.Sermons => "Open Sermons",
            CctNavigationTarget.Notifications => "Open Notifications",
            _ => throw new ArgumentOutOfRangeException(nameof(target), target, "Unsupported CCT-USCF destination.")
        };
}
