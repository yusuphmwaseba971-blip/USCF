using CCT_USCF.Pages;
using Microsoft.Maui.Storage;
using Microsoft.Maui.Controls;

namespace CCT_USCF;

public partial class AppShell : Shell
{
	public AppShell()
	{
		InitializeComponent();

		// Register application routes (include auth pages so navigation doesn't fail)
		Routing.RegisterRoute(nameof(BiblePage), typeof(BiblePage));
		Routing.RegisterRoute(nameof(PrayerPage), typeof(PrayerPage));
		Routing.RegisterRoute(nameof(CommunityPage), typeof(CommunityPage));
		Routing.RegisterRoute(nameof(ProfilePage), typeof(ProfilePage));
		Routing.RegisterRoute(nameof(SermonsPage), typeof(SermonsPage));
		Routing.RegisterRoute(nameof(EventsPage), typeof(EventsPage));
		Routing.RegisterRoute(nameof(GivingPage), typeof(GivingPage));

		// Settings and profile-related pages
		Routing.RegisterRoute(nameof(Pages.SettingsPage), typeof(Pages.SettingsPage));
		Routing.RegisterRoute(nameof(Pages.SavedVersesPage), typeof(Pages.SavedVersesPage));
		Routing.RegisterRoute(nameof(Pages.MyPrayerRequestsPage), typeof(Pages.MyPrayerRequestsPage));
		Routing.RegisterRoute(nameof(Pages.SavedSermonsPage), typeof(Pages.SavedSermonsPage));
		Routing.RegisterRoute(nameof(Pages.CreateHolyWordPage), typeof(Pages.CreateHolyWordPage));

		// Ensure login/register routes available under both the type name and short names used elsewhere
		Routing.RegisterRoute(nameof(Pages.LoginPage), typeof(Pages.LoginPage));
		Routing.RegisterRoute(nameof(Pages.RegisterPage), typeof(Pages.RegisterPage));
		Routing.RegisterRoute("login", typeof(Pages.LoginPage));
		Routing.RegisterRoute("register", typeof(Pages.RegisterPage));
		// Subscribe for authentication state changes (sent by LoginPage after successful login/logout)
		MauiProgram.AuthStateChanged += async () => await UpdateAuthUIAsync();
		// Initial UI update
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
			if (string.IsNullOrEmpty(token))
			{
				// Not authenticated
				SignUpLoginButton.IsVisible = true;
				AuthProfileButton.IsVisible = false;
				MauiProgram.SetCurrentUser(null);
				return;
			}
			// Try to load current user from backend
			var auth = MauiProgram.CreateAuthServiceForPages();
			try
			{
				var user = await auth.GetCurrentUserAsync();
				if (user == null)
				{
					// token invalid - clear it and treat as logged out
					try { SecureStorage.Default.Remove("uscf_token"); } catch {}
					SignUpLoginButton.IsVisible = true;
					AuthProfileButton.IsVisible = false;
					MauiProgram.SetCurrentUser(null);
					return;
				}

				// Authenticated
				MauiProgram.SetCurrentUser(user);
				SignUpLoginButton.IsVisible = false;
				AuthProfileButton.IsVisible = true;
			}
			catch (HttpRequestException httpEx)
			{
				// Network/server problem - do NOT remove token. Keep the stored token and show unauthenticated UI.
				System.Diagnostics.Debug.WriteLine($"UpdateAuthUIAsync network error: {httpEx.Message}");
				SignUpLoginButton.IsVisible = true;
				AuthProfileButton.IsVisible = false;
				// Keep MauiProgram.CurrentUser as-is (do not set to null here to avoid accidental erase), but show sign-in option
			}
			catch (Exception ex)
			{
				// Unexpected error - show auth UI but do not delete token here unless explicitly unauthorized earlier
				System.Diagnostics.Debug.WriteLine($"UpdateAuthUIAsync error: {ex}");
				SignUpLoginButton.IsVisible = true;
				AuthProfileButton.IsVisible = false;
			}
		}
		catch
		{
			// If SecureStorage fails for any reason, default to showing the auth button
			SignUpLoginButton.IsVisible = true;
		}	}

	private async void OnSignUpLoginClicked(object sender, EventArgs e)
	{
		// Let the user choose Login or Create Account, or navigate directly.
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
				try { SecureStorage.Default.Remove("uscf_token"); } catch {}
				MauiProgram.SetCurrentUser(null);
				MauiProgram.NotifyAuthChanged();
				await Shell.Current.GoToAsync("//home");
				break;
		}
	}
}
