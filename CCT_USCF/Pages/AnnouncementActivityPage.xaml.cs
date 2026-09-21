using CCT_USCF.Models;
using CCT_USCF.Services;

namespace CCT_USCF.Pages;

[QueryProperty(nameof(AnnouncementId), "announcementId")]
public partial class AnnouncementActivityPage : ContentPage
{
    private readonly ChurchAnnouncementService _service;
    private readonly MediaViewerService _mediaViewer;
    private IReadOnlyList<ChurchNotification> _all = [];
    private string _category = "NATIONAL";
    private readonly HashSet<Guid> _scheduledReminders = [];
    private string _announcementId = string.Empty;
    public string AnnouncementId
    {
        get => _announcementId;
        set => _announcementId = value?.Trim() ?? string.Empty;
    }

    public AnnouncementActivityPage()
    {
        InitializeComponent();
        _service = MauiProgram.Services.GetRequiredService<ChurchAnnouncementService>();
        _mediaViewer = MauiProgram.Services.GetRequiredService<MediaViewerService>();
        _service.AnnouncementsChanged += OnAnnouncementsChanged;
    }

    protected override async void OnAppearing()
    {
        base.OnAppearing();
        _service.AnnouncementsChanged -= OnAnnouncementsChanged;
        _service.AnnouncementsChanged += OnAnnouncementsChanged;
        await LoadAsync();
    }

    protected override void OnDisappearing()
    {
        _service.AnnouncementsChanged -= OnAnnouncementsChanged;
        base.OnDisappearing();
    }

    private async Task LoadAsync()
    {
        var cached = await _service.GetCachedNotificationsAsync();
        if (cached.Count > 0)
        {
            ApplyNotifications(cached);
            _ = _service.GetNotificationsAsync();
            await OpenRequestedAnnouncementAsync();
            return;
        }

        await LoadFromNetworkAsync();
    }

    private async Task LoadFromNetworkAsync()
    {
        RefreshHost.IsRefreshing = true;
        LoadingIndicator.IsVisible = LoadingIndicator.IsRunning = true;
        ErrorLabel.IsVisible = false;
        try
        {
            _all = await _service.GetNotificationsAsync();
            ApplyNotifications(_all);
            await OpenRequestedAnnouncementAsync();
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

    private void ApplyNotifications(IReadOnlyList<ChurchNotification> notifications)
    {
        _all = notifications;
        UpdateCounts();
        ApplyCategory();
    }

    private async Task OpenRequestedAnnouncementAsync()
    {
        if (Guid.TryParse(AnnouncementId, out var id))
        {
            var target = _all.FirstOrDefault(x => x.AnnouncementId == id);
            if (target is not null)
            {
                AnnouncementId = string.Empty;
                await OpenDetailsAsync(target);
            }
        }
    }

    private async void OnAnnouncementsChanged(object? sender, EventArgs e)
    {
        await MainThread.InvokeOnMainThreadAsync(async () =>
        {
            ApplyNotifications(await _service.GetCachedNotificationsAsync());
        });
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

    private async void OnRefreshing(object? sender, EventArgs e) => await LoadFromNetworkAsync();

    private async void OnSelected(object? sender, SelectionChangedEventArgs e)
    {
        if (e.CurrentSelection.FirstOrDefault() is ChurchNotification item)
            await OpenDetailsAsync(item);
        NotificationsView.SelectedItem = null;
    }

    private async void OnMoreClicked(object? sender, EventArgs e)
    {
        if ((sender as Button)?.CommandParameter is not ChurchNotification item) return;

        var actions = new List<string> { "Read more", "Share", "Reminder" };
        if (!item.IsRead) actions.Add("Mark as read");
        actions.Add("Delete");
        var action = await DisplayActionSheet(item.Title, "Cancel", null, actions.ToArray());

        switch (action)
        {
            case "Read more":
                await OpenDetailsAsync(item);
                break;
            case "Share":
                await ShareAsync(item);
                break;
            case "Reminder":
                await SetReminderAsync(item);
                break;
            case "Mark as read":
                await _service.MarkReadAsync(item.AnnouncementId);
                break;
            case "Delete":
                await DeleteAsync(item);
                break;
        }
    }

    private async Task OpenDetailsAsync(ChurchNotification item)
    {
        await Shell.Current.GoToAsync(
            $"{nameof(AnnouncementDetailPage)}?announcementId={Uri.EscapeDataString(item.AnnouncementId.ToString())}");
    }

    private async void OnShareClicked(object? sender, EventArgs e)
    {
        if ((sender as Button)?.CommandParameter is not ChurchNotification item) return;
        await ShareAsync(item);
    }

    private static async Task ShareAsync(ChurchNotification item)
    {
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
        await SetReminderAsync(item);
    }

    private async Task SetReminderAsync(ChurchNotification item)
    {
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
        await DisplayAlert("Reminder set", $"You will be reminded on {reminder:g}.", "OK");
    }

    private async Task DeleteAsync(ChurchNotification item)
    {
        var confirmed = await DisplayAlert(
            "Delete announcement",
            "Delete this announcement from your notifications?",
            "Delete",
            "Cancel");
        if (!confirmed) return;

        await _service.DeleteForCurrentUserAsync(item.AnnouncementId);
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
