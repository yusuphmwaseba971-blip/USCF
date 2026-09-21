using CCT_USCF.Models;
using CCT_USCF.Services;
using Microsoft.Maui.Controls.Shapes;

namespace CCT_USCF.Pages;

[QueryProperty(nameof(PostId), "postId")]
public partial class FullCommunityPage : ContentPage
{
    private readonly CommunityService _community;
    private readonly MediaViewerService _mediaViewer;
    private FileResult? _attachment;
    private string _postId = string.Empty;
    private string? _attachmentType;

    public string PostId
    {
        get => _postId;
        set => _postId = value?.Trim() ?? string.Empty;
    }
    private readonly List<NationalCommunityPost> _posts = [];
    private readonly HashSet<string> _postIds = new(StringComparer.Ordinal);
    private int _nextOffset;
    private bool _hasMore = true;
    private bool _isLoading;
    private bool _initialLoadComplete;

    public FullCommunityPage()
    {
        InitializeComponent();
        _community = MauiProgram.Services.GetRequiredService<CommunityService>();
        _mediaViewer = MauiProgram.Services.GetRequiredService<MediaViewerService>();
    }

    protected override async void OnAppearing()
    {
        base.OnAppearing();
        if (!_initialLoadComplete)
            await LoadFeedAsync();

        if (!string.IsNullOrWhiteSpace(PostId) && _posts.Count > 0)
        {
            var postIndex = _posts.FindIndex(post => string.Equals(post.Id, PostId, StringComparison.Ordinal));
            if (postIndex >= 0)
            {
                var feed = FeedStack;
                if (feed.Children.Count > postIndex)
                {
                    var target = feed.Children[postIndex];
                    if (target is VisualElement element)
                    {
                        var scroll = FeedScroll as ScrollView;
                        if (scroll is not null)
                            await scroll.ScrollToAsync(element, ScrollToPosition.Start, false);
                    }
                }
            }
        }
    }

    private async Task LoadFeedAsync()
    {
        if (_isLoading) return;
        _isLoading = true;
        FeedActivity.IsVisible = true;
        try
        {
            _posts.Clear();
            _postIds.Clear();
            _nextOffset = 0;
            _hasMore = true;
            FeedStack.Children.Clear();
            var cached = await _community.GetCachedNationalPostsAsync();
            MergePosts(cached);
            RenderPosts();
            _isLoading = false;
            await LoadNextPageAsync();
            _initialLoadComplete = true;
        }
        catch (Exception ex) { await DisplayAlert("Full Community", $"Unable to load the national feed: {ex.Message}", "OK"); }
        finally { _isLoading = false; FeedActivity.IsVisible = false; }
    }

    private async Task LoadNextPageAsync()
    {
        if (_isLoading && _posts.Count > 0 || !_hasMore) return;
        _isLoading = true;
        FeedActivity.IsVisible = true;
        try
        {
            var page = await _community.GetNationalPostsPageAsync(_nextOffset, 5);
            MergePosts(page.Posts);
            _nextOffset = _posts.Count;
            _hasMore = page.HasMore;
            RenderPosts();
        }
        finally { _isLoading = false; FeedActivity.IsVisible = false; }
    }

    private void MergePosts(IEnumerable<NationalCommunityPost> posts)
    {
        foreach (var post in posts)
        {
            if (_postIds.Add(post.Id))
                _posts.Add(post);
        }
    }

    private void RenderPosts()
    {
        FeedStack.Children.Clear();
        foreach (var post in _posts)
            FeedStack.Children.Add(CreatePostCard(post));
    }

