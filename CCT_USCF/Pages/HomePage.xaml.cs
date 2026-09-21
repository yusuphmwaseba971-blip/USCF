using System.Diagnostics;
using CCT_USCF.Models;
using CCT_USCF.Services;
using Microsoft.Maui.Controls.Shapes;

namespace CCT_USCF.Pages;

public partial class HomePage : ContentPage
{
    private static readonly long StartupTimestamp = Stopwatch.GetTimestamp();
    private static readonly TimeSpan CctPostsFreshnessWindow = TimeSpan.FromMinutes(10);
    private readonly CCT_USCF.Services.AppAppearanceService _appearance;
    private readonly CCT_USCF.Services.ChurchAnnouncementService _announcements;
    private readonly SemaphoreSlim _cctPostsLoadGate = new(1, 1);

    public HomePage()
    {
        InitializeComponent();
        _appearance = MauiProgram.Services.GetRequiredService<CCT_USCF.Services.AppAppearanceService>();
        _announcements = MauiProgram.Services.GetRequiredService<CCT_USCF.Services.ChurchAnnouncementService>();
        _appearance.AppearanceChanged += OnAppearanceChanged;
        _announcements.AnnouncementsChanged += OnAnnouncementsChanged;
    }

    protected override void OnAppearing()
    {
        base.OnAppearing();
        System.Diagnostics.Debug.WriteLine(
            $"[STARTUP] Home first render requested after {Stopwatch.GetElapsedTime(StartupTimestamp).TotalMilliseconds:F0} ms");
        CommunityService.CctPostCreated -= OnCctPostCreated;
        _announcements.AnnouncementsChanged -= OnAnnouncementsChanged;
        CommunityService.CctPostCreated += OnCctPostCreated;
        _announcements.AnnouncementsChanged -= OnAnnouncementsChanged;
        _announcements.AnnouncementsChanged += OnAnnouncementsChanged;
        _ = LoadDashboardAsync();
        _ = LoadBibleFeedAsync();
        _ = LoadNationalFeedAsync();
        _ = LoadCctPostsAsync();
        ApplyAppearance();
    }

    private void OnAppearanceChanged(object? sender, EventArgs e) => MainThread.BeginInvokeOnMainThread(ApplyAppearance);
    private void ApplyAppearance() => BackgroundColor = _appearance.BackgroundColor;
    private async void OnCctPostCreated(object? sender, EventArgs e) => await LoadCctPostsAsync(true);

