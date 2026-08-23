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

        try
        {
            var token = await _authService.LoginAsync(username, password);
            await SecureStorage.Default.SetAsync("uscf_token", token);
            // After login, load current user and notify shell
            var user = await _authService.GetCurrentUserAsync();
            MauiProgram.SetCurrentUser(user);
            // notify shell to update authentication UI
            MauiProgram.NotifyAuthChanged();
            // navigate back to home
            await Shell.Current.GoToAsync("//home");
        }
        catch (Exception ex)
        {
            MessageLabel.Text = ex.Message;
            MessageLabel.IsVisible = true;
        }
    }

    private async void OnCreateAccountClicked(object sender, EventArgs e)
    {
        await Shell.Current.GoToAsync("register");
    }
}
