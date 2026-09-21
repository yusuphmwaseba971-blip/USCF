
using CCT_USCF.Pages;
using CCT_USCF.Services;

namespace CCT_USCF;

public partial class AppShell : Shell
{
    private int _assistantOpening;

    public AppShell()
    {
        InitializeComponent();

        // =====================================================
        // ROUTES
        // =====================================================

        Routing.RegisterRoute(nameof(BiblePage), typeof(BiblePage));
        Routing.RegisterRoute(nameof(FullCommunityPage), typeof(FullCommunityPage));
        Routing.RegisterRoute(nameof(PrayerPage), typeof(PrayerPage));
        Routing.RegisterRoute(nameof(AddPrayerPage), typeof(AddPrayerPage));
        Routing.RegisterRoute(nameof(CommunityPage), typeof(CommunityPage));
        Routing.RegisterRoute(nameof(ProfilePage), typeof(ProfilePage));
        Routing.RegisterRoute(nameof(SermonsPage), typeof(SermonsPage));
        Routing.RegisterRoute(nameof(EventsPage), typeof(EventsPage));
        Routing.RegisterRoute(nameof(GivingPage), typeof(GivingPage));
        Routing.RegisterRoute(nameof(ChurchAnnouncementPage), typeof(ChurchAnnouncementPage));
        Routing.RegisterRoute(nameof(AnnouncementActivityPage), typeof(AnnouncementActivityPage));
        Routing.RegisterRoute(nameof(AnnouncementDetailPage), typeof(AnnouncementDetailPage));
        Routing.RegisterRoute(nameof(ScriptureComposerPage), typeof(ScriptureComposerPage));
        Routing.RegisterRoute(nameof(EncouragementComposerPage), typeof(EncouragementComposerPage));
        Routing.RegisterRoute(nameof(NoticeComposerPage), typeof(NoticeComposerPage));
        Routing.RegisterRoute(nameof(WorshipComposerPage), typeof(WorshipComposerPage));
        Routing.RegisterRoute(nameof(EventComposerPage), typeof(EventComposerPage));
        Routing.RegisterRoute(nameof(PrayerComposerPage), typeof(PrayerComposerPage));
        Routing.RegisterRoute(nameof(MediaViewerPage), typeof(MediaViewerPage));

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
            nameof(GroupChatPage),
            typeof(GroupChatPage));

        Routing.RegisterRoute(
            nameof(LoginPage),
            typeof(LoginPage));

        Routing.RegisterRoute(
            nameof(RegisterPage),
            typeof(RegisterPage));

        Routing.RegisterRoute(
            nameof(VerifyEmailPage),
            typeof(VerifyEmailPage));

        Routing.RegisterRoute(
            nameof(HelpSupportPage),
            typeof(HelpSupportPage));

        Routing.RegisterRoute(
            nameof(PrivacyPolicyPage),
            typeof(PrivacyPolicyPage));

        Routing.RegisterRoute(
            nameof(TermsOfUsePage),
            typeof(TermsOfUsePage));

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
        Navigating += OnShellNavigating;

        var assistant = MauiProgram.Services.GetRequiredService<ICctAssistantService>();
        assistant.EnabledChanged += OnAssistantEnabledChanged;
        UpdateAssistantVisibility();

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

    private void OnShellNavigating(object? sender, ShellNavigatingEventArgs e)
    {
        var auth = MauiProgram.CreateAuthServiceForPages();
        if (auth.CurrentEmail == null ||
            auth.IsCurrentUserEmailVerified ||
            e.Target.Location.OriginalString.Contains(
                nameof(VerifyEmailPage),
                StringComparison.OrdinalIgnoreCase))
        {
            return;
        }

        e.Cancel();
        MainThread.BeginInvokeOnMainThread(async () =>
        {
            if (Shell.Current.CurrentPage is not VerifyEmailPage)
                await Shell.Current.GoToAsync(nameof(VerifyEmailPage));
        });
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
                if (auth.HasAuthenticatedFirebaseUser)
                    ShowAuthenticatedState();
                else
                {
                    MauiProgram.SetCurrentUser(null);
                    ShowUnauthenticatedState();
                }
                return;
            }

            MauiProgram.SetCurrentUser(firebaseUser);
            _ = MauiProgram.Services.GetRequiredService<NotificationService>().SynchronizeTokenAsync();
            var authService = MauiProgram.CreateAuthServiceForPages();
            var isVerified = await authService.RefreshEmailVerificationAsync();
            var shell = Shell.Current;

            if (!isVerified &&
                shell is not null &&
                shell.CurrentPage is not VerifyEmailPage)
            {
                ShowUnauthenticatedState();
                await shell.GoToAsync(nameof(VerifyEmailPage));
                return;
            }

            ShowAuthenticatedState();
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine(
                $"[APP SHELL AUTH] {ex}");

            var auth = MauiProgram.CreateAuthServiceForPages();
            if (auth.HasAuthenticatedFirebaseUser)
            {
                if (!auth.IsCurrentUserEmailVerified &&
                    Shell.Current.CurrentPage is not VerifyEmailPage)
                    await Shell.Current.GoToAsync(nameof(VerifyEmailPage));
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

    private void OnAssistantEnabledChanged(object? sender, EventArgs e) =>
        MainThread.BeginInvokeOnMainThread(UpdateAssistantVisibility);

    private void UpdateAssistantVisibility()
    {
        AssistantButton.IsVisible =
            MauiProgram.Services.GetRequiredService<ICctAssistantService>().IsEnabled;
    }

    private async void OnAssistantClicked(object? sender, EventArgs e)
    {
        if (Interlocked.Exchange(ref _assistantOpening, 1) != 0)
            return;

        try
        {
            await MainThread.InvokeOnMainThreadAsync(async () =>
            {
                if (!MauiProgram.Services.GetRequiredService<ICctAssistantService>().IsEnabled ||
                    Navigation.ModalStack.Any(page => page is CctAssistantPage))
                {
                    return;
                }

                await Navigation.PushModalAsync(new CctAssistantPage(), animated: false);
            });
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine($"[USCF ASSISTANCE] navigation_failed {ex}");
        }
        finally
        {
            Volatile.Write(ref _assistantOpening, 0);
        }
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
