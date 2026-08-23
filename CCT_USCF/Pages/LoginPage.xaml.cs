using Microsoft.Maui.Storage;
using System.Text.Json;
using System.Text;

namespace CCT_USCF.Pages;

public partial class LoginPage : ContentPage
{
    private readonly Services.AuthService _authService;

    public LoginPage()
    {
        InitializeComponent();
        _authService = LoginRegisterHelpers.GetAuthService();
    }

    private async void OnLoginClicked(object sender, EventArgs e)
    {
        MessageLabel.IsVisible = false;
        var username = UsernameEntry.Text?.Trim() ?? string.Empty;
        var password = PasswordEntry.Text ?? string.Empty;

        if (string.IsNullOrEmpty(username) || string.IsNullOrEmpty(password))
        {
            MessageLabel.Text = "Please enter username/email and password.";
            MessageLabel.IsVisible = true;
            return;
        }

        LoginButton.IsEnabled = false;
        try
        {
            var result = await _authService.LoginAsync(username, password);
            if (!result.Success)
            {
                MessageLabel.Text = result.Error ?? "Login failed";
                MessageLabel.IsVisible = true;
                return;
            }

            // Save token securely and verify
            try
            {
                await TokenStorage.SaveTokenAsync(result.Token!);
            }
            catch (Exception ex)
            {
                MessageLabel.Text = ex.Message;
                MessageLabel.IsVisible = true;
                return;
            }

            // Call /api/auth/me to verify and obtain current user
            CCT_USCF.Models.CurrentUser? user = null;
            try
            {
                user = await _authService.GetCurrentUserAsync();
            }
            catch (HttpRequestException hre)
            {
                // network/server issue — keep token but inform the user
                MessageLabel.Text = "Logged in, but unable to contact server to verify session. Please check your connection.";
                MessageLabel.IsVisible = true;
                // do not remove token here; allow user to retry
                return;
            }

            if (user == null)
            {
                // token appears invalid
                await TokenStorage.RemoveTokenAsync();
                MessageLabel.Text = "Login failed: server rejected the token.";
                MessageLabel.IsVisible = true;
                return;
            }

            MauiProgram.SetCurrentUser(user);
            MauiProgram.NotifyAuthChanged();
            await Shell.Current.GoToAsync("//home");
        }
        finally
        {
            LoginButton.IsEnabled = true;
        }
    }

    private async void OnCreateAccountClicked(object sender, EventArgs e)
    {
        await Shell.Current.GoToAsync("register");
    }
}
