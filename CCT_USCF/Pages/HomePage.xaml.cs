using Plugin.Firebase.CloudMessaging;

namespace CCT_USCF.Pages;

public partial class HomePage : ContentPage
{
    private readonly CCT_USCF.Services.AppAppearanceService _appearance;

    public HomePage()
    {
        InitializeComponent();
        _appearance = MauiProgram.Services.GetRequiredService<CCT_USCF.Services.AppAppearanceService>();
        _appearance.AppearanceChanged += OnAppearanceChanged;
    }

    protected override void OnAppearing()
    {
        base.OnAppearing();
        _ = LoadBibleFeedAsync();
        _ = LoadNationalFeedAsync();
        _ = RefreshUnreadCountAsync();
        _ = RegisterMessagingTokenAsync();
        ApplyAppearance();
    }

    private void OnAppearanceChanged(object? sender, EventArgs e) => MainThread.BeginInvokeOnMainThread(ApplyAppearance);
    private void ApplyAppearance() => BackgroundColor = _appearance.BackgroundColor;

    protected override void OnDisappearing()
    {
        base.OnDisappearing();
        _appearance.AppearanceChanged -= OnAppearanceChanged;
    }

    private async Task RefreshUnreadCountAsync()
    {
        try
        {
            var service = MauiProgram.Services.GetRequiredService<CCT_USCF.Services.ChurchAnnouncementService>();
            var count = await service.GetUnreadCountAsync();
            UnreadBadge.IsVisible = count > 0;
            UnreadCountLabel.Text = count > 99 ? "99+" : count.ToString();
        }
        catch (Exception ex) { System.Diagnostics.Debug.WriteLine($"RefreshUnreadCountAsync error: {ex}"); }
    }

    private async void OpenNotifications(object? sender, TappedEventArgs e)
        => await Shell.Current.GoToAsync(nameof(AnnouncementActivityPage));

    private async void OpenSettings(object? sender, EventArgs e)
        => await Shell.Current.GoToAsync(nameof(SettingsPage));

    private async Task RegisterMessagingTokenAsync()
    {
        try
        {
            var token = await CrossFirebaseCloudMessaging.Current.GetTokenAsync();
            if (!string.IsNullOrWhiteSpace(token))
                await MauiProgram.Services.GetRequiredService<CCT_USCF.Services.ChurchAnnouncementService>()
                    .RegisterTokenAsync(token);
        }
        catch (Exception ex) { System.Diagnostics.Debug.WriteLine($"RegisterMessagingTokenAsync error: {ex}"); }
    }

    private async Task LoadNationalFeedAsync()
    {
        try
        {
            var community = MauiProgram.Services.GetRequiredService<CCT_USCF.Services.CommunityService>();
            NationalFeedStack.Children.Clear();
            foreach (var post in await community.GetNationalPostsAsync(10))
            {
                var card = new Border { BackgroundColor = Colors.White, Padding = 12 };
                var stack = new VerticalStackLayout { Spacing = 5 };
                stack.Children.Add(new Label { Text = $"🌍 {post.AuthorName}", FontAttributes = FontAttributes.Bold, TextColor = Color.FromArgb("#167A4A") });
                var location = string.Join(" · ", new[] { post.AuthorRegionName, post.AuthorDistrictName, post.AuthorBranchName }.Where(x => !string.IsNullOrWhiteSpace(x)));
                if (!string.IsNullOrWhiteSpace(location)) stack.Children.Add(new Label { Text = location, FontSize = 12, TextColor = Colors.Gray });
                if (!string.IsNullOrWhiteSpace(post.Title)) stack.Children.Add(new Label { Text = post.Title, FontAttributes = FontAttributes.Bold });
                if (!string.IsNullOrWhiteSpace(post.Content)) stack.Children.Add(new Label { Text = post.Content });
                if (!string.IsNullOrWhiteSpace(post.ImageUrl)) stack.Children.Add(new Image { Source = post.ImageUrl, HeightRequest = 180, Aspect = Aspect.AspectFit });
                stack.Children.Add(new Label { Text = $"{post.CreatedAtUtc.ToLocalTime():g}  •  ❤️ {post.LikeCount}  💬 {post.CommentCount}", FontSize = 12, TextColor = Colors.Gray });
                card.Content = stack; NationalFeedStack.Children.Add(card);
            }
        }
        catch (Exception ex) { System.Diagnostics.Debug.WriteLine($"LoadNationalFeedAsync error: {ex}"); }
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
