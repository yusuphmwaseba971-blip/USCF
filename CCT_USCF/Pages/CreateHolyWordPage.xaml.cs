using Microsoft.Maui.Storage;

namespace CCT_USCF.Pages;

[QueryProperty(nameof(Destination), "destination")]
[QueryProperty(nameof(Group), "group")]
public partial class CreateHolyWordPage : ContentPage
{
    private Services.AuthService _auth;
    private Services.IAudioPlayer? _player;
    private string? _pickedFilePath;
    private bool _isAttached = false;
    private double _trimStart = 0;
    private double _trimEnd = 0;
    private bool _isPlayingPreview = false;
    private string _selectedDestination = string.Empty;
    private string _selectedGroup = string.Empty;

    public CreateHolyWordPage()
    {
        InitializeComponent();
        _auth = LoginRegisterHelpers.GetAuthService();
    }

    public string Destination
    {
        set => _selectedDestination = Uri.UnescapeDataString(value ?? string.Empty);
    }

    public string Group
    {
        set
        {
            _selectedGroup = Uri.UnescapeDataString(value ?? string.Empty);
            SelectedGroupLabel.Text = string.IsNullOrWhiteSpace(_selectedGroup)
                ? string.Empty
                : $"Destination: {_selectedDestination} | Group: {_selectedGroup}";
        }
    }

    protected override void OnAppearing()
    {
        base.OnAppearing();
        if (string.IsNullOrWhiteSpace(_selectedGroup))
        {
            _ = ReturnToGroupSelectionAsync();
            return;
        }

        LoadPosterInfo();
    }

    private async Task ReturnToGroupSelectionAsync()
    {
        await Shell.Current.GoToAsync(nameof(ChurchGroupSelectionPage), true);
    }

    private async void LoadPosterInfo()
    {
        try
        {
            var user = MauiProgram.CurrentUser ?? await _auth.GetCurrentUserAsync();
            if (user == null)
            {
                await DisplayAlert("Not authenticated", "Please sign in.", "OK");
                await Shell.Current.GoToAsync("//home");
                return;
            }

            PosterNameLabel.Text = user.FullName;
            PosterBranchLabel.Text = user.Branch ?? "";
        }
        catch (Exception ex)
        {
            await DisplayAlert("Error", ex.Message, "OK");
        }
    }

    private async void OnChooseSongClicked(object sender, EventArgs e)
    {
        try
        {
            var result = await FilePicker.Default.PickAsync(); // pick any file (audio expected)
            if (result == null) return;

            // On some platforms FullPath may be null — use OpenRead to copy to a local file
            var fullPath = result.FullPath;
            if (string.IsNullOrEmpty(fullPath))
            {
                // copy to cache
                var stream = await result.OpenReadAsync();
                var cachePath = Path.Combine(FileSystem.CacheDirectory, result.FileName);
                using var fs = System.IO.File.Create(cachePath);
                await stream.CopyToAsync(fs);
                fullPath = cachePath;
            }

            _pickedFilePath = fullPath;
            SongNameLabel.Text = result.FileName;

            // initialize audio player (platform-specific)
            try
            {
                _player = MauiProgram.Services.GetService(typeof(Services.IAudioPlayer)) as Services.IAudioPlayer;
                if (_player != null)
                {
                    await _player.LoadAsync(_pickedFilePath);
                    var dur = _player.Duration;
                    DurationLabel.Text = "/ " + TimeSpan.FromSeconds(dur).ToString(@"mm\:ss");
                    ProgressSlider.Maximum = dur;
                    StartSlider.Maximum = dur;
                    EndSlider.Maximum = dur;
                    EndSlider.Value = dur;
                    StartLabel.Text = TimeSpan.FromSeconds(StartSlider.Value).ToString(@"mm\:ss");
                    EndLabel.Text = TimeSpan.FromSeconds(EndSlider.Value).ToString(@"mm\:ss");

                    PlayPauseButton.IsEnabled = true;
                    ProgressSlider.IsEnabled = true;
                    StartSlider.IsEnabled = true;
                    EndSlider.IsEnabled = true;
                    PreviewTrimButton.IsEnabled = true;
                    AttachButton.IsEnabled = true;

                    AudioNoteLabel.Text = $"Selected: {result.FileName}";

                    // start UI timer to update progress when playing
                    Device.StartTimer(TimeSpan.FromMilliseconds(200), () =>
                    {
                        if (_player != null && _player.IsPlaying)
                        {
                            var pos = _player.Position;
                            ProgressSlider.Value = pos;
                            PositionLabel.Text = TimeSpan.FromSeconds(pos).ToString("mm\\:ss");
                        }
                        return true;
                    });
                }
                else
                {
                    // player not available
                    AudioNoteLabel.Text = "Audio playback not available on this device.";
                    AttachButton.IsEnabled = true;
                }
            }
            catch (Exception ex)
            {
                await DisplayAlert("Audio Error", ex.Message, "OK");
                AttachButton.IsEnabled = true;
            }
        }
        catch (Exception ex)
        {
            await DisplayAlert("Error", ex.Message, "OK");
        }
    }


