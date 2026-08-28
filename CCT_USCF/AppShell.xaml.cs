
using System.Text.Json;

using CCT_USCF.Pages;
using CCT_USCF.Services;

using Microsoft.Extensions.DependencyInjection;
using Microsoft.Maui.Storage;

namespace CCT_USCF;

public partial class AppShell : Shell
{
    // =========================================================
    // ONE-TIME FIRESTORE SEED FLAG
    // =========================================================

    private const string TanzaniaRegionsSeedKey =
        "CCT_TanzaniaRegionsSeeded_v1";

    private bool _startupCompleted;

    private bool _updatingAuth;

    // =========================================================
    // CONSTRUCTOR
    // =========================================================

    public AppShell()
    {
        InitializeComponent();

        // =====================================================
        // REGISTER ROUTES
        // =====================================================

        Routing.RegisterRoute(
            nameof(BiblePage),
            typeof(BiblePage));

        Routing.RegisterRoute(
            nameof(PrayerPage),
            typeof(PrayerPage));

        Routing.RegisterRoute(
            nameof(CommunityPage),
            typeof(CommunityPage));

        Routing.RegisterRoute(
            nameof(ProfilePage),
            typeof(ProfilePage));

        Routing.RegisterRoute(
            nameof(SermonsPage),
            typeof(SermonsPage));

        Routing.RegisterRoute(
            nameof(EventsPage),
            typeof(EventsPage));

        Routing.RegisterRoute(
            nameof(GivingPage),
            typeof(GivingPage));

        Routing.RegisterRoute(
            nameof(Pages.SettingsPage),
            typeof(Pages.SettingsPage));

        Routing.RegisterRoute(
            nameof(Pages.SavedVersesPage),
            typeof(Pages.SavedVersesPage));

        Routing.RegisterRoute(
            nameof(Pages.MyPrayerRequestsPage),
            typeof(Pages.MyPrayerRequestsPage));

        Routing.RegisterRoute(
            nameof(Pages.SavedSermonsPage),
            typeof(Pages.SavedSermonsPage));

        Routing.RegisterRoute(
            nameof(Pages.CreateHolyWordPage),
            typeof(Pages.CreateHolyWordPage));

        Routing.RegisterRoute(
            nameof(Pages.LoginPage),
            typeof(Pages.LoginPage));

        Routing.RegisterRoute(
            nameof(Pages.RegisterPage),
            typeof(Pages.RegisterPage));

        Routing.RegisterRoute(
            "login",
            typeof(Pages.LoginPage));

        Routing.RegisterRoute(
            "register",
            typeof(Pages.RegisterPage));

        // =====================================================
        // FIREBASE AUTH STATE
        // =====================================================

        MauiProgram.AuthStateChanged +=
            OnAuthStateChanged;

        // Do not block constructor.
        _ = InitializeShellAsync();
    }

    // =========================================================
    // AUTH STATE EVENT
    // =========================================================

    private async void OnAuthStateChanged()
    {
        try
        {
            await UpdateAuthUIAsync();
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine(
                $"[APP SHELL] Auth state error: {ex}");
        }
    }

    // =========================================================
    // SHELL APPEARING
    // =========================================================

    protected override async void OnAppearing()
    {
        base.OnAppearing();

        if (_startupCompleted)
            return;

        _startupCompleted = true;

        await InitializeShellAsync();
    }

    // =========================================================
    // APPLICATION STARTUP
    // =========================================================

    private async Task InitializeShellAsync()
    {
        try
        {
            // -------------------------------------------------
            // 1. Firebase must already be initialized by
            //    MauiProgram before Firebase services are used.
            // -------------------------------------------------

            await SeedTanzaniaRegionsIfRequiredAsync();

            // -------------------------------------------------
            // 2. Restore Firebase authentication state.
            // -------------------------------------------------

            await UpdateAuthUIAsync();
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine(
                $"[APP SHELL] Startup error: {ex}");

            // Do not destroy an existing authenticated state
            // merely because startup/network failed.
            if (MauiProgram.CurrentUser != null)
            {
                ShowAuthenticatedState();
            }
            else
            {
                ClearAuthenticatedState();
            }
        }
    }

