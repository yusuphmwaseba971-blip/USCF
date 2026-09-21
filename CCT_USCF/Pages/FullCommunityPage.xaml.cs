using CCT_USCF.Models;
using CCT_USCF.Services;

namespace CCT_USCF.Pages;

public partial class FullCommunityPage : ContentPage
{
    private readonly CommunityService _community;
    private readonly MediaViewerService _mediaViewer;
    private FileResult? _attachment;
    private string? _attachmentType;

    public FullCommunityPage()
    {
        InitializeComponent();
        _community = MauiProgram.Services.GetRequiredService<CommunityService>();
        _mediaViewer = MauiProgram.Services.GetRequiredService<MediaViewerService>();
    }

    protected override async void OnAppearing() { base.OnAppearing(); await LoadFeedAsync(); }

    private async Task LoadFeedAsync()
    {
        var timer = System.Diagnostics.Stopwatch.StartNew();
        try
        {
            FeedStack.Children.Clear();
            var posts = await _community.GetNationalPostsAsync();
            foreach (var post in posts)
            {
                var card = new Border { BackgroundColor = Colors.White, Padding = 14 };
                var body = new VerticalStackLayout { Spacing = 6 };
                body.Children.Add(new Label { Text = $"🌍 {post.AuthorName}", FontAttributes = FontAttributes.Bold, TextColor = Color.FromArgb("#167A4A") });
                var location = string.Join(" · ", new[] { post.AuthorRegionName, post.AuthorDistrictName, post.AuthorBranchName }.Where(x => !string.IsNullOrWhiteSpace(x)));
                if (!string.IsNullOrWhiteSpace(location)) body.Children.Add(new Label { Text = location, FontSize = 12, TextColor = Colors.Gray });
                if (!string.IsNullOrWhiteSpace(post.Title)) body.Children.Add(new Label { Text = post.Title, FontSize = 19, FontAttributes = FontAttributes.Bold });
                if (!string.IsNullOrWhiteSpace(post.Content)) body.Children.Add(new Label { Text = post.Content });
                if (!string.IsNullOrWhiteSpace(post.ImageUrl))
                {
                    var image = new Image { Source = post.ImageUrl, HeightRequest = 220, Aspect = Aspect.AspectFit };
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
                var engagement = new Label
                {
                    Text = $"{post.CreatedAtUtc.ToLocalTime():g}  •  ❤️ {post.LikeCount}  💬 {post.CommentCount}",
                    FontSize = 12,
                    TextColor = Colors.Gray
                };
                body.Children.Add(engagement);
                var actions = new HorizontalStackLayout { Spacing = 8 };
                var like = new Button { Text = post.LikedByCurrentUser ? "Unlike" : "Like", Padding = 10 };
                like.Clicked += async (_, _) =>
                {
                    like.IsEnabled = false;
                    try
                    {
                        var result = await _community.ToggleNationalLikeAsync(post.Id, post.LikedByCurrentUser);
                        post.LikedByCurrentUser = result.Liked;
                        post.LikeCount = result.Count;
                        like.Text = result.Liked ? "Unlike" : "Like";
                        engagement.Text = $"{post.CreatedAtUtc.ToLocalTime():g}  •  ❤️ {post.LikeCount}  💬 {post.CommentCount}";
                    }
                    catch (Exception ex)
                    {
                        await DisplayAlert("Unable to update like", ex.Message, "OK");
                    }
                    finally
                    {
                        like.IsEnabled = true;
                    }
                };
                var comment = new Button { Text = "Comment", Padding = 10 };
                comment.Clicked += async (_, _) =>
                {
                    try
                    {
                        var comments = await _community.GetNationalCommentsAsync(post.Id);
                        var existing = comments.Count == 0
                            ? "No comments yet."
                            : string.Join(Environment.NewLine, comments.Select(x => $"{x.AuthorName}: {x.Content}"));
                        var text = await DisplayPromptAsync(
                            "Comments",
                            $"{existing}{Environment.NewLine}{Environment.NewLine}Write a comment",
                            initialValue: string.Empty,
                            maxLength: 2000,
                            keyboard: Keyboard.Default);
                        if (!string.IsNullOrWhiteSpace(text))
                        {
                            await _community.AddNationalCommentAsync(post.Id, text.Trim());
                            post.CommentCount++;
                            engagement.Text = $"{post.CreatedAtUtc.ToLocalTime():g}  •  ❤️ {post.LikeCount}  💬 {post.CommentCount}";
                        }
                    }
                    catch (Exception ex)
                    {
                        await DisplayAlert("Unable to update comment", ex.Message, "OK");
                    }
                };
                actions.Children.Add(like); actions.Children.Add(comment); body.Children.Add(actions); card.Content = body; FeedStack.Children.Add(card);
            }
            System.Diagnostics.Debug.WriteLine($"[COMMUNITY] First-open feed load completed in {timer.ElapsedMilliseconds} ms ({posts.Count} posts)");
        }
        catch (Exception ex) { await DisplayAlert("Full Community", $"Unable to load the national feed: {ex.Message}", "OK"); }
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
