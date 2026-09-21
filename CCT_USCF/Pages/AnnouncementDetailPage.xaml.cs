using CCT_USCF.Models;
using CCT_USCF.Services;

namespace CCT_USCF.Pages;

[QueryProperty(nameof(AnnouncementId), "announcementId")]
public partial class AnnouncementDetailPage : ContentPage
{
    private readonly ChurchAnnouncementService _service;
    private ChurchNotification? _announcement;
    private string _announcementId = string.Empty;
    private bool _loaded;

    public string AnnouncementId
    {
        get => _announcementId;
        set => _announcementId = value?.Trim() ?? string.Empty;
    }

    public AnnouncementDetailPage()
    {
        InitializeComponent();
        _service = MauiProgram.Services.GetRequiredService<ChurchAnnouncementService>();
    }

    protected override async void OnAppearing()
    {
        base.OnAppearing();
        if (_loaded) return;
        _loaded = true;

        if (!Guid.TryParse(AnnouncementId, out var id))
        {
            await DisplayAlert("Announcement", "This announcement is unavailable.", "Close");
            await Shell.Current.GoToAsync("..");
            return;
        }

        _announcement = (await _service.GetCachedNotificationsAsync())
            .FirstOrDefault(item => item.AnnouncementId == id);
        if (_announcement is null)
        {
            _announcement = (await _service.GetNotificationsAsync())
                .FirstOrDefault(item => item.AnnouncementId == id);
        }

        if (_announcement is null)
        {
            await DisplayAlert("Announcement", "This announcement is unavailable.", "Close");
            await Shell.Current.GoToAsync("..");
            return;
        }

        ShowAnnouncement(_announcement);
        if (!_announcement.IsRead)
        {
            await _service.MarkReadAsync(_announcement.AnnouncementId);
            _announcement = _announcement with { IsRead = true };
            ReadStateLabel.Text = "SEEN / DONE";
            MarkReadButton.IsVisible = false;
        }
    }

    private void ShowAnnouncement(ChurchNotification announcement)
    {
        ScopeLabel.Text = announcement.ScopeLabel;
        TitleLabel.Text = announcement.Title;
        MetaLabel.Text = $"{announcement.CreatedAtUtc.ToLocalTime():dd MMM yyyy, HH:mm}  •  {announcement.ScopeLabel}";
        MessageLabel.Text = announcement.Message;
        IssuedByLabel.Text = $"Issued by {announcement.SenderName}";
        ReadStateLabel.Text = announcement.IsRead ? "SEEN / DONE" : "UNSEEN";
        MarkReadButton.IsVisible = !announcement.IsRead;
        AnnouncementImage.IsVisible = announcement.HasImage;
        AnnouncementImage.Source = announcement.HasImage ? announcement.ImageUrl : null;
    }

    private async void OnMarkReadClicked(object? sender, EventArgs e)
    {
        if (_announcement is null) return;
        await _service.MarkReadAsync(_announcement.AnnouncementId);
        _announcement = _announcement with { IsRead = true };
        ReadStateLabel.Text = "SEEN / DONE";
        MarkReadButton.IsVisible = false;
    }

    private async void OnShareClicked(object? sender, EventArgs e)
    {
        if (_announcement is null) return;
        await Share.Default.RequestAsync(new ShareTextRequest
        {
            Title = "Share CCT-USCF announcement",
            Text = $"CCT-USCF ANNOUNCEMENT\n\n{_announcement.Title}\n\n{_announcement.Message}\n\n" +
                   $"Issued by: {_announcement.SenderName}\nCCT-USCF"
        });
    }

    private async void OnReminderClicked(object? sender, EventArgs e)
    {
        if (_announcement is null) return;
        var reminder = DateTime.Now.AddHours(1);
        await AnnouncementReminderService.ScheduleAsync(_announcement, reminder);
        await DisplayAlert("Reminder set", $"You will be reminded on {reminder:g}.", "OK");
    }
}
