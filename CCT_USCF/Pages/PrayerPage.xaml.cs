using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Collections.ObjectModel;

using CCT_USCF.Models;
using CCT_USCF.Services;
using Microsoft.Maui.Controls;
using Microsoft.Maui.Storage;
using Microsoft.Maui.ApplicationModel;

namespace CCT_USCF.Pages;

public partial class PrayerPage : ContentPage
{
    private readonly PrayerService _prayerService;
    private readonly AppAppearanceService _appearance;
    private readonly ObservableCollection<PrayerRequest> _items = new();
    private bool _isLoadingMore = false;
    private bool _initialLoadCompleted;
    private bool _noMoreRemotePrayers;
    private bool _isOpeningAddPrayer;

    public PrayerPage()
    {
        InitializeComponent();
        _prayerService = MauiProgram.Services.GetRequiredService<PrayerService>();
        _appearance = MauiProgram.Services.GetRequiredService<AppAppearanceService>();
        PrayerRefreshView.Refreshing += OnRefreshRequested;
        _prayerService.PrayersSynchronized += OnPrayersSynchronized;
    }

    protected override async void OnAppearing()
    {
        base.OnAppearing();
        _appearance.AppearanceChanged += OnAppearanceChanged;
        await LoadPrayerWallAsync();
        ShowIntroIfNeeded();
    }

    protected override void OnDisappearing()
    {
        _appearance.AppearanceChanged -= OnAppearanceChanged;
        base.OnDisappearing();
    }

    private void OnAppearanceChanged(object? sender, EventArgs e)
    {
        MainThread.BeginInvokeOnMainThread(() =>
        {
            if (PrayerErrorState.IsVisible)
                PrayerErrorMessage.SetDynamicResource(Label.TextProperty, "AppText_Prayer_LoadError");
        });
    }

