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
    private readonly ObservableCollection<PrayerRequest> _items = new();
    private bool _isLoadingMore = false;
    private bool _initialLoadCompleted;
    private bool _noMoreRemotePrayers;
    private bool _isOpeningAddPrayer;

    public PrayerPage()
    {
        InitializeComponent();
        _prayerService = MauiProgram.Services.GetRequiredService<PrayerService>();
        PrayerRefreshView.Refreshing += OnRefreshRequested;
        _prayerService.PrayersSynchronized += OnPrayersSynchronized;
    }

    protected override void OnAppearing()
    {
        base.OnAppearing();
        _ = LoadPrayerWallAsync();
        ShowIntroIfNeeded();
    }

    private async Task LoadPrayerWallAsync()
    {
        _initialLoadCompleted = false;
        _noMoreRemotePrayers = false;
        var backgroundLoadStarted = false;
        PrayerLoadingIndicator.IsVisible = true;
        PrayerErrorState.IsVisible = false;
        try
        {
            var items = await _prayerService.GetCachedPrayersAsync();

            _items.Clear();
            foreach (var item in StableInitialOrder(items))
                _items.Add(item);

            PrayerCollectionView.ItemsSource = _items;
            _initialLoadCompleted = true;

            if (items.Count == 0)
            {
                PrayerLoadingIndicator.IsVisible = true;
                backgroundLoadStarted = true;
                _ = LoadInitialPrayerWallInBackgroundAsync();
            }
            else
            {
                _ = _prayerService.SyncNewAndChangedPrayersAsync();
            }
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine($"[PRAYER_FETCH_ERROR] exceptionType={ex.GetType().FullName} message={ex.Message}");
            PrayerCollectionView.ItemsSource = null;
            PrayerErrorMessage.Text = "Unable to load prayer requests.";
            PrayerErrorState.IsVisible = true;
        }

        finally
        {
            if (!backgroundLoadStarted)
                PrayerLoadingIndicator.IsVisible = false;
            PrayerRefreshView.IsRefreshing = false;
        }
    }

    private async Task LoadInitialPrayerWallInBackgroundAsync()
    {
        try
        {
            var items = await _prayerService.GetInitialPrayersAsync();
            await MainThread.InvokeOnMainThreadAsync(() =>
            {
                ReplaceItems(StableInitialOrder(items));
                _initialLoadCompleted = true;
            });
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine($"[PRAYER_BACKGROUND_LOAD_ERROR] {ex}");
        }
        finally
        {
            await MainThread.InvokeOnMainThreadAsync(() =>
            {
                PrayerLoadingIndicator.IsVisible = false;
                PrayerRefreshView.IsRefreshing = false;
            });
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
            await DisplayAlert("Prayer request", "We couldn't open the prayer form. Please try again.", "OK");
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
            button.Text = "Saving...";
            var result = await _prayerService.PrayForRequestAsync(prayerId);
            if (button.BindingContext is PrayerRequest prayer)
            {
                prayer.IsPrayed = result.HasPrayed;
                prayer.PrayerCount = result.Count;
            }

            button.Text = "🙏  I PRAYED";
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine($"[PRAYER] Prayer action failed: {ex}");
            await DisplayAlert("Prayer", "We couldn't record your prayer action right now.", "OK");
            button.Text = "🙏  I PRAY";
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
