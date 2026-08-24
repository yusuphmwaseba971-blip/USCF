using System.Text;
using System.Text.Json;
using CCT_USCF.Pages;
using Microsoft.Maui.Storage;
using Microsoft.Maui.Controls;

namespace CCT_USCF;

public partial class AppShell : Shell
{
    public AppShell()
    {
        InitializeComponent();

        Routing.RegisterRoute(nameof(BiblePage), typeof(BiblePage));
        Routing.RegisterRoute(nameof(PrayerPage), typeof(PrayerPage));
        Routing.RegisterRoute(nameof(CommunityPage), typeof(CommunityPage));
        Routing.RegisterRoute(nameof(ProfilePage), typeof(ProfilePage));
        Routing.RegisterRoute(nameof(SermonsPage), typeof(SermonsPage));
        Routing.RegisterRoute(nameof(EventsPage), typeof(EventsPage));
        Routing.RegisterRoute(nameof(GivingPage), typeof(GivingPage));

        Routing.RegisterRoute(nameof(Pages.SettingsPage), typeof(Pages.SettingsPage));
        Routing.RegisterRoute(nameof(Pages.SavedVersesPage), typeof(Pages.SavedVersesPage));
        Routing.RegisterRoute(nameof(Pages.MyPrayerRequestsPage), typeof(Pages.MyPrayerRequestsPage));
        Routing.RegisterRoute(nameof(Pages.SavedSermonsPage), typeof(Pages.SavedSermonsPage));
        Routing.RegisterRoute(nameof(Pages.CreateHolyWordPage), typeof(Pages.CreateHolyWordPage));

        Routing.RegisterRoute(nameof(Pages.LoginPage), typeof(Pages.LoginPage));
        Routing.RegisterRoute(nameof(Pages.RegisterPage), typeof(Pages.RegisterPage));
        Routing.RegisterRoute("login", typeof(Pages.LoginPage));
        Routing.RegisterRoute("register", typeof(Pages.RegisterPage));

        MauiProgram.AuthStateChanged += async () => await UpdateAuthUIAsync();
        _ = UpdateAuthUIAsync();
    }

    protected override void OnAppearing()
    {
        base.OnAppearing();
        _ = UpdateAuthUIAsync();
    }

    private async Task UpdateAuthUIAsync()
    {
        try
        {
            var token = await CCT_USCF.Services.TokenStorage.GetTokenAsync();
            if (string.IsNullOrWhiteSpace(token))
            {
                ClearAuthenticatedState();
                return;
            }

            var localUser = TryGetUserFromToken(token);
            if (localUser != null)
            {
                MauiProgram.SetCurrentUser(localUser);
            }

            var auth = MauiProgram.CreateAuthServiceForPages();
            try
            {
                var user = await auth.GetCurrentUserAsync();
                if (user == null)
                {
                    await CCT_USCF.Services.TokenStorage.ClearSessionAsync();
                    ClearAuthenticatedState();
                    return;
                }

                MauiProgram.SetCurrentUser(user);
                ShowAuthenticatedState();
                return;
            }
            catch (UnauthorizedAccessException)
            {
                await CCT_USCF.Services.TokenStorage.ClearSessionAsync();
                ClearAuthenticatedState();
                return;
            }
            catch (HttpRequestException httpEx)
            {
                System.Diagnostics.Debug.WriteLine($"UpdateAuthUIAsync network error: {httpEx.Message}");
                if (localUser != null || MauiProgram.CurrentUser != null)
                {
                    ShowAuthenticatedState();
                    return;
                }

                ClearAuthenticatedState();
                return;
            }
            catch (OperationCanceledException)
            {
                if (localUser != null || MauiProgram.CurrentUser != null)
                {
                    ShowAuthenticatedState();
                    return;
                }

                ClearAuthenticatedState();
                return;
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine($"UpdateAuthUIAsync generic error: {ex}");
                if (localUser != null || MauiProgram.CurrentUser != null)
                {
                    ShowAuthenticatedState();
                    return;
                }

                ClearAuthenticatedState();
                return;
            }
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine($"UpdateAuthUIAsync storage error: {ex}");
            ClearAuthenticatedState();
        }
    }

    private void ShowAuthenticatedState()
    {
        SignUpLoginButton.IsVisible = false;
        AuthProfileButton.IsVisible = true;
    }

    private void ClearAuthenticatedState()
    {
        SignUpLoginButton.IsVisible = true;
        AuthProfileButton.IsVisible = false;
        MauiProgram.SetCurrentUser(null);
    }

    private static CCT_USCF.Models.CurrentUser? TryGetUserFromToken(string token)
    {
        try
        {
            var parts = token.Split('.');
            if (parts.Length < 2) return null;

            var payload = parts[1];
            var padded = payload.Replace('-', '+').Replace('_', '/');
            while (padded.Length % 4 != 0)
            {
                padded += "=";
            }

            var payloadBytes = Convert.FromBase64String(padded);
            using var doc = JsonDocument.Parse(payloadBytes);
            var root = doc.RootElement;

            string? userId = TryGetString(root, new[] { "nameid", "sub", "http://schemas.xmlsoap.org/ws/2005/05/identity/claims/nameidentifier", "userId" });
            string? fullName = TryGetString(root, new[] { "name", "fullName" });
            string? username = TryGetString(root, new[] { "username", "preferred_username", "given_name" });
            string? email = TryGetString(root, new[] { "email", "emails" });
            string? role = TryGetString(root, new[] { "role", "http://schemas.microsoft.com/ws/2008/06/identity/claims/role" });

            if (string.IsNullOrWhiteSpace(userId)) return null;

            return new CCT_USCF.Models.CurrentUser
            {
                Id = Guid.TryParse(userId, out var parsedUserId) ? parsedUserId : Guid.Empty,
                FullName = fullName ?? username ?? "User",
                Username = username ?? fullName ?? "user",
                Email = email ?? string.Empty,
                Role = role ?? "Member"
            };
        }
        catch
        {
            return null;
        }
    }

    private static string? TryGetString(JsonElement root, string[] keys)
    {
        foreach (var key in keys)
        {
            if (root.TryGetProperty(key, out var value))
            {
                if (value.ValueKind == JsonValueKind.String)
                {
                    return value.GetString();
                }
            }
        }

        return null;
    }

    private async void OnSignUpLoginClicked(object sender, EventArgs e)
    {
        var choice = await this.DisplayActionSheet("Sign In or Create Account", "Cancel", null, "Login", "Create Account");

        switch (choice)
        {
            case "Login":
                await Shell.Current.GoToAsync(nameof(Pages.LoginPage));
                break;
            case "Create Account":
                await Shell.Current.GoToAsync(nameof(Pages.RegisterPage));
                break;
        }
    }

    private async void OnAuthProfileClicked(object sender, EventArgs e)
    {
        var choice = await this.DisplayActionSheet("Account", "Cancel", null, "Profile", "Logout");
        switch (choice)
        {
            case "Profile":
                await Shell.Current.GoToAsync(nameof(Pages.ProfilePage));
                break;
            case "Logout":
                try
                {
                    await MauiProgram.CreateAuthServiceForPages().LogoutAsync();
                }
                catch
                {
                }

                await CCT_USCF.Services.TokenStorage.ClearSessionAsync();
                MauiProgram.SetCurrentUser(null);
                MauiProgram.NotifyAuthChanged();
                await Shell.Current.GoToAsync("//home");
                break;
        }
    }
}
