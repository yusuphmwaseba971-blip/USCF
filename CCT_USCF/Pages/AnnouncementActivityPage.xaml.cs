using CCT_USCF.Models;
using CCT_USCF.Services;

namespace CCT_USCF.Pages;

public partial class AnnouncementActivityPage : ContentPage
{
    private readonly ChurchAnnouncementService _service;
    private readonly MediaViewerService _mediaViewer;
    private IReadOnlyList<ChurchNotification> _all = [];
    private string _category = "NATIONAL";
    private readonly HashSet<Guid> _scheduledReminders = [];

    public AnnouncementActivityPage()
    {
        InitializeComponent();
        _service = MauiProgram.Services.GetRequiredService<ChurchAnnouncementService>();
        _mediaViewer = MauiProgram.Services.GetRequiredService<MediaViewerService>();
    }

    protected override async void OnAppearing()
    {
        base.OnAppearing();
        await LoadAsync();
    }

    private async Task LoadAsync()
    {
        RefreshHost.IsRefreshing = true;
        LoadingIndicator.IsVisible = LoadingIndicator.IsRunning = true;
        ErrorLabel.IsVisible = false;
        try
        {
            _all = await _service.GetNotificationsAsync();
            UpdateCounts();
            ApplyCategory();
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine($"[ANNOUNCEMENT_CENTER_ERROR] {ex}");
            ErrorLabel.Text = "Couldn't load announcements. Please check your connection and try again.";
            ErrorLabel.IsVisible = true;
            NotificationsView.ItemsSource = null;
        }
        finally
        {
            LoadingIndicator.IsVisible = LoadingIndicator.IsRunning = false;
            RefreshHost.IsRefreshing = false;
        }
    }

    private void UpdateCounts()
    {
        NationalButton.Text = $"NATIONAL {_all.Count(x => x.ScopeLabel == "NATIONAL")}";
        RegionalButton.Text = $"REGIONAL {_all.Count(x => x.ScopeLabel == "REGIONAL")}";
        DistrictButton.Text = $"DISTRICT {_all.Count(x => x.ScopeLabel == "DISTRICT")}";
        BranchButton.Text = $"BRANCH {_all.Count(x => x.ScopeLabel == "BRANCH")}";
        var featured = _all.FirstOrDefault();
        FeaturedCard.IsVisible = featured is not null;
        if (featured is not null)
        {
            FeaturedTitle.Text = featured.Title;
            FeaturedPreview.Text = featured.Preview;
        }
    }

    private void ApplyCategory()
    {
        NotificationsView.ItemsSource = _all.Where(x => x.ScopeLabel == _category).ToList();
    }

    private void OnCategoryClicked(object? sender, EventArgs e)
    {
        if (sender is Button button && button.CommandParameter is string category)
        {
            _category = category;
            ApplyCategory();
        }
    }

    private async void OnRefreshing(object? sender, EventArgs e) => await LoadAsync();

    private async void OnSelected(object? sender, SelectionChangedEventArgs e)
    {
        if (e.CurrentSelection.FirstOrDefault() is ChurchNotification item)
            await OpenDetailsAsync(item);
        NotificationsView.SelectedItem = null;
    }

    private async void OnReadClicked(object? sender, EventArgs e)
    {
        if ((sender as Button)?.CommandParameter is ChurchNotification item)
            await OpenDetailsAsync(item);
    }

    private async Task OpenDetailsAsync(ChurchNotification item)
    {
        if (!item.IsRead)
        {
            await _service.MarkReadAsync(item.AnnouncementId);
            _all = _all.Select(notification => notification.AnnouncementId == item.AnnouncementId
                ? notification with { IsRead = true }
                : notification).ToList();
            ApplyCategory();
        }
        var details = $"{item.Message}\n\nIssued by: {item.SenderName}\n" +
                      $"Scope: {item.ScopeLabel}\nPublished: {item.CreatedAtUtc:dd MMM yyyy, HH:mm}";
        if (item.ExpiresAtUtc is not null)
            details += $"\nExpires: {item.ExpiresAtUtc:dd MMM yyyy, HH:mm}";
        await DisplayAlert(item.Title, details, "Close");
    }

    private async void OnShareClicked(object? sender, EventArgs e)
    {
        if ((sender as Button)?.CommandParameter is not ChurchNotification item) return;
        await Share.Default.RequestAsync(new ShareTextRequest
        {
            Title = "Share CCT-USCF announcement",
            Text = $"CCT-USCF ANNOUNCEMENT\n\n{item.Title}\n\n{item.Message}\n\n" +
                   $"Issued by: {item.SenderName}\nCCT-USCF"
        });
    }

    private async void OnReminderClicked(object? sender, EventArgs e)
    {
        if ((sender as Button)?.CommandParameter is not ChurchNotification item) return;
        var choice = await DisplayActionSheet("Remind me", "Cancel", null,
            "Later today", "Tomorrow", "Choose date and time");
        DateTime reminder = choice switch
        {
            "Later today" => DateTime.Today.AddHours(DateTime.Now.Hour + 2),
            "Tomorrow" => DateTime.Today.AddDays(1).AddHours(9),
            "Choose date and time" => DateTime.Now.AddHours(1),
            _ => DateTime.MinValue
        };
        if (reminder <= DateTime.Now) reminder = DateTime.Now.AddHours(1);
        if (reminder == DateTime.MinValue) return;
        await AnnouncementReminderService.ScheduleAsync(item, reminder);
        _scheduledReminders.Add(item.AnnouncementId);
        if (sender is Button reminderButton)
            reminderButton.Text = "REMINDER SET";
        await DisplayAlert("Reminder set", $"You will be reminded on {reminder:g}.", "OK");
    }

    private async void OnAttachmentClicked(object? sender, EventArgs e)
    {
        if ((sender as Button)?.CommandParameter is ChurchNotification item &&
            !string.IsNullOrWhiteSpace(item.AttachmentUrl))
        {
            await _mediaViewer.OpenMediaAsync(item.AttachmentUrl);
        }
    }

    private async void OnImageTapped(object? sender, EventArgs e)
    {
        if ((sender as Image)?.BindingContext is ChurchNotification item)
            await _mediaViewer.OpenMediaAsync(item.ImageUrl, "image");
    }
}
