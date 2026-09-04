using CCT_USCF.Models;
using CCT_USCF.Services;

namespace CCT_USCF.Pages;

public partial class AnnouncementActivityPage : ContentPage
{
    private readonly ChurchAnnouncementService _service;
    public AnnouncementActivityPage()
    {
        InitializeComponent();
        _service = MauiProgram.Services.GetRequiredService<ChurchAnnouncementService>();
        NotificationsView.SelectionChanged += OnSelected;
    }
    protected override async void OnAppearing() { base.OnAppearing(); await LoadAsync(); }
    private async Task LoadAsync()
    {
        try { NotificationsView.ItemsSource = await _service.GetNotificationsAsync(); }
        catch (Exception ex) { await DisplayAlert("Announcements", ex.Message, "OK"); }
    }
    private async void OnSelected(object? sender, SelectionChangedEventArgs e)
    {
        if (e.CurrentSelection.FirstOrDefault() is not ChurchNotification notification) return;
        if (!notification.IsRead) await _service.MarkReadAsync(notification.Id);
        NotificationsView.SelectedItem = null;
        await LoadAsync();
    }
}