    private void OnAttachClicked(object sender, EventArgs e)
    {
        if (_pickedFilePath == null)
        {
            DisplayAlert("Validation", "No audio selected.", "OK");
            return;
        }

        // use sliders values for trim
        var start = StartSlider.Value;
        var end = EndSlider.Value;

        if (end <= start)
        {
            DisplayAlert("Validation", "End must be greater than start.", "OK");
            return;
        }

        _trimStart = start;
        _trimEnd = end;

        _isAttached = true;
        AudioNoteLabel.Text = $"✓ Audio attached ✂ {TimeSpan.FromSeconds(_trimStart).ToString(@"mm\:ss")} – {TimeSpan.FromSeconds(_trimEnd).ToString(@"mm\:ss")}";
    }

    private async void OnPostClicked(object sender, EventArgs e)
    {
        PostButton.IsEnabled = false;
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
                // validate trim
                if (_trimEnd <= _trimStart) { await DisplayAlert("Validation", "Invalid trim range.", "OK"); return; }
                trimStart = _trimStart;
                trimEnd = _trimEnd;
                filePath = _pickedFilePath;
            }

            // show loading
            PostButton.Text = "Posting...";

            var caption = CaptionEditor.Text;
            var success = await _auth.PostHolyWordAsync(content, caption, filePath, trimStart, trimEnd);
            if (!success)
            {
                await DisplayAlert("Error", "Unable to create post.", "OK");
                return;
            }

            // Clear composer state
            HolyWordEditor.Text = string.Empty;
            CaptionEditor.Text = string.Empty;
            _pickedFilePath = null;
            _isAttached = false;
            SongNameLabel.Text = "No song selected";

            // Navigate back to Community and attempt to refresh
            await Shell.Current.GoToAsync("..", true);

            // Optionally show success
            await DisplayAlert("Success", "Holy Word posted.", "OK");
        }
        catch (Exception ex)
        {
            await DisplayAlert("Error", ex.Message, "OK");
        }
        finally
        {
            PostButton.IsEnabled = true;
            PostButton.Text = "POST";
        }
    }

    private async void OnCancelClicked(object sender, EventArgs e)
    {
        await Shell.Current.GoToAsync("..", true);
    }

    protected override void OnDisappearing()
    {
        base.OnDisappearing();
        try
        {
            if (_player != null)
            {
                _player.Release();
                _player = null;
            }
        }
        catch { }
    }

    private async void OnPlayPauseClicked(object sender, EventArgs e)
    {
        try
        {
            if (_player == null) return;
            if (_player.IsPlaying)
            {
                _player.Pause();
                PlayPauseButton.Text = "▶";
            }
            else
            {
                _player.Play();
                PlayPauseButton.Text = "⏸";
            }
        }
        catch (Exception ex)
        {
            await DisplayAlert("Audio Error", ex.Message, "OK");
        }
    }

    private void OnProgressSliderChanged(object sender, ValueChangedEventArgs e)
    {
        try
        {
            if (_player == null) return;
            var val = e.NewValue;
            // Seek immediately when user changes
            _player.Seek(val);
            PositionLabel.Text = TimeSpan.FromSeconds(val).ToString(@"mm\:ss");
        }
        catch { }
    }

    private void OnStartSliderChanged(object sender, ValueChangedEventArgs e)
    {
        try
        {
            StartLabel.Text = TimeSpan.FromSeconds(StartSlider.Value).ToString(@"mm\:ss");
            // ensure start < end
            if (StartSlider.Value >= EndSlider.Value) EndSlider.Value = Math.Min(StartSlider.Value + 1, EndSlider.Maximum);
        }
        catch { }
    }

    private void OnEndSliderChanged(object sender, ValueChangedEventArgs e)
    {
        try
        {
            EndLabel.Text = TimeSpan.FromSeconds(EndSlider.Value).ToString(@"mm\:ss");
            // ensure end > start
            if (EndSlider.Value <= StartSlider.Value) StartSlider.Value = Math.Max(0, EndSlider.Value - 1);
        }
        catch { }
    }

    private async void OnPreviewTrimClicked(object sender, EventArgs e)
    {
        if (_player == null)
        {
            await DisplayAlert("Preview", "No audio loaded.", "OK");
            return;
        }

        var start = StartSlider.Value;
        var end = EndSlider.Value;
        if (end <= start)
        {
            await DisplayAlert("Validation", "End must be greater than start for preview.", "OK");
            return;
        }

        try
        {
            _isPlayingPreview = true;
            _player.Seek(start);
            _player.Play();
            PlayPauseButton.Text = "⏸";

            // monitor playback and stop at end
            Device.StartTimer(TimeSpan.FromMilliseconds(200), () =>
            {
                if (!_isPlayingPreview || _player == null) return false;
                var pos = _player.Position;
                ProgressSlider.Value = pos;
                PositionLabel.Text = TimeSpan.FromSeconds(pos).ToString(@"mm\:ss");
                if (pos >= end)
                {
                    // stop
                    _player.Pause();
                    _player.Seek(end);
                    PlayPauseButton.Text = "▶";
                    _isPlayingPreview = false;
                    return false;
                }
                return true;
            });
        }
        catch (Exception ex)
        {
            await DisplayAlert("Preview Error", ex.Message, "OK");
            _isPlayingPreview = false;
        }
    }
}
