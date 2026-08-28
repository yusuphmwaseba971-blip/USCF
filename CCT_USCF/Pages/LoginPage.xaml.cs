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

                // Save the authenticated session securely and verify it
                try
                {
                    System.Diagnostics.Debug.WriteLine("[LOGIN] Saving session to secure storage");
                    await TokenStorage.SaveSessionAsync(result.Token!, result.RefreshToken, result.ExpiresAtUtc ?? DateTime.UtcNow.AddHours(8));
                }
                catch (Exception ex)
                {
                    MessageLabel.Text = ex.Message;
                    MessageLabel.IsVisible = true;
                    System.Diagnostics.Debug.WriteLine($"[LOGIN] Error saving session: {ex}");
                    return;
                }

                CCT_USCF.Models.CurrentUser? user = null;
                try
                {
                    System.Diagnostics.Debug.WriteLine("[LOGIN] Calling GetCurrentUserAsync to verify token");
                    user = await _authService.GetCurrentUserAsync();
                    System.Diagnostics.Debug.WriteLine($"[LOGIN] GetCurrentUserAsync returned user: {(user != null ? user.Username : "null")}");
                }
                catch (HttpRequestException httpEx)
                {
                    // Network/server issue — keep the persisted session so the app can recover later.
                    // Allow the user to proceed using the locally available profile.
                    MessageLabel.Text = "Logged in (offline). You can use the app now; verification will resume when connection is available.";
                    MessageLabel.IsVisible = true;
                    System.Diagnostics.Debug.WriteLine($"[LOGIN] Network error verifying session: {httpEx.Message}");

                    var localUser = CCT_USCF.Services.TokenStorage.GetCachedUser();
                    if (localUser != null)
                    {
                        MauiProgram.SetCurrentUser(localUser);
                        await CCT_USCF.Services.TokenStorage.SaveCachedUserAsync(localUser);
                        MauiProgram.NotifyAuthChanged();
                        await Shell.Current.GoToAsync("//home");
                        return;
                    }

                    return;
                }
                catch (Exception ex)
                {
                    System.Diagnostics.Debug.WriteLine($"[LOGIN] Unexpected error verifying session: {ex}");
                    MessageLabel.Text = "An unexpected error occurred verifying the session.";
                    MessageLabel.IsVisible = true;
                    return;
                }

                if (user == null)
                {
                    await TokenStorage.ClearSessionAsync();
                    MessageLabel.Text = "Login failed: server rejected the token.";
                    MessageLabel.IsVisible = true;
                    System.Diagnostics.Debug.WriteLine("[LOGIN] Server rejected token (user==null)");
                    return;
                }

                                // Cache the verified user for offline use
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
