using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

using CCT_USCF.Models;
using CCT_USCF.Services;

namespace CCT_USCF.Pages;

public partial class AddPrayerPage : ContentPage
{
    private readonly PrayerService _prayerService;
    private readonly AppAppearanceService _appearance;

    public AddPrayerPage()
    {
        InitializeComponent();
        _prayerService = MauiProgram.Services.GetRequiredService<PrayerService>();
        _appearance = MauiProgram.Services.GetRequiredService<AppAppearanceService>();
        LoadPickers();
    }

    protected override void OnAppearing()
    {
        base.OnAppearing();
        _appearance.AppearanceChanged += OnAppearanceChanged;
        RefreshPickerLabels();
    }

    protected override void OnDisappearing()
    {
        _appearance.AppearanceChanged -= OnAppearanceChanged;
        base.OnDisappearing();
    }

    private void OnAppearanceChanged(object? sender, EventArgs e) =>
        MainThread.BeginInvokeOnMainThread(RefreshPickerLabels);

    private void LoadPickers()
    {
        RefreshPickerLabels();

        CategoryPicker.SelectedIndex = 0;
        ReachPicker.SelectedIndex = 3;
        VisibilityPicker.SelectedIndex = 2;
        NameVisibilityPicker.SelectedIndex = 0;
    }

    private void RefreshPickerLabels()
    {
        SetPickerItems<PrayerCategory>(CategoryPicker);
        SetPickerItems<PrayerReach>(ReachPicker);
        SetPickerItems<PrayerVisibility>(VisibilityPicker);
        SetPickerItems<PrayerNameVisibility>(NameVisibilityPicker);
    }

    private void SetPickerItems<TEnum>(Picker picker) where TEnum : struct, Enum
    {
        var selectedIndex = picker.SelectedIndex;
        picker.ItemsSource = Enum.GetValues<TEnum>()
            .Select(value => _appearance.GetText($"Prayer.Option.{typeof(TEnum).Name}.{value}"))
            .ToList();
        picker.SelectedIndex = selectedIndex;
    }

    private async void OnSubmitPrayerClicked(object sender, EventArgs e)
    {
        var content = PrayerEditor.Text?.Trim();
        if (string.IsNullOrWhiteSpace(content))
        {
            await DisplayAlert(
                _appearance.GetText("Prayer.RequestValidationTitle"),
                _appearance.GetText("Prayer.WriteBeforeSubmit"),
                _appearance.GetText("Common.Ok"));
            return;
        }

        if (CategoryPicker.SelectedIndex < 0 || ReachPicker.SelectedIndex < 0 || VisibilityPicker.SelectedIndex < 0 || NameVisibilityPicker.SelectedIndex < 0)
        {
            await DisplayAlert(
                _appearance.GetText("Prayer.RequestValidationTitle"),
                _appearance.GetText("Prayer.CompleteFields"),
                _appearance.GetText("Common.Ok"));
            return;
        }

        try
        {
            SubmitPrayerButton.IsEnabled = false;
            SubmitPrayerButton.Text = _appearance.GetText("Prayer.Submitting");

            var category = GetSelectedEnum<PrayerCategory>(CategoryPicker);
            var reach = GetSelectedEnum<PrayerReach>(ReachPicker);
            var visibility = GetSelectedEnum<PrayerVisibility>(VisibilityPicker);
            var nameVisibility = GetSelectedEnum<PrayerNameVisibility>(NameVisibilityPicker);

            await _prayerService.CreatePrayerAsync(content, category, reach, visibility, nameVisibility);
            await DisplayAlert(
                _appearance.GetText("Prayer.SharedTitle"),
                _appearance.GetText("Prayer.SharedMessage"),
                _appearance.GetText("Common.Ok"));
            await Shell.Current.GoToAsync("..");
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine(
                $"[PRAYER_REQUEST_ERROR] exceptionType={ex.GetType().FullName} message={ex.Message}");
            await DisplayAlert(
                _appearance.GetText("Prayer.RequestValidationTitle"),
                _appearance.GetText("Prayer.SubmitError", ex.Message),
                _appearance.GetText("Common.Ok"));
        }
        finally
        {
            SubmitPrayerButton.IsEnabled = true;
            SubmitPrayerButton.Text = _appearance.GetText("Prayer.Submit");
        }
    }

    private static TEnum GetSelectedEnum<TEnum>(Picker picker) where TEnum : struct, Enum
    {
        var values = Enum.GetValues<TEnum>();
        if (picker.SelectedIndex < 0 || picker.SelectedIndex >= values.Length)
            throw new InvalidOperationException("A valid prayer option must be selected.");
        return values[picker.SelectedIndex];
    }
}
