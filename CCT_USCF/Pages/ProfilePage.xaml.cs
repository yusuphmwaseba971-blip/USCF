using CCT_USCF.Services;

namespace CCT_USCF.Pages;

public partial class ProfilePage : ContentPage
{
    private readonly Services.AuthService _authService;
    private readonly Services.StoreReviewService _storeReviewService;
    private readonly AppAppearanceService _appearance;
    private CCT_USCF.Models.CurrentUser? _profileUser;
    private bool _profileLoadFailed;

    public ProfilePage()
    {
        InitializeComponent();
        _authService = LoginRegisterHelpers.GetAuthService();
        _storeReviewService = MauiProgram.Services.GetRequiredService<Services.StoreReviewService>();
        _appearance = MauiProgram.Services.GetRequiredService<AppAppearanceService>();
    }

    protected override void OnAppearing()
    {
        base.OnAppearing();
        _appearance.AppearanceChanged += OnAppearanceChanged;
        _ = LoadProfileAsync();
    }

    protected override void OnDisappearing()
    {
        _appearance.AppearanceChanged -= OnAppearanceChanged;
        base.OnDisappearing();
    }

    private void OnAppearanceChanged(object? sender, EventArgs e) =>
        MainThread.BeginInvokeOnMainThread(RefreshProfileLabels);

    private async Task LoadProfileAsync()
    {
        try
        {
            var user = MauiProgram.CurrentUser ?? await _authService.GetCurrentUserAsync();
            _profileUser = user;
            _profileLoadFailed = false;
            RefreshProfileLabels();

            if (user != null)
                MauiProgram.SetCurrentUser(user);
        }
        catch (Exception ex)
        {
            _profileUser = null;
            _profileLoadFailed = true;
            RefreshProfileLabels();
            System.Diagnostics.Debug.WriteLine($"[PROFILE] Error loading profile: {ex}");
        }
    }

    private void RefreshProfileLabels()
    {
        if (_profileLoadFailed || _profileUser == null)
        {
            var status = _appearance.GetText(
                _profileLoadFailed ? "Profile.UnableToLoad" : "Profile.NotAvailable");
            FullNameLabel.Text = $"{_appearance.GetText("Profile.FullName")}: {status}";
            UsernameLabel.Text = $"{_appearance.GetText("Profile.Username")}: {status}";
            EmailLabel.Text = $"{_appearance.GetText("Profile.Email")}: {status}";
            PhoneNumberLabel.Text = $"{_appearance.GetText("Profile.Phone")}: {status}";
            RoleLabel.Text = $"{_appearance.GetText("Profile.Role")}: {status}";
            RegionLabel.Text = $"{_appearance.GetText("Profile.Region")}: {status}";
            DistrictLabel.Text = $"{_appearance.GetText("Profile.District")}: {status}";
            BranchLabel.Text = $"{_appearance.GetText("Profile.Branch")}: {status}";
            return;
        }

        var user = _profileUser;
        FullNameLabel.Text = $"{_appearance.GetText("Profile.FullName")}: {user.FullName}";
        UsernameLabel.Text = $"{_appearance.GetText("Profile.Username")}: {user.Username}";
        EmailLabel.Text = $"{_appearance.GetText("Profile.Email")}: {user.Email}";
        PhoneNumberLabel.Text = $"{_appearance.GetText("Profile.Phone")}: {user.PhoneNumber}";
        RoleLabel.Text = $"{_appearance.GetText("Profile.Role")}: {user.Role}";
        RegionLabel.Text = $"{_appearance.GetText("Profile.Region")}: {user.Region ?? _appearance.GetText("Profile.NotAvailable")}";
        DistrictLabel.Text = $"{_appearance.GetText("Profile.District")}: {user.District ?? _appearance.GetText("Profile.NotAvailable")}";
        BranchLabel.Text = $"{_appearance.GetText("Profile.Branch")}: {user.Branch ?? _appearance.GetText("Profile.NotAvailable")}";
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

    private async void OnRateUsClicked(object sender, EventArgs e)
    {
        try
        {
            await _storeReviewService.RequestReviewAsync();
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine($"[PROFILE] Rate USCF failed: {ex}");
        }
    }

    private async void OnHelpSupportClicked(object sender, EventArgs e)
    {
        await Shell.Current.GoToAsync(nameof(Pages.HelpFeedbackPage));
    }

    private async void OnSettingsClicked(object sender, EventArgs e)
    {
        await Shell.Current.GoToAsync(nameof(Pages.SettingsPage));
    }

    private async void OnAboutCctUsfcClicked(object sender, EventArgs e)
    {
        await Shell.Current.GoToAsync(nameof(Pages.AboutCctUsfcPage));
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
