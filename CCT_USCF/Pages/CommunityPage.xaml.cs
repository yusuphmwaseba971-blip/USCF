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

        await Shell.Current.GoToAsync(nameof(Pages.CreateHolyWordPage));
    }
}