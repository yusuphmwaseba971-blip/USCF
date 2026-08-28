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
            System.Diagnostics.Debug.WriteLine("[LOGIN] OnLoginClicked invoked");
            MessageLabel.IsVisible = true;
            MessageLabel.Text = "Attempting to login...";
            var username = UsernameEntry.Text?.Trim() ?? string.Empty;
            var password = PasswordEntry.Text ?? string.Empty;

            if (string.IsNullOrEmpty(username) || string.IsNullOrEmpty(password))
            {
                MessageLabel.Text = "Please enter username/email and password.";
                MessageLabel.IsVisible = true;
                System.Diagnostics.Debug.WriteLine("[LOGIN] Validation failed: empty username or password");
                return;
            }

            LoginButton.IsEnabled = false;
            try
            {
                System.Diagnostics.Debug.WriteLine("[LOGIN] Sending LoginAsync request");
                var result = await _authService.LoginAsync(username, password);
                System.Diagnostics.Debug.WriteLine($"[LOGIN] LoginAsync completed: Success={result.Success} Status={result.StatusCode}");

                if (!result.Success)
                {
                    MessageLabel.Text = result.Error ?? "Login failed";
                    MessageLabel.IsVisible = true;
                    System.Diagnostics.Debug.WriteLine($"[LOGIN] Login failed: {result.Error}");
                    return;
            }

                // Persist a lightweight local session only when a non-Firebase session marker is available.
                // Firebase Authentication remains authoritative; the local cache is only for offline recovery.
                try
                {
                    if (!string.IsNullOrWhiteSpace(result.Token))
                    {
                        System.Diagnostics.Debug.WriteLine("[LOGIN] Saving lightweight local session to secure storage");
                        await TokenStorage.SaveSessionAsync(result.Token, result.RefreshToken, result.ExpiresAtUtc ?? DateTime.UtcNow.AddDays(30));
                    }
                    else
                    {
                        System.Diagnostics.Debug.WriteLine("[LOGIN] No local token marker available; continuing with Firebase session only.");
                    }
                }
                catch (Exception ex)
                {
                    MessageLabel.Text = ex.Message;
                    MessageLabel.IsVisible = true;
                    System.Diagnostics.Debug.WriteLine($"[LOGIN] Error saving session: {ex}");
                    return;
                }

                CCT_USCF.Models.CurrentUser? user = MauiProgram.CurrentUser;
                try
                {
                    if (user == null)
                    {
                        System.Diagnostics.Debug.WriteLine("[LOGIN] Loading current Firebase user profile after login");
                        user = await _authService.GetCurrentUserAsync();
                    }

                    System.Diagnostics.Debug.WriteLine($"[LOGIN] Current user after login: {(user != null ? user.Username : "null")}");
                }
                catch (Exception ex)
                {
                    System.Diagnostics.Debug.WriteLine($"[LOGIN] Error reading current Firebase user: {ex}");

                    var localUser = CCT_USCF.Services.TokenStorage.GetCachedUser();
                    if (localUser != null)
                    {
                        user = localUser;
                        MauiProgram.SetCurrentUser(user);
                        await CCT_USCF.Services.TokenStorage.SaveCachedUserAsync(localUser);
                        MauiProgram.NotifyAuthChanged();
                        await Shell.Current.GoToAsync("//home");
                        return;
                    }

                    MessageLabel.Text = "The session could not be verified. Please try again.";
                    MessageLabel.IsVisible = true;
                    return;
                }

                if (user == null)
                {
                    await TokenStorage.ClearSessionAsync();
                    MessageLabel.Text = "Login failed: the Firebase session was not available.";
                    MessageLabel.IsVisible = true;
                    System.Diagnostics.Debug.WriteLine("[LOGIN] No current Firebase user available after login");
                    return;
                }

                await TokenStorage.SaveCachedUserAsync(user);

                System.Diagnostics.Debug.WriteLine("[LOGIN] Login successful, navigating to home");
                MauiProgram.SetCurrentUser(user);
                MauiProgram.NotifyAuthChanged();
                await Shell.Current.GoToAsync("//home");

            }
            catch (Exception ex)
            {
                // Catch any unexpected exceptions to avoid crashing the app
                System.Diagnostics.Debug.WriteLine($"[LOGIN] Unhandled exception in OnLoginClicked: {ex}");
                MessageLabel.Text = "An error occurred during login. Please try again.";
                MessageLabel.IsVisible = true;
            }
            finally
            {
                LoginButton.IsEnabled = true;
                System.Diagnostics.Debug.WriteLine("[LOGIN] OnLoginClicked finished");
            }
        }

    private async void OnCreateAccountClicked(object sender, EventArgs e)
    {
        await Shell.Current.GoToAsync("register");
    }
}
