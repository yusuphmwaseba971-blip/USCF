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
        RefreshHost.IsRefreshing = true;
        try
        {
            var rows = await _service.GetNotificationsAsync();
            NotificationsView.ItemsSource = rows;
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine(
                $"[ANNOUNCEMENT_FETCH_ERROR] exceptionType={ex.GetType().FullName} message={ex.Message} inner={ex.InnerException?.Message ?? "<none>"}");
            NotificationsView.ItemsSource = null;
            await DisplayAlert("Announcements", $"Unable to load announcements.\n{ex.Message}", "OK");
        }
        finally
        {
            RefreshHost.IsRefreshing = false;
        }
    }
    private async void OnRefreshing(object? sender, EventArgs e) => await LoadAsync();
    private async void OnSelected(object? sender, SelectionChangedEventArgs e)
    {
        if (e.CurrentSelection.FirstOrDefault() is not ChurchNotification notification) return;
        NotificationsView.SelectedItem = null;
    }
}