    private async Task LoadPrayerWallAsync()
    {
        _initialLoadCompleted = false;
        _noMoreRemotePrayers = false;
        PrayerLoadingIndicator.IsVisible = true;
        PrayerErrorState.IsVisible = false;
        try
        {
            // Local-first initial load
            var items = await _prayerService.GetInitialPrayersAsync();

            _items.Clear();
            foreach (var item in StableInitialOrder(items))
                _items.Add(item);

            PrayerCollectionView.ItemsSource = _items;
            _initialLoadCompleted = true;
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine($"[PRAYER_FETCH_ERROR] exceptionType={ex.GetType().FullName} message={ex.Message}");
            PrayerCollectionView.ItemsSource = null;
            PrayerErrorMessage.SetDynamicResource(Label.TextProperty, "AppText_Prayer_LoadError");
            PrayerErrorState.IsVisible = true;
        }
        finally
        {
            PrayerLoadingIndicator.IsVisible = false;
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
        if (_isOpeningAddPrayer)
            return;

        try
        {
            _isOpeningAddPrayer = true;
            if (sender is Button button)
                button.IsEnabled = false;

            var shell = Shell.Current
                ?? throw new InvalidOperationException("The app navigation shell is not available.");
            await shell.GoToAsync(nameof(AddPrayerPage));
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine(
                $"[PRAYER_NAVIGATION_ERROR] exceptionType={ex.GetType().FullName} message={ex.Message}");
            await DisplayAlert(
                _appearance.GetText("Prayer.RequestValidationTitle"),
                _appearance.GetText("Prayer.NavigationError"),
                _appearance.GetText("Common.Ok"));
        }
        finally
        {
            _isOpeningAddPrayer = false;
            if (sender is Button button)
                button.IsEnabled = true;
        }
    }

    private async void OnPrayClicked(object sender, EventArgs e)
    {
        if (sender is not Button button || button.CommandParameter is not string prayerId)
            return;

        try
        {
            button.IsEnabled = false;
            button.Text = _appearance.GetText("Prayer.SaveAction");
            var result = await _prayerService.PrayForRequestAsync(prayerId);
            if (button.BindingContext is PrayerRequest prayer)
            {
                prayer.IsPrayed = result.HasPrayed;
                prayer.PrayerCount = result.Count;
            }

            button.Text = _appearance.GetText("Prayer.IPrayed");
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine($"[PRAYER] Prayer action failed: {ex}");
            await DisplayAlert(
                _appearance.GetText("Prayer.Title"),
                _appearance.GetText("Prayer.ActionError"),
                _appearance.GetText("Common.Ok"));
            button.Text = _appearance.GetText("Prayer.IPray");
            button.IsEnabled = true;
        }
    }

    private async void OnMyRequestsClicked(object sender, EventArgs e) =>
        await Shell.Current.GoToAsync(nameof(MyPrayerRequestsPage));

    private async void OnCommunityClicked(object sender, EventArgs e) =>
        await Shell.Current.GoToAsync(nameof(CommunityPage));

    private void OnRefreshRequested(object? sender, EventArgs e)
    {
        // Manual refresh: Sync new/changed prayers and refresh UI from cache
        _ = Task.Run(async () =>
        {
            try
            {
                System.Diagnostics.Debug.WriteLine("[PRAYER_REFRESH_START]");
                var refreshed = await _prayerService.RefreshPrayersAsync(50);
                MainThread.BeginInvokeOnMainThread(() =>
                {
                    ReplaceItems(refreshed);
                    PrayerRefreshView.IsRefreshing = false;
                });
                System.Diagnostics.Debug.WriteLine("[PRAYER_REFRESH_COMPLETE]");
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine($"[PRAYER_REFRESH_ERROR] {ex}");
                MainThread.BeginInvokeOnMainThread(() =>
                {
                    PrayerRefreshView.IsRefreshing = false;
                });
            }
        });
    }

    private async void OnRetryFetchClicked(object sender, EventArgs e) => await LoadPrayerWallAsync();

    private void OnIntroDismissed(object sender, EventArgs e)
    {
        Preferences.Default.Set("PrayerIntroSeen", true);
        IntroOverlay.IsVisible = false;
    }

    private async void OnRemainingItemsThresholdReached(object sender, EventArgs e)
    {
        if (!_initialLoadCompleted || _isLoadingMore || _noMoreRemotePrayers)
            return;
        _isLoadingMore = true;
        try
        {
            System.Diagnostics.Debug.WriteLine("[PRAYER_LOAD_MORE_TRIGGER] starting");
            var more = await _prayerService.LoadMorePrayersAsync(3);
            if (more != null && more.Any())
            {
                foreach (var item in more)
                    if (_items.All(existing => existing.PrayerId != item.PrayerId))
                        _items.Add(item);
                System.Diagnostics.Debug.WriteLine($"[PRAYER_LOAD_MORE_COMPLETE] appended={more.Count}");
            }
            else
            {
                _noMoreRemotePrayers = true;
                System.Diagnostics.Debug.WriteLine("[PRAYER_LOAD_MORE_COMPLETE] no-more");
            }

        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine($"[PRAYER_LOAD_MORE_ERROR] {ex}");
        }
        finally
        {
            _isLoadingMore = false;
        }
    }

    private void OnPrayersSynchronized(IReadOnlyList<PrayerRequest> prayers) =>
        MainThread.BeginInvokeOnMainThread(() => AppendOnly(prayers));

    private void AppendOnly(IEnumerable<PrayerRequest> prayers)
    {
        foreach (var prayer in prayers)
            if (_items.All(existing => existing.PrayerId != prayer.PrayerId))
                _items.Add(prayer);
    }

    private void ReplaceItems(IEnumerable<PrayerRequest> prayers)
    {
        _items.Clear();
        foreach (var prayer in prayers)
            _items.Add(prayer);
        PrayerCollectionView.ItemsSource = _items;
    }

    private static IEnumerable<PrayerRequest> StableInitialOrder(IEnumerable<PrayerRequest> prayers) =>
        prayers.OrderBy(prayer => StableOrderKey(prayer.PrayerId));

    private static int StableOrderKey(string value)
    {
        unchecked
        {
            var hash = 17;
            foreach (var character in value)
                hash = hash * 31 + character;
            return hash;
        }
    }
}
