using CCT_USCF.Models;
using CCT_USCF.Services;
using CCT_USCF.Services.Cloudinary;

namespace CCT_USCF.Pages;

public partial class FullCommunityPage : ContentPage
{
    private readonly CommunityService _community;
    private readonly CloudinaryService _cloudinary;
    private FileResult? _attachment;
    private string? _attachmentType;

    public FullCommunityPage()
    {
        InitializeComponent();
        _community = MauiProgram.Services.GetRequiredService<CommunityService>();
        _cloudinary = MauiProgram.Services.GetRequiredService<CloudinaryService>();
    }

    protected override async void OnAppearing() { base.OnAppearing(); await LoadFeedAsync(); }

    private async Task LoadFeedAsync()
    {
        try
        {
            FeedStack.Children.Clear();
            foreach (var post in await _community.GetNationalPostsAsync())
            {
                var card = new Border { BackgroundColor = Colors.White, Padding = 14 };
                var body = new VerticalStackLayout { Spacing = 6 };
                body.Children.Add(new Label { Text = $"🌍 {post.AuthorName}", FontAttributes = FontAttributes.Bold, TextColor = Color.FromArgb("#167A4A") });
                var location = string.Join(" · ", new[] { post.AuthorRegionName, post.AuthorDistrictName, post.AuthorBranchName }.Where(x => !string.IsNullOrWhiteSpace(x)));
                if (!string.IsNullOrWhiteSpace(location)) body.Children.Add(new Label { Text = location, FontSize = 12, TextColor = Colors.Gray });
                if (!string.IsNullOrWhiteSpace(post.Title)) body.Children.Add(new Label { Text = post.Title, FontSize = 19, FontAttributes = FontAttributes.Bold });
                if (!string.IsNullOrWhiteSpace(post.Content)) body.Children.Add(new Label { Text = post.Content });
                if (!string.IsNullOrWhiteSpace(post.ImageUrl)) body.Children.Add(new Image { Source = post.ImageUrl, HeightRequest = 220, Aspect = Aspect.AspectFit });
                body.Children.Add(new Label { Text = $"{post.CreatedAtUtc.ToLocalTime():g}  •  ❤️ {post.LikeCount}  💬 {post.CommentCount}", FontSize = 12, TextColor = Colors.Gray });
                var actions = new HorizontalStackLayout { Spacing = 8 };
                var like = new Button { Text = post.LikedByCurrentUser ? "Unlike" : "Like", Padding = 10 };
                like.Clicked += async (_, _) => { like.IsEnabled = false; var result = await _community.ToggleNationalLikeAsync(post.Id, post.LikedByCurrentUser); like.Text = result.Liked ? "Unlike" : "Like"; like.IsEnabled = true; };
                var comment = new Button { Text = "Comment", Padding = 10 };
                comment.Clicked += async (_, _) => { var text = await DisplayPromptAsync("Comment", "Write a comment"); if (!string.IsNullOrWhiteSpace(text)) { await _community.AddNationalCommentAsync(post.Id, text); await LoadFeedAsync(); } };
                actions.Children.Add(like); actions.Children.Add(comment); body.Children.Add(actions); card.Content = body; FeedStack.Children.Add(card);
            }
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
            {
                if (_attachmentType == "audio")
                {
                    var upload = await _cloudinary.UploadAudioAsync(_attachment);
                    if (upload.Duration <= 0) throw new InvalidOperationException("Unable to determine audio duration safely.");
                    if (upload.Duration > 15) throw new InvalidOperationException("Audio must not be longer than 15 seconds.");
                    request.AudioDurationSeconds = upload.Duration; request.AudioUrl = upload.SecureUrl;
                }
                else if (_attachmentType == "image") request.ImageUrl = (await _cloudinary.UploadImageAsync(_attachment)).SecureUrl;
                else request.VideoUrl = (await _cloudinary.UploadVideoAsync(_attachment)).SecureUrl;
            }
            await _community.CreateNationalPostAsync(request);
            TitleEntry.Text = ContentEditor.Text = LinkEntry.Text = string.Empty; _attachment = null; _attachmentType = null; AttachmentLabel.Text = "No media selected"; AudioDurationEntry.IsVisible = false;
            await LoadFeedAsync();
        }
        catch (Exception ex) { await DisplayAlert("Unable to post", ex.Message, "OK"); }
        finally { PostButton.IsEnabled = true; }
    }
}
