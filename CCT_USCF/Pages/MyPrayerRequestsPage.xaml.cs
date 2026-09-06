using System.Linq;
using System.Threading.Tasks;

using CCT_USCF.Models;
using CCT_USCF.Services;

namespace CCT_USCF.Pages;

public partial class MyPrayerRequestsPage : ContentPage
{
    private readonly PrayerService _prayerService;

    public MyPrayerRequestsPage()
    {
        InitializeComponent();
        _prayerService = MauiProgram.Services.GetRequiredService<PrayerService>();
    }

    protected override async void OnAppearing()
    {
        base.OnAppearing();
        await LoadMyRequestsAsync();
    }

    private async Task LoadMyRequestsAsync()
    {
        try
        {
            var list = await _prayerService.GetMyPrayersAsync();
            RequestsCollectionView.ItemsSource = list.OrderByDescending(x => x.CreatedAtUtc).ToList();
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine($"[PRAYER] LoadMyRequests error: {ex}");
            await DisplayAlert("Error", "Unable to load your prayer requests right now.", "OK");
        }
    }

    private async void OnDeleteClicked(object sender, EventArgs e)
    {
        if (sender is Button b && b.BindingContext is CCT_USCF.Models.PrayerRequest dto)
        {
            var ok = await DisplayAlert("Confirm", "Delete this prayer request?", "Delete", "Cancel");
            if (!ok) return;

            try
            {
                var prayer = await _prayerService.GetPrayerAsync(dto.PrayerId);
                if (prayer == null)
                {
                    await DisplayAlert("Error", "Unable to find this prayer request.", "OK");
                    return;
                }

                await DisplayAlert("Prayer requests", "Prayer removal is not enabled in the current prayer wall release.", "OK");
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine($"[PRAYER] Delete error: {ex}");
                await DisplayAlert("Error", "Unable to delete prayer request right now.", "OK");
            }
        }
    }

    private async void OnBackClicked(object sender, EventArgs e)
    {
        await Shell.Current.GoToAsync("..", true);
    }
}
