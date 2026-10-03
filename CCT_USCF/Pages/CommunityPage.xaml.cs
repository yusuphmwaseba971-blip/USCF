using CCT_USCF.Services;

namespace CCT_USCF.Pages;

public partial class CommunityPage : ContentPage
{
    private readonly AppAppearanceService _appearance;

    public CommunityPage()
    {
        InitializeComponent();
        _appearance = MauiProgram.Services.GetRequiredService<AppAppearanceService>();
    }

    private async void OnCreatePostClicked(object sender, EventArgs e)
    {
        // Ensure user authenticated otherwise navigate to login
        var auth = LoginRegisterHelpers.GetAuthService();
        var user = MauiProgram.CurrentUser ?? await auth.GetCurrentUserAsync();
        if (user == null)
        {
            await DisplayAlert(
                _appearance.GetText("Community.NotAuthenticated"),
                _appearance.GetText("Community.SignInToPost"),
                _appearance.GetText("Common.Ok"));
            await Shell.Current.GoToAsync(nameof(Pages.LoginPage));
            return;
        }

        var destinations = GetPostingDestinations(user.Role, user.LeadershipLevel, user.LeadershipDuty);
        var displayDestinations = destinations
            .Select(destination => (Display: GetDestinationLabel(destination), Canonical: destination))
            .ToList();
        var selectedDisplayDestination = await DisplayActionSheet(
            _appearance.GetText("Community.PostDestination"),
            _appearance.GetText("Community.Cancel"),
            null,
            displayDestinations.Select(destination => destination.Display).ToArray());

        if (string.IsNullOrWhiteSpace(selectedDisplayDestination) ||
            selectedDisplayDestination.Equals(
                _appearance.GetText("Community.Cancel"),
                StringComparison.OrdinalIgnoreCase))
            return;

        var destination = displayDestinations
            .FirstOrDefault(option => option.Display == selectedDisplayDestination)
            .Canonical;
        if (string.IsNullOrEmpty(destination))
            return;

        if (destination.Equals("Full Community", StringComparison.OrdinalIgnoreCase))
        {
            await Shell.Current.GoToAsync(nameof(Pages.FullCommunityPage));
            return;
        }

        await Shell.Current.GoToAsync(
            $"{nameof(Pages.ChurchGroupSelectionPage)}?destination={Uri.EscapeDataString(destination)}");
    }

    private async void OnChurchGroupsClicked(object sender, EventArgs e)
    {
        await Shell.Current.GoToAsync(nameof(Pages.ChurchGroupSelectionPage));
    }

    private async void OnPrayerRequestsClicked(object? sender, TappedEventArgs e)
    {
        await Shell.Current.GoToAsync(nameof(Pages.PrayerPage));
    }

    private async void OnFullCommunityClicked(object? sender, TappedEventArgs e)
    {
        await Shell.Current.GoToAsync(nameof(Pages.FullCommunityPage));
    }

    private async void OnChurchAnnouncementsClicked(object sender, EventArgs e)
        => await Shell.Current.GoToAsync(nameof(Pages.ChurchAnnouncementPage));

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

    private string GetDestinationLabel(string destination) =>
        destination switch
        {
            "National Group" => _appearance.GetText("Community.NationalGroup"),
            "Regional Group" => _appearance.GetText("Community.RegionalGroup"),
            "District Group" => _appearance.GetText("Community.DistrictGroup"),
            "Branch Group" => _appearance.GetText("Community.BranchGroup"),
            "Full Community" => _appearance.GetText("Community.FullCommunity"),
            _ => destination
        };
}