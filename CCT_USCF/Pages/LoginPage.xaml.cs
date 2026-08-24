using CCT_USCF.Services;
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

            // Save the authenticated session securely and verify it
            try
            {
                await TokenStorage.SaveSessionAsync(result.Token!, result.RefreshToken, result.ExpiresAtUtc ?? DateTime.UtcNow.AddHours(8));
            }
            catch (Exception ex)
            {
                MessageLabel.Text = ex.Message;
                MessageLabel.IsVisible = true;
                return;
            }

            CCT_USCF.Models.CurrentUser? user = null;
            try
            {
                user = await _authService.GetCurrentUserAsync();
            }
            catch (HttpRequestException)
            {
                // network/server issue — keep the persisted session so the app can recover later
                MessageLabel.Text = "Logged in, but the server could not be reached to verify the session yet. Please try again when your connection is available.";
                MessageLabel.IsVisible = true;
                return;
            }

            if (user == null)
            {
                await TokenStorage.ClearSessionAsync();
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
