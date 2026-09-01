using CCT_USCF.Services;

namespace CCT_USCF.Pages;

public partial class CreateHolyWordPage : ContentPage
{
    private readonly AuthService _auth;
    private string? _pickedFilePath;
    private bool _isAttached;
    private double _trimStart;
    private double _trimEnd;

    public CreateHolyWordPage()
    {
        InitializeComponent();
        _auth = MauiProgram.CreateAuthServiceForPages();
    }

    private async void OnChooseSongClicked(object sender, EventArgs e)
    {
        await DisplayAlert("Coming soon", "Song selection is not available yet.", "OK");
    }

    private async void OnPlayPauseClicked(object sender, EventArgs e)
    {
        await DisplayAlert("Coming soon", "Audio playback is not available yet.", "OK");
    }

    private void OnProgressSliderChanged(object sender, ValueChangedEventArgs e)
    {
        PositionLabel.Text = FormatTime(e.NewValue);
    }

    private void OnStartSliderChanged(object sender, ValueChangedEventArgs e)
    {
        StartLabel.Text = FormatTime(e.NewValue);
        _trimStart = e.NewValue;
    }

    private void OnEndSliderChanged(object sender, ValueChangedEventArgs e)
    {
        EndLabel.Text = FormatTime(e.NewValue);
        _trimEnd = e.NewValue;
    }

    private async void OnPreviewTrimClicked(object sender, EventArgs e)
    {
        await DisplayAlert("Preview", "Trim preview is not available yet.", "OK");
    }

    private async void OnAttachClicked(object sender, EventArgs e)
    {
        _isAttached = true;
        await DisplayAlert("Attach", "Audio attachment is not available yet.", "OK");
    }

    private async void OnCancelClicked(object sender, EventArgs e)
    {
        await Shell.Current.GoToAsync("..", true);
    }

    private static string FormatTime(double value)
    {
        var totalSeconds = Math.Max(0, value);
        var minutes = (int)(totalSeconds / 60);
        var seconds = (int)(totalSeconds % 60);
        return $"{minutes:00}:{seconds:00}";
    }

    private async void OnPostClicked(object sender, EventArgs e)
    {
        if (PostButton.IsEnabled == false)
            return;

        try
        {
            var content = HolyWordEditor.Text?.Trim();

            if (string.IsNullOrWhiteSpace(content))
            {
                await DisplayAlert("Validation", "Holy Word content is required.", "OK");
                return;
            }

            double? trimStart = null;
            double? trimEnd = null;
            string? filePath = null;

            if (_pickedFilePath != null && _isAttached)
            {
                if (_trimEnd <= _trimStart)
                {
                    await DisplayAlert("Validation", "Invalid trim range.", "OK");
                    return;
                }

                trimStart = _trimStart;
                trimEnd = _trimEnd;
                filePath = _pickedFilePath;
            }

            PostButton.IsEnabled = false;
            PostButton.Text = "Posting...";

            var caption = CaptionEditor.Text?.Trim();
            var success = await _auth.PostHolyWordAsync(content, caption, filePath, trimStart, trimEnd);

            if (!success)
            {
                await DisplayAlert("Message Not Sent", "Message could not be sent. Please check your connection and try again.", "OK");
                return;
            }

            HolyWordEditor.Text = string.Empty;
            CaptionEditor.Text = string.Empty;

            _pickedFilePath = null;
            _isAttached = false;
            _trimStart = 0;
            _trimEnd = 0;

            SongNameLabel.Text = "No song selected";
            AudioNoteLabel.Text = string.Empty;

            ProgressSlider.Value = 0;
            StartSlider.Value = 0;

            if (EndSlider.Maximum > 0)
                EndSlider.Value = EndSlider.Maximum;

            PositionLabel.Text = "00:00";
            StartLabel.Text = "00:00";
            EndLabel.Text = "00:00";

            await DisplayAlert("Success", "Holy Word posted successfully.", "OK");
            await Shell.Current.GoToAsync("..", true);
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine($"[HOLY WORD PAGE] Post failed: {ex}");
            await DisplayAlert("Message Not Sent", "Message could not be sent. Please check your connection and try again.", "OK");
        }
        finally
        {
            PostButton.IsEnabled = true;
            PostButton.Text = "POST";
        }
    }
}