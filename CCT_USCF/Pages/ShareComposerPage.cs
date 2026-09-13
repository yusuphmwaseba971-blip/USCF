using System.Globalization;
using CCT_USCF.Models;
using CCT_USCF.Services;
using CCT_USCF.Services.Cloudinary;
using Microsoft.Maui.Controls.Shapes;

namespace CCT_USCF.Pages;

public enum ShareContributionType
{
    Scripture,
    Encouragement,
    Notice,
    Worship,
    Event,
    Resource
}

public abstract class ShareComposerPage : ContentPage
{
    private readonly ShareContributionType _type;
    private readonly CommunityService _community;
    private readonly CloudinaryService _cloudinary;
    private readonly Entry _title = new();
    private readonly Editor _content = new() { HeightRequest = 130 };
    private readonly Entry _reference = new();
    private readonly Entry _chapter = new() { Keyboard = Keyboard.Numeric };
    private readonly Entry _verses = new();
    private readonly Entry _location = new();
    private readonly Entry _resourceCategory = new();
    private readonly DatePicker _date = new() { MinimumDate = DateTime.Today };
    private readonly TimePicker _startTime = new() { Time = new TimeSpan(10, 0, 0) };
    private readonly TimePicker _endTime = new() { Time = new TimeSpan(11, 0, 0) };
    private readonly Picker _book = new();
    private readonly Picker _audience = new();
    private readonly Button _submit = new();
    private readonly Label _status = new();
    private FileResult? _attachment;
    private string? _attachmentKind;
    private CurrentUser? _user;

    protected ShareComposerPage(ShareContributionType type, string title, string subtitle)
    {
        _type = type;
        _community = MauiProgram.Services.GetRequiredService<CommunityService>();
        _cloudinary = MauiProgram.Services.GetRequiredService<CloudinaryService>();
        Title = title;
        BackgroundColor = Color.FromArgb("#F4F8F5");
        BuildLayout(title, subtitle);
    }

    protected override async void OnAppearing()
    {
        base.OnAppearing();
        _user ??= MauiProgram.CurrentUser ?? await MauiProgram.CreateAuthServiceForPages().GetCurrentUserAsync();
        if (_user is null)
        {
            await DisplayAlert("Sign in required", "Please sign in before sharing with the church.", "OK");
            await Shell.Current.GoToAsync(nameof(LoginPage));
            return;
        }
        MauiProgram.SetCurrentUser(_user);
        ConfigureAudience();
    }

    private void BuildLayout(string title, string subtitle)
    {
        var root = new Grid { RowDefinitions = new RowDefinitionCollection { new(GridLength.Star), new(GridLength.Auto) } };
        var scroll = new ScrollView();
        var stack = new VerticalStackLayout { Padding = new Thickness(18, 12, 18, 24), Spacing = 12 };
        var back = new Button { Text = "‹  Back", BackgroundColor = Colors.Transparent, TextColor = Color.FromArgb("#167A4A"), HorizontalOptions = LayoutOptions.Start, Padding = new Thickness(0, 8) };
        back.Clicked += async (_, _) => await Shell.Current.GoToAsync("..");
        stack.Children.Add(back);
        stack.Children.Add(new Label { Text = title, FontSize = 28, FontAttributes = FontAttributes.Bold, TextColor = Color.FromArgb("#075E36") });
        stack.Children.Add(new Label { Text = subtitle, FontSize = 14, TextColor = Color.FromArgb("#64748B") });

        if (_type == ShareContributionType.Scripture)
        {
            AddField(stack, "Bible book", _book, "Select a book");
            _book.ItemsSource = new[] { "Genesis", "Psalms", "Proverbs", "Isaiah", "Matthew", "Mark", "Luke", "John", "Romans", "1 Corinthians", "Philippians", "James", "Revelation" };
            AddField(stack, "Chapter", _chapter, "Chapter number");
            AddField(stack, "Verse / verse range", _verses, "e.g. 1-3");
            AddField(stack, "Scripture text", _content, "Write or paste the passage");
            AddField(stack, "Reflection (optional)", _reference, "What does this Word mean to you?");
        }
        else
        {
            if (_type is ShareContributionType.Notice or ShareContributionType.Event or ShareContributionType.Worship or ShareContributionType.Resource)
                AddField(stack, _type == ShareContributionType.Notice ? "Notice title" : _type == ShareContributionType.Event ? "Event title" : _type == ShareContributionType.Resource ? "Resource title" : "Worship title", _title, "Enter a clear title");
            AddField(stack, _type == ShareContributionType.Event ? "Description" : "Message", _content, _type == ShareContributionType.Event ? "Describe this church event" : "Share something that will strengthen the church");
            if (_type == ShareContributionType.Worship)
                AddField(stack, "Scripture reference (optional)", _reference, "e.g. Psalm 23");
            if (_type == ShareContributionType.Event)
            {
                AddField(stack, "Date", _date);
                AddField(stack, "Start time", _startTime);
                AddField(stack, "End time (optional)", _endTime);
                AddField(stack, "Location", _location, "Where will it happen?");
            }
            if (_type == ShareContributionType.Resource)
                AddField(stack, "Category (optional)", _resourceCategory, "Bible study, guide, song...");
            if (_type is ShareContributionType.Encouragement or ShareContributionType.Notice or ShareContributionType.Worship)
                AddAttachmentButton(stack, "Add image (optional)", "image");
            if (_type == ShareContributionType.Resource)
                AddAttachmentButton(stack, "Choose resource file", "resource");
        }

        AddField(stack, "Audience", _audience);
        _submit.Text = SubmitText();
        _submit.BackgroundColor = Color.FromArgb("#009E2C");
        _submit.TextColor = Colors.White;
        _submit.FontAttributes = FontAttributes.Bold;
        _submit.Clicked += SubmitAsync;
        stack.Children.Add(_submit);
        _status.TextColor = Color.FromArgb("#64748B");
        _status.IsVisible = false;
        stack.Children.Add(_status);
        scroll.Content = stack;
        root.Children.Add(scroll);
        Content = root;
    }

