namespace CCT_USCF.Pages;

public partial class ProfilePage : ContentPage
{
    private readonly Services.AuthService _authService;

    public ProfilePage()
    {
        InitializeComponent();
        _authService = LoginRegisterHelpers.GetAuthService();
    }

    protected override void OnAppearing()
    {
        base.OnAppearing();
        _ = LoadProfileAsync();
    }

    private async Task LoadProfileAsync()
    {
        try
        {
            var user = MauiProgram.CurrentUser ?? await _authService.GetCurrentUserAsync();
            if (user == null)
            {
                FullNameLabel.Text = "Full Name: Not available";
                UsernameLabel.Text = "Username: Not available";
                EmailLabel.Text = "Email: Not available";
                RoleLabel.Text = "Role: Not available";
                RegionLabel.Text = "Region: Not available";
                DistrictLabel.Text = "District: Not available";
                BranchLabel.Text = "USCF Branch: Not available";
                return;
            }

            FullNameLabel.Text = $"Full Name: {user.FullName}";
            UsernameLabel.Text = $"Username: {user.Username}";
            EmailLabel.Text = $"Email: {user.Email}";
            RoleLabel.Text = $"Role: {user.Role}";
            RegionLabel.Text = $"Region: {user.Region ?? "Not available"}";
            DistrictLabel.Text = $"District: {user.District ?? "Not available"}";
            BranchLabel.Text = $"USCF Branch: {user.Branch ?? "Not available"}";

            MauiProgram.SetCurrentUser(user);
        }
        catch (Exception ex)
        {
            FullNameLabel.Text = "Full Name: Unable to load";
            UsernameLabel.Text = "Username: Unable to load";
            EmailLabel.Text = "Email: Unable to load";
            RoleLabel.Text = "Role: Unable to load";
            RegionLabel.Text = "Region: Unable to load";
            DistrictLabel.Text = "District: Unable to load";
            BranchLabel.Text = "USCF Branch: Unable to load";
            System.Diagnostics.Debug.WriteLine($"[PROFILE] Error loading profile: {ex}");
        }
    }

    private async void OnLogoutClicked(object sender, EventArgs e)
    {
        try
        {
            await _authService.LogoutAsync();
        }
        catch
        {
        }

        await CCT_USCF.Services.TokenStorage.ClearSessionAsync();
        MauiProgram.SetCurrentUser(null);
        MauiProgram.NotifyAuthChanged();
        await Shell.Current.GoToAsync("//home");
    }

    private async void OnSettingsClicked(object sender, EventArgs e)
    {
        await Shell.Current.GoToAsync(nameof(Pages.SettingsPage));
    }

    private async void OnSavedVersesClicked(object sender, EventArgs e)
    {
        // Navigate to a Saved Verses page (placeholder)
        await Shell.Current.GoToAsync(nameof(Pages.SavedVersesPage));
    }

    private async void OnPrayerRequestsClicked(object sender, EventArgs e)
    {
        // Navigate to user's prayer requests
        await Shell.Current.GoToAsync(nameof(Pages.MyPrayerRequestsPage));
    }

    private async void OnEventsClicked(object sender, EventArgs e)
    {
        await Shell.Current.GoToAsync(nameof(Pages.EventsPage));
    }

    private async void OnSavedSermonsClicked(object sender, EventArgs e)
    {
        // Placeholder navigation
        await Shell.Current.GoToAsync(nameof(Pages.SavedSermonsPage));
    }
}