    // =========================================================
    // ONE-TIME TANZANIA REGION SEED
    // =========================================================

    private async Task SeedTanzaniaRegionsIfRequiredAsync()
    {
        // -----------------------------------------------------
        // Already seeded on this installation.
        // -----------------------------------------------------

        if (Preferences.Get(
                TanzaniaRegionsSeedKey,
                false))
        {
            return;
        }

        try
        {
            var seeder =
                MauiProgram.Services
                    .GetRequiredService<
                        FirebaseSeedService>();

            await seeder.SeedTanzaniaRegionsAsync();

            // -------------------------------------------------
            // Only mark it complete AFTER Firebase succeeds.
            // -------------------------------------------------

            Preferences.Set(
                TanzaniaRegionsSeedKey,
                true);

            System.Diagnostics.Debug.WriteLine(
                "[FIREBASE SEED] " +
                "31 Tanzania regions successfully seeded.");
        }
        catch (Exception ex)
        {
            // -------------------------------------------------
            // DO NOT mark as seeded if the operation failed.
            // The next startup can retry.
            // -------------------------------------------------

            System.Diagnostics.Debug.WriteLine(
                $"[FIREBASE SEED] Failed: {ex}");
        }
    }

    // =========================================================
    // FIREBASE AUTHENTICATION STATE
    // =========================================================

    private async Task UpdateAuthUIAsync()
    {
        if (_updatingAuth)
            return;

        _updatingAuth = true;

        try
        {
            var auth =
                MauiProgram.CreateAuthServiceForPages();

            // -------------------------------------------------
            // Firebase is the authentication authority.
            // -------------------------------------------------

            var user =
                await auth.GetCurrentUserAsync();

            if (user == null)
            {
                ClearAuthenticatedState();
                return;
            }

            // -------------------------------------------------
            // Firebase authenticated user successfully.
            // -------------------------------------------------

            MauiProgram.SetCurrentUser(user);

            ShowAuthenticatedState();
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine(
                $"[FIREBASE AUTH] " +
                $"Unable to restore authentication: {ex}");

            // -------------------------------------------------
            // IMPORTANT:
            //
            // A temporary network/Firestore problem should NOT
            // automatically log the user out.
            //
            // If we already have a local Firebase user/profile,
            // preserve the authenticated UI.
            // -------------------------------------------------

            if (MauiProgram.CurrentUser != null)
            {
                ShowAuthenticatedState();
            }
            else
            {
                ClearAuthenticatedState();
            }
        }
        finally
        {
            _updatingAuth = false;
        }
    }

    // =========================================================
    // AUTHENTICATED UI
    // =========================================================

    private void ShowAuthenticatedState()
    {
        MainThread.BeginInvokeOnMainThread(() =>
        {
            SignUpLoginButton.IsVisible = false;
            AuthProfileButton.IsVisible = true;
        });
    }

    // =========================================================
    // UNAUTHENTICATED UI
    // =========================================================

    private void ClearAuthenticatedState()
    {
        MainThread.BeginInvokeOnMainThread(() =>
        {
            SignUpLoginButton.IsVisible = true;
            AuthProfileButton.IsVisible = false;
        });

        MauiProgram.SetCurrentUser(null);
    }

    // =========================================================
    // LEGACY TOKEN PARSER
    // =========================================================
    //
    // Kept temporarily so old parts of the application that
    // still reference this method do not immediately break.
    //
    // Firebase authentication itself does NOT depend on this.
    // =========================================================