    private void AddField(VerticalStackLayout stack, string label, View input, string? placeholder = null)
    {
        stack.Children.Add(new Label { Text = label, FontAttributes = FontAttributes.Bold, TextColor = Color.FromArgb("#173323"), Margin = new Thickness(0, 8, 0, -5) });
        if (placeholder is not null)
        {
            if (input is Entry entry) entry.Placeholder = placeholder;
            if (input is Editor editor) editor.Placeholder = placeholder;
        }
        var border = new Border { BackgroundColor = Colors.White, Stroke = Color.FromArgb("#DCEBE0"), StrokeThickness = 1, StrokeShape = new RoundRectangle { CornerRadius = new CornerRadius(14) }, Padding = new Thickness(12, 2) };
        border.Content = input;
        stack.Children.Add(border);
    }

    private void AddField(VerticalStackLayout stack, string label, DatePicker input) => AddField(stack, label, (View)input);
    private void AddField(VerticalStackLayout stack, string label, TimePicker input) => AddField(stack, label, (View)input);

    private void AddAttachmentButton(VerticalStackLayout stack, string text, string kind)
    {
        var button = new Button { Text = text, BackgroundColor = Color.FromArgb("#E4F4E9"), TextColor = Color.FromArgb("#167A4A") };
        var label = new Label { Text = "No file selected", FontSize = 12, TextColor = Color.FromArgb("#64748B") };
        button.Clicked += async (_, _) =>
        {
            _attachment = kind == "image" ? await MediaPicker.Default.PickPhotoAsync() : await FilePicker.Default.PickAsync();
            if (_attachment is not null) { _attachmentKind = kind; label.Text = _attachment.FileName; }
        };
        stack.Children.Add(button);
        stack.Children.Add(label);
    }

    private void ConfigureAudience()
    {
        var values = new List<string>();
        if (!string.IsNullOrWhiteSpace(_user?.Branch)) values.Add($"My Branch · {_user.Branch}");
        if (!string.IsNullOrWhiteSpace(_user?.District)) values.Add($"My District · {_user.District}");
        if (!string.IsNullOrWhiteSpace(_user?.Region)) values.Add($"My Region · {_user.Region}");
        values.Add("National USCF");
        _audience.ItemsSource = values;
        if (_audience.SelectedIndex < 0) _audience.SelectedIndex = 0;
    }

    private string SubmitText() => _type switch
    {
        ShareContributionType.Scripture => "Share Scripture",
        ShareContributionType.Encouragement => "Share Encouragement",
        ShareContributionType.Notice => "Publish Notice",
        ShareContributionType.Worship => "Share Worship",
        ShareContributionType.Event => "Create Event",
        _ => "Share Resource"
    };

