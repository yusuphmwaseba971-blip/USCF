using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

using CCT_USCF.Models;
using CCT_USCF.Services;
using Microsoft.Maui.Controls;
using Microsoft.Maui.Storage;

namespace CCT_USCF.Pages;

public partial class PrayerPage : ContentPage
{
    private readonly PrayerService _prayerService;
    private readonly List<PrayerRequest> _items = new();

    public PrayerPage()
    {
        InitializeComponent();
        _prayerService = MauiProgram.Services.GetRequiredService<PrayerService>();
        PrayerRefreshView.Refreshing += OnRefreshRequested;
    }

    protected override async void OnAppearing()
    {
        base.OnAppearing();
        await LoadPrayerWallAsync();
        ShowIntroIfNeeded();
    }

    private async Task LoadPrayerWallAsync()
    {
        try
        {
            var items = await _prayerService.GetPrayerWallAsync(25);
            _items.Clear();
            foreach (var item in items)
                _items.Add(item);

            PrayerCollectionView.ItemsSource = _items.OrderByDescending(x => x.CreatedAtUtc).ToList();
            PrayerRefreshView.IsRefreshing = false;
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine($"[PRAYER] Load wall error: {ex}");
            PrayerCollectionView.ItemsSource = new List<PrayerRequest>();
            PrayerRefreshView.IsRefreshing = false;
        }
    }

    private void ShowIntroIfNeeded()
    {
        var seen = Preferences.Default.Get("PrayerIntroSeen", false);
        IntroOverlay.IsVisible = !seen;
    }

    private async void OnAddPrayerClicked(object sender, EventArgs e)
    {
        await Shell.Current.GoToAsync(nameof(AddPrayerPage));
    }

    private async void OnPrayClicked(object sender, EventArgs e)
    {
        if (sender is not Button button || button.CommandParameter is not string prayerId)
            return;

        try
        {
            var success = await _prayerService.PrayForRequestAsync(prayerId);
            if (!success)
            {
                await DisplayAlert("Prayer", "You have already prayed for this request.", "OK");
                return;
            }

            await DisplayAlert("Someone prayed for this request.", "🙏", "OK");
            await LoadPrayerWallAsync();
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine($"[PRAYER] Prayer action failed: {ex}");
            await DisplayAlert("Prayer", "We couldn't record your prayer action right now.", "OK");
        }
    }

    private void OnRefreshRequested(object? sender, EventArgs e)
    {
        _ = LoadPrayerWallAsync();
    }

    private void OnIntroDismissed(object sender, EventArgs e)
    {
        Preferences.Default.Set("PrayerIntroSeen", true);
        IntroOverlay.IsVisible = false;
    }
}