    public static CCT_USCF.Models.CurrentUser?
        TryGetUserFromToken(string token)
    {
        try
        {
            if (string.IsNullOrWhiteSpace(token))
                return null;

            var parts = token.Split('.');

            if (parts.Length < 2)
                return null;

            var payload = parts[1];

            var padded =
                payload
                    .Replace('-', '+')
                    .Replace('_', '/');

            while (padded.Length % 4 != 0)
            {
                padded += "=";
            }

            var payloadBytes =
                Convert.FromBase64String(padded);

            using var document =
                JsonDocument.Parse(payloadBytes);

            var root =
                document.RootElement;

            var userId =
                TryGetString(
                    root,
                    new[]
                    {
                        "nameid",
                        "sub",
                        "http://schemas.xmlsoap.org/ws/2005/05/identity/claims/nameidentifier",
                        "userId"
                    });

            var fullName =
                TryGetString(
                    root,
                    new[]
                    {
                        "name",
                        "fullName"
                    });

            var username =
                TryGetString(
                    root,
                    new[]
                    {
                        "username",
                        "preferred_username",
                        "given_name"
                    });

            var email =
                TryGetString(
                    root,
                    new[]
                    {
                        "email",
                        "emails"
                    });

            var role =
                TryGetString(
                    root,
                    new[]
                    {
                        "role",
                        "http://schemas.microsoft.com/ws/2008/06/identity/claims/role"
                    });

            if (string.IsNullOrWhiteSpace(userId))
                return null;

            return new CCT_USCF.Models.CurrentUser
            {
                Id =
                    Guid.TryParse(
                        userId,
                        out var parsedId)
                        ? parsedId
                        : Guid.Empty,

                FullName =
                    fullName ??
                    username ??
                    "User",

                Username =
                    username ??
                    fullName ??
                    "user",

                Email =
                    email ??
                    string.Empty,

                Role =
                    role ??
                    "Member"
            };
        }
        catch
        {
            return null;
        }
    }

    // =========================================================
    // JSON HELPER
    // =========================================================

    private static string? TryGetString(
        JsonElement root,
        string[] keys)
    {
        foreach (var key in keys)
        {
            if (!root.TryGetProperty(
                    key,
                    out var value))
            {
                continue;
            }

            if (value.ValueKind ==
                JsonValueKind.String)
            {
                return value.GetString();
            }
        }

        return null;
    }

    // =========================================================
    // SIGN UP / LOGIN BUTTON
    // =========================================================

    private async void OnSignUpLoginClicked(
        object sender,
        EventArgs e)
    {
        try
        {
            var choice =
                await DisplayActionSheet(
                    "Sign In or Create Account",
                    "Cancel",
                    null,
                    "Login",
                    "Create Account");

            switch (choice)
            {
                case "Login":

                    await Shell.Current.GoToAsync(
                        nameof(Pages.LoginPage));

                    break;

                case "Create Account":

                    await Shell.Current.GoToAsync(
                        nameof(Pages.RegisterPage));

                    break;
            }
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine(
                $"[APP SHELL] Navigation error: {ex}");
        }
    }

    // =========================================================
    // PROFILE / LOGOUT
    // =========================================================

    private async void OnAuthProfileClicked(
        object sender,
        EventArgs e)
    {
        try
        {
            var choice =
                await DisplayActionSheet(
                    "Account",
                    "Cancel",
                    null,
                    "Profile",
                    "Logout");

            switch (choice)
            {
                case "Profile":

                    await Shell.Current.GoToAsync(
                        nameof(Pages.ProfilePage));

                    break;

                case "Logout":

                    await LogoutAsync();

                    break;
            }
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine(
                $"[APP SHELL] Account error: {ex}");
        }
    }

    // =========================================================
    // FIREBASE LOGOUT
    // =========================================================

    private async Task LogoutAsync()
    {
        try
        {
            var auth =
                MauiProgram.CreateAuthServiceForPages();

            await auth.LogoutAsync();
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine(
                $"[FIREBASE AUTH] Logout error: {ex}");
        }
        finally
        {
            // -------------------------------------------------
            // Clear only the local authenticated state.
            // Do NOT touch the Firebase region database.
            // -------------------------------------------------

            MauiProgram.SetCurrentUser(null);

            ShowUnauthenticatedState();

            await Shell.Current.GoToAsync(
                "//home");
        }
    }

    // =========================================================
    // UNAUTHENTICATED UI
    // =========================================================

    private void ShowUnauthenticatedState()
    {
        MainThread.BeginInvokeOnMainThread(() =>
        {
            SignUpLoginButton.IsVisible = true;
            AuthProfileButton.IsVisible = false;
        });
    }
}