    private View CreatePostCard(NationalCommunityPost post)
    {
        var cardColor = Application.Current?.RequestedTheme == AppTheme.Dark
            ? Color.FromArgb("#173B2B") : Color.FromArgb("#E7F5EC");
        var body = new VerticalStackLayout { Spacing = 6 };
        body.Children.Add(new Label { Text = $"🌍 {post.AuthorName}", FontAttributes = FontAttributes.Bold, TextColor = Color.FromArgb("#167A4A") });
        var location = string.Join(" · ", new[] { post.AuthorRegionName, post.AuthorDistrictName, post.AuthorBranchName }.Where(x => !string.IsNullOrWhiteSpace(x)));
        if (!string.IsNullOrWhiteSpace(location)) body.Children.Add(new Label { Text = location, FontSize = 12, TextColor = Color.FromArgb("#6B7280") });
        if (!string.IsNullOrWhiteSpace(post.Title)) body.Children.Add(new Label { Text = post.Title, FontSize = 19, FontAttributes = FontAttributes.Bold });
        if (!string.IsNullOrWhiteSpace(post.Content)) body.Children.Add(new Label { Text = post.Content, LineBreakMode = LineBreakMode.WordWrap });
        if (!string.IsNullOrWhiteSpace(post.ImageUrl))
        {
            var image = new Image { Source = post.ImageUrl, HeightRequest = 130, Aspect = Aspect.AspectFit };
            var tap = new TapGestureRecognizer();
            tap.Tapped += async (_, _) => await _mediaViewer.OpenMediaAsync(post.ImageUrl, "image");
            image.GestureRecognizers.Add(tap);
            body.Children.Add(image);
        }
        if (!string.IsNullOrWhiteSpace(post.VideoUrl))
        {
            var video = new Button { Text = "▶ Play video", BackgroundColor = Color.FromArgb("#1E40AF"), TextColor = Colors.White };
            video.Clicked += async (_, _) => await _mediaViewer.OpenMediaAsync(post.VideoUrl, "video");
            body.Children.Add(video);
        }
        if (!string.IsNullOrWhiteSpace(post.AudioUrl))
        {
            var audio = new Button { Text = "▶ Play audio", BackgroundColor = Color.FromArgb("#0F766E"), TextColor = Colors.White };
            audio.Clicked += async (_, _) => await _mediaViewer.OpenMediaAsync(post.AudioUrl, "audio");
            body.Children.Add(audio);
        }
        var engagement = new Label { Text = $"{post.CreatedAtUtc.ToLocalTime():g}  •  ❤️ {post.LikeCount}  💬 {post.CommentCount}", FontSize = 12, TextColor = Color.FromArgb("#6B7280") };
        body.Children.Add(engagement);
        var actions = new HorizontalStackLayout { Spacing = 8 };
        var like = new Button { Text = post.LikedByCurrentUser ? "Unlike" : "Like", Padding = 10 };
        like.Clicked += async (_, _) =>
        {
            like.IsEnabled = false;
            try { var result = await _community.ToggleNationalLikeAsync(post.Id, post.LikedByCurrentUser); post.LikedByCurrentUser = result.Liked; post.LikeCount = result.Count; like.Text = result.Liked ? "Unlike" : "Like"; engagement.Text = $"{post.CreatedAtUtc.ToLocalTime():g}  •  ❤️ {post.LikeCount}  💬 {post.CommentCount}"; }
            catch (Exception ex) { await DisplayAlert("Unable to update like", ex.Message, "OK"); }
            finally { like.IsEnabled = true; }
        };
        var comment = new Button { Text = "Comment", Padding = 10 };
        comment.Clicked += async (_, _) =>
        {
            try
            {
                var comments = await _community.GetNationalCommentsAsync(post.Id);
                var existing = comments.Count == 0 ? "No comments yet." : string.Join(Environment.NewLine, comments.Select(x => $"{x.AuthorName}: {x.Content}"));
                var text = await DisplayPromptAsync("Comments", $"{existing}{Environment.NewLine}{Environment.NewLine}Write a comment", initialValue: string.Empty, maxLength: 2000, keyboard: Keyboard.Default);
                if (!string.IsNullOrWhiteSpace(text)) { await _community.AddNationalCommentAsync(post.Id, text.Trim()); post.CommentCount++; engagement.Text = $"{post.CreatedAtUtc.ToLocalTime():g}  •  ❤️ {post.LikeCount}  💬 {post.CommentCount}"; }
            }
            catch (Exception ex) { await DisplayAlert("Unable to update comment", ex.Message, "OK"); }
        };
        actions.Children.Add(like); actions.Children.Add(comment); body.Children.Add(actions);
        var availableWidth = Math.Max(220, Width - 32);
        return new Border
        {
            WidthRequest = availableWidth,
            HeightRequest = availableWidth,
            BackgroundColor = cardColor,
            Padding = 14,
            StrokeShape = new RoundRectangle { CornerRadius = new CornerRadius(16) },
            Content = new ScrollView { Content = body }
        };
    }

    private async void OnFeedScrolled(object? sender, ScrolledEventArgs e)
    {
        if (!_initialLoadComplete || _isLoading || !_hasMore) return;
        if (sender is ScrollView scroll &&
            e.ScrollY + scroll.Height >= scroll.ContentSize.Height - 300)
            await LoadNextPageAsync();
    }

    private async void OnImageClicked(object? s, EventArgs e) { _attachment = await MediaPicker.Default.PickPhotoAsync(); SetAttachment("image"); }
    private async void OnVideoClicked(object? s, EventArgs e) { _attachment = await MediaPicker.Default.PickVideoAsync(); SetAttachment("video"); }
    private async void OnAudioClicked(object? s, EventArgs e) { _attachment = await FilePicker.Default.PickAsync(new PickOptions { PickerTitle = "Select audio" }); SetAttachment("audio"); AudioDurationEntry.IsVisible = _attachment is not null; }
    private void SetAttachment(string type) { if (_attachment is not null) { _attachmentType = type; AttachmentLabel.Text = $"{type}: {_attachment.FileName}"; } }

    private async void OnPostClicked(object? s, EventArgs e)
    {
        if (!PostButton.IsEnabled) return;
        PostButton.IsEnabled = false;
        try
        {
            var request = new NationalCommunityCreateRequest { Title = TitleEntry.Text, Content = ContentEditor.Text, LinkUrl = LinkEntry.Text };
            if (_attachment is not null)
                throw new InvalidOperationException(
                    "Media posting is temporarily unavailable. Please remove the attachment and try a text-only post.");
            await _community.CreateNationalPostAsync(request);
            TitleEntry.Text = ContentEditor.Text = LinkEntry.Text = string.Empty; _attachment = null; _attachmentType = null; AttachmentLabel.Text = "No media selected"; AudioDurationEntry.IsVisible = false;
            await LoadFeedAsync();
        }
        catch (Exception ex) { await DisplayAlert("Unable to post", ex.Message, "OK"); }
        finally { PostButton.IsEnabled = true; }
    }
}

