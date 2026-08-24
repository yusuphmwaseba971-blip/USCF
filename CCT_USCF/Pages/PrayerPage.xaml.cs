using System;

namespace CCT_USCF.Pages;

public partial class PrayerPage : ContentPage
{
    private readonly CCT_USCF.Services.CommunityService _community;

    public PrayerPage()
    {
        InitializeComponent();
        _community = (CCT_USCF.Services.CommunityService)MauiProgram.Services.GetService(typeof(CCT_USCF.Services.CommunityService))!;
    }

    private async void OnSubmitClicked(object sender, EventArgs e)
    {
        var title = TitleEntry?.Text?.Trim() ?? string.Empty;
        var description = DescriptionEditor?.Text?.Trim() ?? string.Empty;

        if (string.IsNullOrWhiteSpace(title) || string.IsNullOrWhiteSpace(description))
        {
            await DisplayAlert("Validation", "Please enter a title and description for the prayer request.", "OK");
            return;
        }

        try
        {
            SubmitButton.IsEnabled = false;
            SubmitButton.Text = "Sending...";

            var dto = await _community.CreatePrayerRequestAsync(title, description);
            if (dto != null)
            {
                await DisplayAlert("Success", "Prayer request submitted.", "OK");
                TitleEntry.Text = string.Empty;
                DescriptionEditor.Text = string.Empty;
            }
            else
            {
                await DisplayAlert("Error", "Server did not return the created prayer request.", "OK");
            }
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine($"[PRAYER] Create error: {ex}");
            await DisplayAlert("Error", ex.Message.Contains("Unauthorized") ? "You must be logged in to submit a prayer request." : "Unable to submit prayer request. Server may be unavailable.", "OK");
        }
        finally
        {
            SubmitButton.IsEnabled = true;
            SubmitButton.Text = "🙏 Submit Prayer Request";
        }
    }
}