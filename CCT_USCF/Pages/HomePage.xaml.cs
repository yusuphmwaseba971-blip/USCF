using Plugin.Firebase.CloudMessaging;
using CCT_USCF.Models;

namespace CCT_USCF.Pages;

public partial class HomePage : ContentPage
{
    private readonly CCT_USCF.Services.AppAppearanceService _appearance;
    private bool _shortcutsOpen;

    public HomePage()
    {
        InitializeComponent();
        _appearance = MauiProgram.Services.GetRequiredService<CCT_USCF.Services.AppAppearanceService>();
        _appearance.AppearanceChanged += OnAppearanceChanged;
    }

    protected override void OnAppearing()
    {
        base.OnAppearing();
        _ = LoadDashboardAsync();
        _ = LoadBibleFeedAsync();
        _ = LoadNationalFeedAsync();
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

    private async Task LoadDashboardAsync()
    {
        await Task.WhenAll(
            LoadUserContextAsync(),
            LoadAnnouncementsAsync(),
            LoadPrayerSummaryAsync(),
            LoadActivitySummaryAsync());
    }

    private async Task LoadUserContextAsync()
    {
        try
        {
            var user = MauiProgram.CurrentUser ??
                await MauiProgram.CreateAuthServiceForPages().GetCurrentUserAsync();

            if (user is null)
            {
                GreetingLabel.Text = GetGreeting("WELCOME BACK");
                UserNameLabel.Text = "Your USCF community is active today.";
                ChurchContextLabel.Text = "Sign in to see your church context.";
                MyChurchLabel.Text = "Church context unavailable";
                return;
            }

            MauiProgram.SetCurrentUser(user);
            var displayName = string.IsNullOrWhiteSpace(user.FullName) ? user.Username : user.FullName;
            GreetingLabel.Text = GetGreeting(displayName);
            UserNameLabel.Text = $"Good to see you, {displayName}.";
            var context = FirstNonEmpty(user.Branch, user.District, user.Region, user.Organization);
            ChurchContextLabel.Text = string.IsNullOrWhiteSpace(context)
                ? "Your USCF community is active today."
                : context;
            MyChurchLabel.Text = string.IsNullOrWhiteSpace(context) ? "USCF community" : context;
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine($"[HOME_PROFILE] {ex}");
        }
    }

    private async Task LoadAnnouncementsAsync()
    {
        try
        {
            var service = MauiProgram.Services.GetRequiredService<CCT_USCF.Services.ChurchAnnouncementService>();
            var notifications = await service.GetNotificationsAsync();
            var count = notifications.Count(notification => !notification.IsRead);
            UnreadBadge.IsVisible = count > 0;
            UnreadCountLabel.Text = count > 99 ? "99+" : count.ToString();
            AnnouncementsCountLabel.Text = count.ToString();

            var latest = notifications.OrderByDescending(notification => notification.CreatedAtUtc).FirstOrDefault();
            if (latest is not null)
            {
                LatestAnnouncementTitleLabel.Text = latest.Title;
                LatestAnnouncementMessageLabel.Text = latest.Message;
                LatestAnnouncementMetaLabel.Text =
                    $"{latest.CreatedAtUtc.ToLocalTime():g}  ·  View announcement  ›";
            }
        }
        catch (Exception ex)
        {
            AnnouncementsCountLabel.Text = "—";
            LatestAnnouncementTitleLabel.Text = "Announcements temporarily unavailable";
            LatestAnnouncementMessageLabel.Text = "Please try again later.";
            System.Diagnostics.Debug.WriteLine($"[HOME_ANNOUNCEMENTS] {ex}");
        }
    }

    private async Task LoadPrayerSummaryAsync()
    {
        try
        {
            var service = MauiProgram.Services.GetRequiredService<CCT_USCF.Services.PrayerService>();
            var prayers = await service.GetInitialPrayersAsync();
            PrayerCountLabel.Text = prayers.Count.ToString();
            var prayer = prayers.FirstOrDefault();
            PrayerPreviewLabel.Text = prayer is null
                ? "No prayer requests are available right now."
                : $"“{TrimForPreview(prayer.Content)}”";
        }
        catch (Exception ex)
        {
            PrayerCountLabel.Text = "—";
            PrayerPreviewLabel.Text = "Prayer requests temporarily unavailable.";
            System.Diagnostics.Debug.WriteLine($"[HOME_PRAYER] {ex}");
        }
    }

    private async Task LoadActivitySummaryAsync()
    {
        try
        {
            var service = MauiProgram.Services.GetRequiredService<CCT_USCF.Services.CommunityService>();
            var events = await service.GetNationalEventsAsync();
            ActivityCountLabel.Text = events.Count.ToString();
            EventsCountLabel.Text = events.Count.ToString();
            EventsPreviewLabel.Text = events.Count == 0
                ? "No upcoming church activity available."
                : $"{events.Count} community activities available. Open Events to view them.";
        }
        catch (Exception ex)
        {
            ActivityCountLabel.Text = "—";
            EventsCountLabel.Text = "—";
            EventsPreviewLabel.Text = "Church activity temporarily unavailable.";
            System.Diagnostics.Debug.WriteLine($"[HOME_ACTIVITY] {ex}");
        }
    }

    private async void OpenNotifications(object? sender, TappedEventArgs e)
        => await Shell.Current.GoToAsync(nameof(AnnouncementActivityPage));

    private async void OpenSettings(object? sender, EventArgs e)
        => await Shell.Current.GoToAsync(nameof(SettingsPage));

    private async Task RegisterMessagingTokenAsync()
    {
        try
        {
            await CCT_USCF.Services.FirebaseInit.Initialized;
            if (MauiProgram.CurrentUser is null)
            {
                var currentUser = await MauiProgram.CreateAuthServiceForPages().GetCurrentUserAsync();
                if (currentUser is not null)
                    MauiProgram.SetCurrentUser(currentUser);
            }
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

    private async void OpenChurch(object? sender, TappedEventArgs e)
        => await Shell.Current.GoToAsync(nameof(ChurchGroupSelectionPage));

    private async void OpenChurchButton(object? sender, EventArgs e)
        => await Shell.Current.GoToAsync(nameof(ChurchGroupSelectionPage));

    private async void OpenPrayerButton(object? sender, EventArgs e)
        => await Shell.Current.GoToAsync(nameof(PrayerPage));

    private async void OpenNotificationsButton(object? sender, EventArgs e)
        => await OpenNotificationsAsync();

    private async void OpenEventsButton(object? sender, EventArgs e)
        => await Shell.Current.GoToAsync(nameof(EventsPage));

    private async void OpenSermonsButton(object? sender, EventArgs e)
        => await Shell.Current.GoToAsync(nameof(SermonsPage));

    private async void OpenGivingButton(object? sender, EventArgs e)
        => await Shell.Current.GoToAsync(nameof(GivingPage));

    private async Task OpenNotificationsAsync()
        => await Shell.Current.GoToAsync(nameof(AnnouncementActivityPage));

    private void ToggleShortcuts(object? sender, EventArgs e)
    {
        _shortcutsOpen = !_shortcutsOpen;
        ShortcutPanel.IsVisible = _shortcutsOpen;
        ShortcutButton.Text = _shortcutsOpen ? "×" : "＋";
        SemanticProperties.SetDescription(
            ShortcutButton,
            _shortcutsOpen ? "Close quick shortcuts" : "Open quick shortcuts");
    }

    private static string GetGreeting(string name)
    {
        var greeting = DateTime.Now.Hour switch
        {
            < 12 => "GOOD MORNING",
            < 18 => "GOOD AFTERNOON",
            _ => "GOOD EVENING"
        };
        return $"{greeting}, {name.ToUpperInvariant()} 👋";
    }

    private static string FirstNonEmpty(params string?[] values)
        => values.FirstOrDefault(value => !string.IsNullOrWhiteSpace(value))?.Trim() ?? string.Empty;

    private static string TrimForPreview(string content)
    {
        var normalized = content.Trim();
        return normalized.Length <= 140 ? normalized : $"{normalized[..137]}...";
    }
}
