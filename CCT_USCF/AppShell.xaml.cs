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

		// Ensure login/register routes available under both the type name and short names used elsewhere
		Routing.RegisterRoute(nameof(Pages.LoginPage), typeof(Pages.LoginPage));
		Routing.RegisterRoute(nameof(Pages.RegisterPage), typeof(Pages.RegisterPage));
		Routing.RegisterRoute("login", typeof(Pages.LoginPage));
		Routing.RegisterRoute("register", typeof(Pages.RegisterPage));
		// Subscribe for authentication state changes (sent by LoginPage after successful login)
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
			var token = await SecureStorage.Default.GetAsync("uscf_token");
			// Show Sign Up / Login only when not authenticated
			SignUpLoginButton.IsVisible = string.IsNullOrEmpty(token);
		}
		catch
		{
			// If SecureStorage fails for any reason, default to showing the auth button
			SignUpLoginButton.IsVisible = true;
		}
	}

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
}
