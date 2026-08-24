using System.Linq;
using System.Threading.Tasks;

namespace CCT_USCF.Pages;

public partial class MyPrayerRequestsPage : ContentPage
{
    private readonly CCT_USCF.Services.CommunityService _community;

    public MyPrayerRequestsPage()
    {
        InitializeComponent();
        _community = (CCT_USCF.Services.CommunityService)MauiProgram.Services.GetService(typeof(CCT_USCF.Services.CommunityService))!;
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
            var list = await _community.GetMyPrayerRequestsAsync();
            RequestsCollectionView.ItemsSource = list.OrderByDescending(x => x.CreatedAtUtc).ToList();
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine($"[PRAYER] LoadMyRequests error: {ex}");
            await DisplayAlert("Error", "Unable to load your prayer requests. Server may be unavailable.", "OK");
        }
    }

    private async void OnDeleteClicked(object sender, EventArgs e)
    {
        if (sender is Button b && b.BindingContext is CCT_USCF.Models.PrayerRequestDto dto)
        {
            var ok = await DisplayAlert("Confirm", "Delete this prayer request?", "Delete", "Cancel");
            if (!ok) return;

            try
            {
                var success = await _community.DeletePrayerRequestAsync(dto.Id);
                if (success)
                {
                    await DisplayAlert("Deleted", "Prayer request deleted.", "OK");
                    await LoadMyRequestsAsync();
                }
                else
                {
                    await DisplayAlert("Error", "Unable to delete prayer request.", "OK");
                }
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine($"[PRAYER] Delete error: {ex}");
                await DisplayAlert("Error", "Unable to delete prayer request. Server may be unavailable.", "OK");
            }
        }
    }

    private async void OnBackClicked(object sender, EventArgs e)
    {
        await Shell.Current.GoToAsync("..", true);
    }
}
