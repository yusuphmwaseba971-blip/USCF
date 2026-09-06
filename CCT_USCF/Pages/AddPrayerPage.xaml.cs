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

    public AddPrayerPage()
    {
        InitializeComponent();
        _prayerService = MauiProgram.Services.GetRequiredService<PrayerService>();
        LoadPickers();
    }

    private void LoadPickers()
    {
        CategoryPicker.ItemsSource = Enum.GetNames(typeof(PrayerCategory)).Select(ToFriendlyName).ToList();
        ReachPicker.ItemsSource = Enum.GetNames(typeof(PrayerReach)).Select(ToFriendlyName).ToList();
        VisibilityPicker.ItemsSource = Enum.GetNames(typeof(PrayerVisibility)).Select(ToFriendlyName).ToList();
        NameVisibilityPicker.ItemsSource = Enum.GetNames(typeof(PrayerNameVisibility)).Select(ToFriendlyName).ToList();

        CategoryPicker.SelectedIndex = 0;
        ReachPicker.SelectedIndex = 3;
        VisibilityPicker.SelectedIndex = 2;
        NameVisibilityPicker.SelectedIndex = 0;
    }

    private async void OnSubmitPrayerClicked(object sender, EventArgs e)
    {
        var content = PrayerEditor.Text?.Trim();
        if (string.IsNullOrWhiteSpace(content))
        {
            await DisplayAlert("Prayer request", "Please write a prayer request before submitting.", "OK");
            return;
        }

        if (CategoryPicker.SelectedIndex < 0 || ReachPicker.SelectedIndex < 0 || VisibilityPicker.SelectedIndex < 0 || NameVisibilityPicker.SelectedIndex < 0)
        {
            await DisplayAlert("Prayer request", "Please complete every field before submitting.", "OK");
            return;
        }

        try
        {
            SubmitPrayerButton.IsEnabled = false;
            SubmitPrayerButton.Text = "Submitting...";

            var category = ParseEnum<PrayerCategory>(CategoryPicker.SelectedItem?.ToString());
            var reach = ParseEnum<PrayerReach>(ReachPicker.SelectedItem?.ToString());
            var visibility = ParseEnum<PrayerVisibility>(VisibilityPicker.SelectedItem?.ToString());
            var nameVisibility = ParseEnum<PrayerNameVisibility>(NameVisibilityPicker.SelectedItem?.ToString());

            await _prayerService.CreatePrayerAsync(content, category, reach, visibility, nameVisibility);
            await DisplayAlert("Prayer shared", "Your prayer request has been shared with the community.", "OK");
            await Shell.Current.GoToAsync("..");
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine($"[PRAYER] Create error: {ex}");
            await DisplayAlert("Prayer request", "We couldn't submit your prayer request right now. Please try again.", "OK");
        }
        finally
        {
            SubmitPrayerButton.IsEnabled = true;
            SubmitPrayerButton.Text = "🙏 ADD PRAYER";
        }
    }

    private static T ParseEnum<T>(string? value) where T : struct, Enum
    {
        if (string.IsNullOrWhiteSpace(value))
            return Enum.GetValues<T>().First();

        var normalized = value.Replace(" ", string.Empty).Replace("-", string.Empty);
        if (Enum.TryParse<T>(normalized, true, out var result))
            return result;

        return Enum.GetValues<T>().First();
    }

    private static string ToFriendlyName(string value)
    {
        var text = value.Replace("Uscf", "USCF");
        text = System.Text.RegularExpressions.Regex.Replace(text, "([a-z])([A-Z])", "$1 $2");
        return text;
    }
}
