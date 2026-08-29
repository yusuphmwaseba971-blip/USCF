namespace CCT_USCF.Pages;

public partial class CommunityPage : ContentPage
{
    public CommunityPage()
    {
        InitializeComponent();
    }

    private async void OnCreatePostClicked(object sender, EventArgs e)
    {
        // Ensure user authenticated otherwise navigate to login
        var auth = LoginRegisterHelpers.GetAuthService();
        var user = MauiProgram.CurrentUser ?? await auth.GetCurrentUserAsync();
        if (user == null)
        {
            await DisplayAlert("Not authenticated", "Please sign in to create posts.", "OK");
            await Shell.Current.GoToAsync(nameof(Pages.LoginPage));
            return;
        }

        var destinations = GetPostingDestinations(user.Role, user.LeadershipLevel, user.LeadershipDuty);
        var destination = await DisplayActionSheet(
            "Where do you want to post?",
            "Cancel",
            null,
            destinations);

        if (string.IsNullOrWhiteSpace(destination) ||
            destination.Equals("Cancel", StringComparison.OrdinalIgnoreCase))
            return;

        await Shell.Current.GoToAsync(
            $"{nameof(Pages.ChurchGroupSelectionPage)}?destination={Uri.EscapeDataString(destination)}");
    }

    private async void OnChurchGroupsClicked(object sender, EventArgs e)
    {
        await Shell.Current.GoToAsync(nameof(Pages.ChurchGroupSelectionPage));
    }

    private static string[] GetPostingDestinations(string? role, string? leadershipLevel, string? leadershipDuty)
    {
        var normalizedRole = role?.Trim().Replace(" ", string.Empty)
            .Replace("-", string.Empty) ?? string.Empty;

        var normalizedLeadershipLevel = leadershipLevel?.Trim() ?? string.Empty;
        var normalizedLeadershipDuty = leadershipDuty?.Trim() ?? string.Empty;

        if (normalizedRole.Equals("Leader", StringComparison.OrdinalIgnoreCase) ||
            normalizedRole.Equals("Pastor", StringComparison.OrdinalIgnoreCase) ||
            normalizedRole.Equals("Priest", StringComparison.OrdinalIgnoreCase))
        {
            if (!string.IsNullOrWhiteSpace(normalizedLeadershipLevel))
            {
                return new[] { "National Group", "Regional Group", "District Group", "Branch Group", "Full Community" };
            }

            return new[] { "National Group", "Regional Group", "District Group", "Branch Group", "Full Community" };
        }

        if (normalizedRole.Equals("Member", StringComparison.OrdinalIgnoreCase) ||
            string.IsNullOrWhiteSpace(normalizedRole))
        {
            return new[] { "Branch Group", "Full Community" };
        }

        if (normalizedLeadershipDuty.Equals("Chairman", StringComparison.OrdinalIgnoreCase))
        {
            return new[] { "National Group", "Regional Group", "District Group", "Branch Group", "Full Community" };
        }

        return new[] { "Branch Group", "Full Community" };
    }
}