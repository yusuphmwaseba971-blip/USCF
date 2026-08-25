namespace CCT_USCF.Pages;

public partial class HomePage : ContentPage
{
    public HomePage()
    {
        InitializeComponent();
    }

    protected override void OnAppearing()
    {
        base.OnAppearing();
        _ = LoadBibleFeedAsync();
    }

    private async Task LoadBibleFeedAsync()
    {
        try
        {
            var community = (CCT_USCF.Services.CommunityService)MauiProgram.Services.GetService(typeof(CCT_USCF.Services.CommunityService))!;
            var bibleService = (CCT_USCF.Services.BibleService)MauiProgram.Services.GetService(typeof(CCT_USCF.Services.BibleService))!;
            var posts = await community.GetBiblePostsAsync(20);
            BibleFeedStack.Children.Clear();
            foreach (var p in posts)
            {
                var resolved = await bibleService.ResolveBiblePostAsync(p);
                var frame = new Frame { BackgroundColor = Colors.White, Padding = 12, CornerRadius = 12, HasShadow = false };
                var vs = new VerticalStackLayout { Spacing = 6 };
                vs.Children.Add(new Label { Text = $"📖 {resolved.BookDisplay} {resolved.Chapter}:{resolved.VerseStart}" , FontAttributes = FontAttributes.Bold, TextColor = Colors.Black });
                vs.Children.Add(new Label { Text = resolved.PassageText, TextColor = Colors.DarkSlateGray });
                vs.Children.Add(new Label { Text = $"Posted: {resolved.CreatedAtUtc.ToLocalTime():g}", FontSize = 12, TextColor = Colors.Gray });
                frame.Content = vs;
                BibleFeedStack.Children.Add(frame);
            }
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine($"LoadBibleFeedAsync error: {ex.Message}");
        }
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