    private async void SubmitAsync(object? sender, EventArgs e)
    {
        if (!_submit.IsEnabled) return;
        var validation = Validate();
        if (validation is not null) { await DisplayAlert("Check your contribution", validation, "OK"); return; }
        _submit.IsEnabled = false;
        _submit.Text = "Sharing...";
        _status.IsVisible = true;
        _status.Text = "Preparing your contribution...";
        try
        {
            var typeName = _type.ToString().ToUpperInvariant();
            var title = BuildTitle(typeName);
            var request = new NationalCommunityCreateRequest
            {
                Title = $"[Share & Serve · {typeName}] {title}".Trim(),
                Content = BuildContent(),
                ContributionType = typeName,
                Audience = _audience.SelectedItem?.ToString(),
                Organization = _user?.Organization,
                Region = _user?.Region,
                District = _user?.District,
                Branch = _user?.Branch
            };
            if (_attachment is not null)
            {
                if (_attachmentKind == "image") request.ImageUrl = (await _cloudinary.UploadImageAsync(_attachment)).SecureUrl;
                else request.LinkUrl = (await _cloudinary.UploadResourceAsync(_attachment)).SecureUrl;
            }
            await _community.CreateNationalPostAsync(request);
            _status.Text = "Shared with the church. Thank you for serving.";
            await DisplayAlert("Shared successfully", "Your contribution is now available in the church community stream.", "Done");
            await Shell.Current.GoToAsync("..");
        }
        catch (HttpRequestException)
        {
            _status.Text = "We couldn't reach the church community service.";
            await DisplayAlert("Connection unavailable", "Please check your connection and try again.", "OK");
        }
        catch (UnauthorizedAccessException)
        {
            _status.Text = "Your session needs attention.";
            await DisplayAlert("Permission required", "Please sign in again before sharing.", "OK");
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine($"[SHARE_SERVE] {_type}: {ex}");
            _status.Text = "Your contribution could not be shared.";
            await DisplayAlert("Unable to share", "Please try again. Your contribution was not saved.", "OK");
        }
        finally
        {
            _submit.IsEnabled = true;
            _submit.Text = SubmitText();
        }
    }

    private string? Validate()
    {
        if (_type == ShareContributionType.Scripture && (_book.SelectedItem is null || string.IsNullOrWhiteSpace(_chapter.Text) || string.IsNullOrWhiteSpace(_verses.Text)))
            return "Choose a Bible book and complete the chapter and verse fields.";
        if (_type != ShareContributionType.Scripture && _type != ShareContributionType.Encouragement && string.IsNullOrWhiteSpace(_title.Text))
            return "A title is required.";
        if (string.IsNullOrWhiteSpace(_content.Text)) return "Please add the content you want to share.";
        if (_type == ShareContributionType.Event && _date.Date < DateTime.Today) return "Choose today or a future date.";
        if (_type == ShareContributionType.Event && _endTime.Time <= _startTime.Time) return "The end time must be after the start time.";
        if (_type == ShareContributionType.Resource && _attachment is null) return "Choose a resource file before sharing.";
        return null;
    }

    private string BuildTitle(string typeName) => _type switch
    {
        ShareContributionType.Scripture => $"{_book.SelectedItem} {_chapter.Text}:{_verses.Text}",
        ShareContributionType.Encouragement => "A word of encouragement",
        ShareContributionType.Event => _title.Text?.Trim() ?? string.Empty,
        _ => _title.Text?.Trim() ?? typeName
    };

    private string BuildContent()
    {
        var parts = new List<string>();
        if (_type == ShareContributionType.Scripture)
        {
            parts.Add(_content.Text!.Trim());
            if (!string.IsNullOrWhiteSpace(_reference.Text)) parts.Add($"Reflection: {_reference.Text.Trim()}");
        }
        else
        {
            parts.Add(_content.Text!.Trim());
            if (_type == ShareContributionType.Worship && !string.IsNullOrWhiteSpace(_reference.Text)) parts.Add($"Scripture: {_reference.Text.Trim()}");
            if (_type == ShareContributionType.Event) parts.Add($"When: {_date.Date:dddd, MMMM d, yyyy} · {_startTime.Time:hh\\:mm}–{_endTime.Time:hh\\:mm}\nLocation: {_location.Text?.Trim()}");
            if (_type == ShareContributionType.Resource && !string.IsNullOrWhiteSpace(_resourceCategory.Text)) parts.Add($"Category: {_resourceCategory.Text.Trim()}");
        }
        return string.Join("\n\n", parts);
    }
}

public sealed class ScriptureComposerPage : ShareComposerPage
{
    public ScriptureComposerPage() : base(ShareContributionType.Scripture, "Share Scripture", "Share God's Word with your church community.") { }
}

public sealed class EncouragementComposerPage : ShareComposerPage
{
    public EncouragementComposerPage() : base(ShareContributionType.Encouragement, "Encouragement", "Share words that strengthen and encourage the church.") { }
}

public sealed class NoticeComposerPage : ShareComposerPage
{
    public NoticeComposerPage() : base(ShareContributionType.Notice, "Notice", "Help your church community stay informed.") { }
}

public sealed class WorshipComposerPage : ShareComposerPage
{
    public WorshipComposerPage() : base(ShareContributionType.Worship, "Worship", "Share a calm, meaningful offering of worship.") { }
}

public sealed class EventComposerPage : ShareComposerPage
{
    public EventComposerPage() : base(ShareContributionType.Event, "Create Event", "Invite the church to gather, serve and fellowship.") { }
}

public sealed class ResourceComposerPage : ShareComposerPage
{
    public ResourceComposerPage() : base(ShareContributionType.Resource, "Share Resource", "Place a useful resource in the hands of the church.") { }
}
