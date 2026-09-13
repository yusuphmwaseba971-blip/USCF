using CCT_USCF.Models;
using CCT_USCF.Services;
using CCT_USCF.Services.Cloudinary;

namespace CCT_USCF.Pages;

public partial class ChurchAnnouncementPage : ContentPage
{
    private readonly ChurchAnnouncementService _service;
    private readonly CloudinaryService _cloudinary;
    private IReadOnlyList<ChurchAnnouncementTarget> _targets = [];
    private FileResult? _attachment;
    private string _attachmentKind = string.Empty;
    private bool _publishing;

    public ChurchAnnouncementPage()
    {
        InitializeComponent();
        _service = MauiProgram.Services.GetRequiredService<ChurchAnnouncementService>();
        _cloudinary = MauiProgram.Services.GetRequiredService<CloudinaryService>();
        Loaded += async (_, _) => await LoadAsync();
    }

    private async Task LoadAsync()
    {
        try
        {
            await FirebaseInit.Initialized;
            if (MauiProgram.CurrentUser is null)
            {
                var currentUser = await MauiProgram.CreateAuthServiceForPages().GetCurrentUserAsync();
                if (currentUser is not null) MauiProgram.SetCurrentUser(currentUser);
            }
            var options = await _service.GetOptionsAsync();
            LeadershipLabel.Text = $"Leadership: {options.LeadershipLevel}";
            OrganizationLabel.Text = options.Organization;
            _targets = options.Targets;
            AudiencePicker.ItemsSource = _targets.ToList();
            AudiencePicker.SelectedIndex = _targets.Count > 0 ? 0 : -1;
            SendButton.IsEnabled = _targets.Count > 0;
            StatusLabel.Text = _targets.Count == 0
                ? "Assign a branch in your church profile before sending."
                : "Choose an audience, write your message, and publish.";
        }
        catch (Exception ex)
        {
            StatusLabel.Text = "Unable to load announcement audiences.";
            System.Diagnostics.Debug.WriteLine($"[ANNOUNCEMENT_COMPOSER_LOAD_ERROR] {ex}");
            SendButton.IsEnabled = false;
        }
    }

    private async void OnAttachmentClicked(object? sender, EventArgs e)
    {
        var file = await FilePicker.Default.PickAsync(new PickOptions
        {
            PickerTitle = "Select announcement image or PDF",
            FileTypes = new FilePickerFileType(new Dictionary<DevicePlatform, IEnumerable<string>>
            {
                [DevicePlatform.Android] = new[] { "image/jpeg", "image/png", "image/webp", "application/pdf" }
            })
        });
        if (file is null) return;

        var extension = Path.GetExtension(file.FileName).ToLowerInvariant();
        _attachmentKind = extension is ".jpg" or ".jpeg" or ".png" or ".webp" ? "image" : extension == ".pdf" ? "pdf" : "";
        if (string.IsNullOrEmpty(_attachmentKind))
        {
            StatusLabel.Text = "Only JPG, PNG, WEBP, and PDF files are supported.";
            return;
        }
        await using var stream = await file.OpenReadAsync();
        if (stream.Length > 15 * 1024 * 1024)
        {
            StatusLabel.Text = "Attachment must be 15 MB or smaller.";
            return;
        }
        _attachment = file;
        AttachmentPreview.IsVisible = true;
        SelectedImagePreview.IsVisible = _attachmentKind == "image";
        SelectedImagePreview.Source = _attachmentKind == "image" ? ImageSource.FromFile(file.FullPath) : null;
        SelectedFileLabel.Text = $"{file.FileName}  •  {FormatBytes(stream.Length)}";
        StatusLabel.Text = "Attachment selected. It will upload when you publish.";
        System.Diagnostics.Debug.WriteLine($"[AnnouncementMedia] file selected name={file.FileName} bytes={stream.Length}");
    }

    private void OnRemoveAttachmentClicked(object? sender, EventArgs e)
    {
        _attachment = null;
        _attachmentKind = string.Empty;
        AttachmentPreview.IsVisible = false;
        SelectedImagePreview.Source = null;
        StatusLabel.Text = "Attachment removed.";
    }

    private async void OnSendClicked(object? sender, EventArgs e)
    {
        if (_publishing) return;
        if (AudiencePicker.SelectedItem is not ChurchAnnouncementTarget target)
        {
            StatusLabel.Text = "Choose an audience."; return;
        }
        if (string.IsNullOrWhiteSpace(TitleEntry.Text) || string.IsNullOrWhiteSpace(MessageEditor.Text))
        {
            StatusLabel.Text = "Title and message are required."; return;
        }
        if (Connectivity.Current.NetworkAccess == NetworkAccess.None)
        {
            StatusLabel.Text = "You're offline\nConnect to the internet to publish this announcement."; return;
        }

        _publishing = true;
        SendButton.IsEnabled = false;
        string? imageUrl = null;
        string? attachmentUrl = null;
        try
        {
            if (_attachment is not null)
            {
                StatusLabel.Text = "Uploading attachment...";
                System.Diagnostics.Debug.WriteLine("[AnnouncementMedia] Cloudinary upload started");
                var upload = _attachmentKind == "image"
                    ? await _cloudinary.UploadAnnouncementImageAsync(_attachment)
                    : await _cloudinary.UploadAnnouncementPdfAsync(_attachment);
                if (string.IsNullOrWhiteSpace(upload.SecureUrl))
                    throw new InvalidOperationException("Cloudinary returned no usable URL.");
                if (_attachmentKind == "image") imageUrl = upload.SecureUrl;
                else attachmentUrl = upload.SecureUrl;
                System.Diagnostics.Debug.WriteLine($"[AnnouncementMedia] Cloudinary upload completed resource={upload.ResourceType}");
            }

            StatusLabel.Text = "Publishing announcement...";
            System.Diagnostics.Debug.WriteLine("[AnnouncementMedia] Appwrite announcement creation started");
            await _service.CreateAsync(TitleEntry.Text.Trim(), MessageEditor.Text.Trim(), target, imageUrl, attachmentUrl);
            System.Diagnostics.Debug.WriteLine("[AnnouncementMedia] Appwrite announcement created");
            StatusLabel.Text = "Announcement published";
            await DisplayAlert("Success", "Announcement published.", "OK");
            TitleEntry.Text = string.Empty;
            MessageEditor.Text = string.Empty;
            OnRemoveAttachmentClicked(null, EventArgs.Empty);
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine($"[AnnouncementMedia] publish failed type={ex.GetType().Name} message={ex.Message}");
            StatusLabel.Text = _attachment is not null && (imageUrl is null && attachmentUrl is null)
                ? "Attachment upload failed. Please retry."
                : "Announcement could not be published. Please try again.";
        }
        finally
        {
            _publishing = false;
            SendButton.IsEnabled = _targets.Count > 0;
        }
    }

    private static string FormatBytes(long bytes) =>
        bytes < 1024 * 1024 ? $"{bytes / 1024d:0.#} KB" : $"{bytes / (1024d * 1024d):0.##} MB";

    private async void OnActivityClicked(object? sender, EventArgs e)
        => await Shell.Current.GoToAsync(nameof(AnnouncementActivityPage));
}
