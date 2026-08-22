namespace CCT_USCF.Pages;

public partial class HomePage : ContentPage
{
    public HomePage()
    {
        InitializeComponent();
    }

    private async void OpenWelcome(object? sender, TappedEventArgs e)
    {
        await Shell.Current.GoToAsync(nameof(ProfilePage));
    }

    private async void OpenBible(object? sender, TappedEventArgs e)
    {
        await Shell.Current.GoToAsync(nameof(BiblePage));
    }

    private async void OpenPrayer(object? sender, TappedEventArgs e)
    {
        await Shell.Current.GoToAsync(nameof(PrayerPage));
    }

    private async void OpenSermons(object? sender, TappedEventArgs e)
    {
        await Shell.Current.GoToAsync(nameof(SermonsPage));
    }

    private async void OpenEvents(object? sender, TappedEventArgs e)
    {
        await Shell.Current.GoToAsync(nameof(EventsPage));
    }

    private async void OpenGiving(object? sender, TappedEventArgs e)
    {
        await Shell.Current.GoToAsync(nameof(GivingPage));
    }

    private async void OpenCommunity(object? sender, TappedEventArgs e)
    {
        await Shell.Current.GoToAsync(nameof(CommunityPage));
    }

    private async void OpenProfile(object? sender, TappedEventArgs e)
    {
        await Shell.Current.GoToAsync(nameof(ProfilePage));
    }
}