    protected override void OnDisappearing()
    {
        base.OnDisappearing();
        _appearance.AppearanceChanged -= OnAppearanceChanged;
        CommunityService.CctPostCreated -= OnCctPostCreated;
        _announcements.AnnouncementsChanged -= OnAnnouncementsChanged;
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
            var notifications = await _announcements.GetNotificationsAsync();
            ApplyAnnouncementSummary(notifications);
        }
        catch (Exception ex)
        {
            AnnouncementsCountLabel.Text = "—";
            LatestAnnouncementTitleLabel.Text = "Announcements temporarily unavailable";
            LatestAnnouncementMessageLabel.Text = "Please try again later.";
            System.Diagnostics.Debug.WriteLine($"[HOME_ANNOUNCEMENTS] {ex}");
        }
    }

    private async void OnAnnouncementsChanged(object? sender, EventArgs e)
    {
        await MainThread.InvokeOnMainThreadAsync(async () =>
        {
            try
            {
                ApplyAnnouncementSummary(await _announcements.GetCachedNotificationsAsync());
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine($"[HOME_ANNOUNCEMENTS_CACHE] {ex}");
            }
        });
    }

    private void ApplyAnnouncementSummary(IReadOnlyList<ChurchNotification> notifications)
    {
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
                if (!string.IsNullOrWhiteSpace(post.ImageUrl))
                {
                    var image = new Image { Source = post.ImageUrl, HeightRequest = 180, Aspect = Aspect.AspectFit };
                    var tap = new TapGestureRecognizer();
                    tap.Tapped += async (_, _) =>
                    {
                        var viewer = MauiProgram.Services.GetRequiredService<MediaViewerService>();
                        await viewer.OpenMediaAsync(post.ImageUrl, "image");
                    };
                    image.GestureRecognizers.Add(tap);
                    stack.Children.Add(image);
                }

                AddFeedMediaButtons(stack, post);
                stack.Children.Add(new Label { Text = $"{post.CreatedAtUtc.ToLocalTime():g}  •  ❤️ {post.LikeCount}  💬 {post.CommentCount}", FontSize = 12, TextColor = Colors.Gray });
                card.Content = stack; NationalFeedStack.Children.Add(card);
            }
        }
        catch (Exception ex) { System.Diagnostics.Debug.WriteLine($"LoadNationalFeedAsync error: {ex}"); }
    }

    private async void RefreshCctPosts(object? sender, TappedEventArgs e)
        => await LoadCctPostsAsync(true);

    private async Task LoadCctPostsAsync(bool forceRefresh = false)
    {
        await _cctPostsLoadGate.WaitAsync();
        try
        {
            var service = MauiProgram.Services.GetRequiredService<CommunityService>();
            var cachedPosts = await service.GetCachedPublishedCctPostsAsync(8);
            System.Diagnostics.Debug.WriteLine($"[PLUS CACHE] loaded {cachedPosts.Count} posts from SQLite");
            RenderCctPosts(cachedPosts, cachedPosts.Count == 0 ? "Loading posts..." : null);

            var shouldSync = forceRefresh ||
                await service.ShouldSyncCctPostsAsync(CctPostsFreshnessWindow);
            if (!shouldSync)
            {
                System.Diagnostics.Debug.WriteLine("[PLUS SYNC] skipped because cache is fresh");
                return;
            }

            var posts = await service.GetPublishedCctPostsAsync(8, forceRefresh);
            System.Diagnostics.Debug.WriteLine($"[PLUS UI] rendering {posts.Count} posts");
            RenderCctPosts(posts, posts.Count == 0
                ? cachedPosts.Count == 0 ? "No posts available yet." : null
                : null);
        }
        catch (Exception ex)
        {
            CctPostsStateLabel.Text = "No posts available offline.";
            System.Diagnostics.Debug.WriteLine($"[HOME_CCT_POSTS] {ex}");
        }
        finally
        {
            _cctPostsLoadGate.Release();
        }
    }

    private void RenderCctPosts(IReadOnlyList<CCT_USCF.Models.CctPost> posts, string? stateOverride)
    {
        CctPostsStack.Children.Clear();
        CctPostsStateLabel.Text = stateOverride ??
            $"{posts.Count} published post{(posts.Count == 1 ? string.Empty : "s")}";

        foreach (var post in posts)
        {
            var card = new Border
            {
                BackgroundColor = Color.FromArgb("#FFFEFA"),
                Stroke = Color.FromArgb("#E4D7B4"),
                StrokeThickness = 1,
                StrokeShape = new RoundRectangle { CornerRadius = new CornerRadius(22) },
                Padding = new Thickness(16, 15)
            };
            card.Shadow = new Shadow
            {
                Brush = Color.FromArgb("#243B2A"),
                Offset = new Point(0, 4),
                Radius = 14,
                Opacity = 0.12f
            };
            var body = new VerticalStackLayout { Spacing = 11 };
            var category = GetPlusCategory(post.PostType);
            var header = new Grid { ColumnDefinitions = new ColumnDefinitionCollection
            {
                new ColumnDefinition(GridLength.Star),
                new ColumnDefinition(GridLength.Auto)
            }};
            header.Children.Add(new Border
            {
                BackgroundColor = category.Color,
                StrokeThickness = 0,
                StrokeShape = new RoundRectangle { CornerRadius = new CornerRadius(12) },
                Padding = new Thickness(10, 5),
                Content = new Label
                {
                    Text = category.Label,
                    FontSize = 11,
                    FontAttributes = FontAttributes.Bold,
                    TextColor = Colors.White
                }
            });
            var sourceLabel = new Label
            {
                Text = "USCF COMMUNITY",
                FontSize = 10,
                FontAttributes = FontAttributes.Bold,
                CharacterSpacing = 1.2,
                TextColor = Color.FromArgb("#8B7650"),
                VerticalOptions = LayoutOptions.Center
            };
            Grid.SetColumn(sourceLabel, 1);
            header.Children.Add(sourceLabel);
            body.Children.Add(header);

            if (!string.IsNullOrWhiteSpace(post.Content))
            {
                body.Children.Add(new Label
                {
                    Text = post.Content,
                    FontSize = 16,
                    LineHeight = 1.25,
                    MaxLines = 7,
                    TextColor = Color.FromArgb("#173323")
                });
            }

            AddCctPostMedia(body, post);
            body.Children.Add(new Label
            {
                Text = $"Posted {post.CreatedAtUtc.ToLocalTime():MMM d, yyyy · h:mm tt}",
                FontSize = 11,
                TextColor = Color.FromArgb("#8B7650")
            });
            card.Content = body;
            CctPostsStack.Children.Add(card);
        }
    }

    private static void AddCctPostMedia(VerticalStackLayout body, CCT_USCF.Models.CctPost post)
    {
        if (string.IsNullOrWhiteSpace(post.MediaUrl))
            return;

        var mediaType = post.MediaType.Trim().ToLowerInvariant();
        var viewer = MauiProgram.Services.GetRequiredService<MediaViewerService>();
        if (mediaType.StartsWith("image", StringComparison.Ordinal))
        {
            var image = new Image
            {
                Source = post.MediaUrl,
                HeightRequest = 170,
                Aspect = Aspect.AspectFit
            };
            var tap = new TapGestureRecognizer();
            tap.Tapped += async (_, _) => await viewer.OpenMediaAsync(post.MediaUrl, "image");
            image.GestureRecognizers.Add(tap);
            body.Children.Add(image);
            return;
        }

        var viewerType = mediaType.StartsWith("video", StringComparison.Ordinal)
            ? "video"
            : mediaType.StartsWith("audio", StringComparison.Ordinal)
                ? "audio"
                : "pdf";
        var button = new Button
        {
            Text = viewerType switch
            {
                "video" => "▶ Open video",
                "audio" => "▶ Open audio",
                _ => "↗ Open document"
            },
            BackgroundColor = Color.FromArgb("#EAF7EE"),
            TextColor = Color.FromArgb("#167A4A")
        };
        button.Clicked += async (_, _) =>
            await viewer.OpenMediaAsync(post.MediaUrl, viewerType);
        body.Children.Add(button);
    }

    private static (string Label, Color Color) GetPlusCategory(string postType)
        => postType.Trim().ToLowerInvariant() switch
        {
            "scripture" => ("📖 SCRIPTURE", Color.FromArgb("#17315F")),
            "encouragement" => ("💬 ENCOURAGEMENT", Color.FromArgb("#38216B")),
            "worship" => ("🎵 WORSHIP", Color.FromArgb("#123B73")),
            "prayer" => ("🙏 PRAYER", Color.FromArgb("#167A4A")),
            "notice" => ("📢 NOTICE", Color.FromArgb("#684400")),
            "event" => ("📅 EVENT", Color.FromArgb("#167A4A")),
            _ => (string.IsNullOrWhiteSpace(postType) ? "POST" : postType.Trim().ToUpperInvariant(), Color.FromArgb("#167A4A"))
        };

    private static void AddFeedMediaButtons(
        VerticalStackLayout stack,
        CCT_USCF.Models.NationalCommunityPost post)
    {
        var viewer = MauiProgram.Services.GetRequiredService<MediaViewerService>();
        if (!string.IsNullOrWhiteSpace(post.VideoUrl))
        {
            var button = new Button { Text = "▶ Play video", BackgroundColor = Color.FromArgb("#1E40AF"), TextColor = Colors.White };
            button.Clicked += async (_, _) => await viewer.OpenMediaAsync(post.VideoUrl, "video");
            stack.Children.Add(button);
        }
        if (!string.IsNullOrWhiteSpace(post.AudioUrl))
        {
            var button = new Button { Text = "▶ Play audio", BackgroundColor = Color.FromArgb("#0F766E"), TextColor = Colors.White };
            button.Clicked += async (_, _) => await viewer.OpenMediaAsync(post.AudioUrl, "audio");
            stack.Children.Add(button);
        }
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

    private async void OpenShareAndServe(object? sender, TappedEventArgs e)
        => await OpenShareAndServeAsync();

    private async void CloseShareAndServe(object? sender, EventArgs e)
        => await CloseShareAndServeAsync();

    private async Task OpenShareAndServeAsync()
    {
        if (ShareServeOverlay.IsVisible) return;
        ShortcutPanel.IsVisible = false;
        ShortcutButton.Text = "×";
        ShareServeOverlay.Opacity = 0;
        ShareServeOverlay.IsVisible = true;
        await ShareServeOverlay.FadeTo(1, 180, Easing.CubicOut);
    }

    private async Task CloseShareAndServeAsync()
    {
        if (!ShareServeOverlay.IsVisible) return;
        await ShareServeOverlay.FadeTo(0, 140, Easing.CubicIn);
        ShareServeOverlay.IsVisible = false;
        ShortcutButton.Text = "＋";
    }

    private async Task OpenComposerAsync(string route)
    {
        await CloseShareAndServeAsync();
        await Shell.Current.GoToAsync(route);
    }

    private async void OpenScriptureComposer(object? sender, EventArgs e) => await OpenComposerAsync(nameof(ScriptureComposerPage));
    private async void OpenPrayerFromShare(object? sender, EventArgs e) => await OpenComposerAsync(nameof(PrayerComposerPage));
    private async void OpenEncouragementComposer(object? sender, EventArgs e) => await OpenComposerAsync(nameof(EncouragementComposerPage));
    private async void OpenNoticeComposer(object? sender, EventArgs e) => await OpenComposerAsync(nameof(NoticeComposerPage));
    private async void OpenWorshipComposer(object? sender, EventArgs e) => await OpenComposerAsync(nameof(WorshipComposerPage));
    private async void OpenEventComposer(object? sender, EventArgs e) => await OpenComposerAsync(nameof(EventComposerPage));

    private async Task OpenNotificationsAsync()
        => await Shell.Current.GoToAsync(nameof(AnnouncementActivityPage));

    private void ToggleShortcuts(object? sender, EventArgs e)
    {
        if (ShareServeOverlay.IsVisible)
        {
            _ = CloseShareAndServeAsync();
            return;
        }
        _ = OpenShareAndServeAsync();
        SemanticProperties.SetDescription(
            ShortcutButton,
            "Open Share and Serve");
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
