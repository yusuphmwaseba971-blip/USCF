using System.Linq;
using System.Threading.Tasks;

using CCT_USCF.Models;
using CCT_USCF.Services;

namespace CCT_USCF.Pages;

public partial class MyPrayerRequestsPage : ContentPage
{
    private readonly PrayerService _prayerService;
    private readonly AppAppearanceService _appearance;

    public MyPrayerRequestsPage()
    {
        InitializeComponent();
        _prayerService = MauiProgram.Services.GetRequiredService<PrayerService>();
        _appearance = MauiProgram.Services.GetRequiredService<AppAppearanceService>();
    }

    protected override async void OnAppearing()
    {
        base.OnAppearing();
        await LoadMyRequestsAsync();
    }

    private async Task LoadMyRequestsAsync()
    {
        LoadingState.IsVisible = true;
        ErrorState.IsVisible = false;
        RequestsCollectionView.IsVisible = false;
        try
        {
            var list = await _prayerService.GetMyPrayersAsync();
            RequestsCollectionView.ItemsSource = list.OrderByDescending(x => x.CreatedAtUtc).ToList();
            RequestsCollectionView.IsVisible = true;
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine($"[PRAYER] LoadMyRequests error: {ex}");
            ErrorMessage.SetDynamicResource(Label.TextProperty, "AppText_Prayer_LoadMineError");
            ErrorState.IsVisible = true;
        }
        finally
        {
            LoadingState.IsVisible = false;
        }
    }

    private async void OnRetryClicked(object sender, EventArgs e) =>
        await LoadMyRequestsAsync();

    private async void OnDeleteClicked(object sender, EventArgs e)
    {
        if (sender is Button b && b.BindingContext is CCT_USCF.Models.PrayerRequest dto)
        {
            var ok = await DisplayAlert(
                _appearance.GetText("Prayer.Confirm"),
                _appearance.GetText("Prayer.DeleteConfirm"),
                _appearance.GetText("Common.Delete"),
                _appearance.GetText("Common.Cancel"));
            if (!ok) return;

            try
            {
                var prayer = await _prayerService.GetPrayerAsync(dto.PrayerId);
                if (prayer == null)
                {
                    await DisplayAlert(
                        _appearance.GetText("Settings.Error"),
                        _appearance.GetText("Prayer.NotFound"),
                        _appearance.GetText("Common.Ok"));
                    return;
                }

                await DisplayAlert(
                    _appearance.GetText("Prayer.MyRequests"),
                    _appearance.GetText("Prayer.RemovalDisabled"),
                    _appearance.GetText("Common.Ok"));
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine($"[PRAYER] Delete error: {ex}");
                await DisplayAlert(
                    _appearance.GetText("Settings.Error"),
                    _appearance.GetText("Prayer.DeleteError"),
                    _appearance.GetText("Common.Ok"));
            }
        }
    }

    private async void OnBackClicked(object sender, EventArgs e)
    {
        await Shell.Current.GoToAsync("..", true);
    }
}
