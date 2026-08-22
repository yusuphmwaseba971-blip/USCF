using CCT_USCF.Pages;

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
	}

	private async void OnLoginClicked(object sender, EventArgs e)
	{
		await Shell.Current.GoToAsync(nameof(Pages.LoginPage));
	}

	private async void OnCreateAccountClicked(object sender, EventArgs e)
	{
		await Shell.Current.GoToAsync(nameof(Pages.RegisterPage));
	}
}

