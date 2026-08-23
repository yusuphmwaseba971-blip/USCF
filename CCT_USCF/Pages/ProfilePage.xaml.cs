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
            var user = await _authService.GetCurrentUserAsync();
            if (user == null)
            {
                // not authenticated
                await DisplayAlert("Not authenticated", "Please sign in.", "OK");
                return;
            }

            FullNameLabel.Text = $"Full Name: {user.FullName}";
            UsernameLabel.Text = $"Username: {user.Username}";
            EmailLabel.Text = $"Email: {user.Email}";
            RoleLabel.Text = $"Role: {user.Role}";
            RegionLabel.Text = $"Region: {user.Region ?? "N/A"}";
            DistrictLabel.Text = $"District: {user.District ?? "N/A"}";
            BranchLabel.Text = $"USCF Branch: {user.Branch ?? "N/A"}";
        }
        catch (Exception ex)
        {
            await DisplayAlert("Error", ex.Message, "OK");
        }
    }

    private async void OnLogoutClicked(object sender, EventArgs e)
    {
        // Remove token and clear current user
            try { Microsoft.Maui.Storage.SecureStorage.Default.Remove("uscf_token"); } catch {}
        MauiProgram.SetCurrentUser(null);
        // Notify UI
        MauiProgram.NotifyAuthChanged();
        await Shell.Current.GoToAsync("//home");
    }
}