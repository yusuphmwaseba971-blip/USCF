
using CCT_USCF.Pages;
using CCT_USCF.Services;

namespace CCT_USCF;

public partial class AppShell : Shell
{
    public AppShell()
    {
        InitializeComponent();

        // =====================================================
        // ROUTES
        // =====================================================

        Routing.RegisterRoute(nameof(BiblePage), typeof(BiblePage));
        Routing.RegisterRoute(nameof(PrayerPage), typeof(PrayerPage));
        Routing.RegisterRoute(nameof(CommunityPage), typeof(CommunityPage));
        Routing.RegisterRoute(nameof(ProfilePage), typeof(ProfilePage));
        Routing.RegisterRoute(nameof(SermonsPage), typeof(SermonsPage));
        Routing.RegisterRoute(nameof(EventsPage), typeof(EventsPage));
        Routing.RegisterRoute(nameof(GivingPage), typeof(GivingPage));

        Routing.RegisterRoute(
            nameof(SettingsPage),
            typeof(SettingsPage));

        Routing.RegisterRoute(
            nameof(SavedVersesPage),
            typeof(SavedVersesPage));

        Routing.RegisterRoute(
            nameof(MyPrayerRequestsPage),
            typeof(MyPrayerRequestsPage));

        Routing.RegisterRoute(
            nameof(SavedSermonsPage),
            typeof(SavedSermonsPage));

        Routing.RegisterRoute(
            nameof(CreateHolyWordPage),
            typeof(CreateHolyWordPage));

        Routing.RegisterRoute(
            nameof(ChurchGroupSelectionPage),
            typeof(ChurchGroupSelectionPage));

        Routing.RegisterRoute(
            nameof(BranchChatPage),
            typeof(BranchChatPage));

        Routing.RegisterRoute(
            nameof(LoginPage),
            typeof(LoginPage));

        Routing.RegisterRoute(
            nameof(RegisterPage),
            typeof(RegisterPage));

        Routing.RegisterRoute(
            "login",
            typeof(LoginPage));

        Routing.RegisterRoute(
            "register",
            typeof(RegisterPage));

        // =====================================================
        // FIREBASE AUTH STATE
        // =====================================================

        MauiProgram.AuthStateChanged +=
            OnAuthStateChanged;

        // Check current Firebase session.
        _ = UpdateAuthUIAsync();
    }

    // =========================================================
    // PAGE APPEARING
    // =========================================================

    protected override void OnAppearing()
    {
        base.OnAppearing();

        _ = UpdateAuthUIAsync();
    }

    // =========================================================
    // FIREBASE AUTH STATE CHANGED
    // =========================================================

    private int _authUiUpdateInProgress;

    private async void OnAuthStateChanged()
    {
        await UpdateAuthUIAsync();
    }

    // =========================================================
    // UPDATE AUTHENTICATION UI
    // =========================================================

    private async Task UpdateAuthUIAsync()
    {
        if (Interlocked.Exchange(ref _authUiUpdateInProgress, 1) == 1)
            return;

        try
        {
            var auth =
                MauiProgram.CreateAuthServiceForPages();

            var firebaseUser =
                await auth.GetCurrentUserAsync();

            if (firebaseUser == null)
            {
                MauiProgram.SetCurrentUser(null);
                ShowUnauthenticatedState();
                return;
            }

            MauiProgram.SetCurrentUser(firebaseUser);
            ShowAuthenticatedState();
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine(
                $"[APP SHELL AUTH] {ex}");

            if (MauiProgram.CurrentUser != null)
            {
                ShowAuthenticatedState();
            }
            else
            {
                ShowUnauthenticatedState();
            }
        }
        finally
        {
            Interlocked.Exchange(ref _authUiUpdateInProgress, 0);
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

    private void ShowUnauthenticatedState()
    {
        MainThread.BeginInvokeOnMainThread(() =>
        {
            SignUpLoginButton.IsVisible = true;
            AuthProfileButton.IsVisible = false;
        });
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
                        nameof(LoginPage));

                    break;

                case "Create Account":

                    await Shell.Current.GoToAsync(
                        nameof(RegisterPage));

                    break;
            }
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine(
                $"[APP SHELL] Navigation error: {ex}");

            await DisplayAlert(
                "Error",
                "Unable to open the requested page.",
                "OK");
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
                        nameof(ProfilePage));

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

            await DisplayAlert(
                "Error",
                "Unable to complete the account action.",
                "OK");
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

            MauiProgram.SetCurrentUser(null);

            ShowUnauthenticatedState();

            await Shell.Current.GoToAsync(
                "//home");
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine(
                $"[FIREBASE LOGOUT] {ex}");

            await DisplayAlert(
                "Logout Error",
                "Unable to sign out. Please try again.",
                "OK");
        }
    }
}
