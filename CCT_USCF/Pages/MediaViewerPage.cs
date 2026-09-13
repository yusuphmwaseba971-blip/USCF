using CCT_USCF.Services;

namespace CCT_USCF.Pages;

[QueryProperty(nameof(Url), "url")]
[QueryProperty(nameof(MediaType), "mediaType")]
[QueryProperty(nameof(FileName), "fileName")]
public sealed class MediaViewerPage : ContentPage
{
    private readonly Grid _content;
    private readonly ActivityIndicator _loading;
    private readonly Label _error;
    private readonly Button _retry;
    private string _url = string.Empty;
    private string _mediaType = "unsupported";
    private string _fileName = string.Empty;
    private bool _loaded;

#if ANDROID
    private Android.Media.MediaPlayer? _audioPlayer;
    private Slider? _audioProgress;
    private Label? _audioTime;
    private IDispatcherTimer? _audioTimer;
    private WebView? _videoView;
#endif

    public MediaViewerPage()
    {
        BackgroundColor = Colors.Black;
        Shell.SetNavBarIsVisible(this, false);

        var close = new Button
        {
            Text = "✕",
            FontSize = 22,
            TextColor = Colors.White,
            BackgroundColor = Color.FromArgb("#66000000"),
            CornerRadius = 22,
            WidthRequest = 46,
            HeightRequest = 46,
            HorizontalOptions = LayoutOptions.End
        };
        close.Clicked += async (_, _) => await CloseAsync();

        _content = new Grid { BackgroundColor = Colors.Black };
        _loading = new ActivityIndicator
        {
            Color = Colors.White,
            IsRunning = true,
            HorizontalOptions = LayoutOptions.Center,
            VerticalOptions = LayoutOptions.Center
        };
        _error = new Label
        {
            TextColor = Colors.White,
            HorizontalTextAlignment = TextAlignment.Center,
            HorizontalOptions = LayoutOptions.Center,
            VerticalOptions = LayoutOptions.Center,
            Margin = 28
        };
        _retry = new Button
        {
            Text = "Retry",
            TextColor = Colors.White,
            BackgroundColor = Color.FromArgb("#1A4D3A"),
            CornerRadius = 14,
            IsVisible = false,
            HorizontalOptions = LayoutOptions.Center,
            VerticalOptions = LayoutOptions.End,
            Margin = 20
        };
        _retry.Clicked += async (_, _) => await LoadMediaAsync();

        var root = new Grid();
        root.Children.Add(_content);
        root.Children.Add(_loading);
        root.Children.Add(_error);
        root.Children.Add(_retry);
        root.Children.Add(close);
        Content = root;
    }

    public string Url
    {
        get => _url;
        set
        {
            _url = Uri.UnescapeDataString(value ?? string.Empty);
            _loaded = false;
        }
    }

    public string MediaType
    {
        get => _mediaType;
        set
        {
            _mediaType = Uri.UnescapeDataString(value ?? "unsupported");
            _loaded = false;
        }
    }

    public string FileName
    {
        get => _fileName;
        set => _fileName = Uri.UnescapeDataString(value ?? string.Empty);
    }

    protected override async void OnAppearing()
    {
        base.OnAppearing();
        if (!_loaded)
        {
            _loaded = true;
            await LoadMediaAsync();
        }
    }

    protected override void OnDisappearing()
    {
        StopPlayback();
        base.OnDisappearing();
    }

    private async Task LoadMediaAsync()
    {
        _loading.IsVisible = _loading.IsRunning = true;
        _error.IsVisible = false;
        _retry.IsVisible = false;
        _content.Children.Clear();
        StopPlayback();

        if (!MediaViewerService.TryValidateMediaUrl(_url, out var safeUrl))
        {
            ShowError("Unable to open this media.");
            return;
        }

        try
        {
            switch (_mediaType)
            {
                case "image":
                    await LoadImageAsync(safeUrl);
                    break;
#if ANDROID
                case "audio":
                    await LoadAudioAsync(safeUrl);
                    break;
                case "video":
                    LoadVideo(safeUrl);
                    break;
#endif
                case "pdf":
                    ShowError("PDF preview is not available in this version of CCT-USCF.");
                    return;
                default:
                    ShowError("This file type cannot currently be previewed inside CCT-USCF.");
                    return;
            }
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine($"[MEDIA_VIEWER] Load failed type={_mediaType}: {ex}");
            ShowError(_mediaType switch
            {
                "image" => "Unable to load this image.",
                "video" => "Video could not be played.",
                "audio" => "Audio could not be played.",
                _ => "This media could not be opened."
            });
        }
        finally
        {
            _loading.IsVisible = _loading.IsRunning = false;
        }
    }

    private async Task LoadImageAsync(string url)
    {
        using var client = new HttpClient { Timeout = TimeSpan.FromSeconds(30) };
        using var response = await client.GetAsync(url, HttpCompletionOption.ResponseHeadersRead);
        response.EnsureSuccessStatusCode();
        var bytes = await response.Content.ReadAsByteArrayAsync();
        if (bytes.Length == 0) throw new InvalidOperationException("The image response was empty.");

        var image = new Image
        {
            Source = ImageSource.FromStream(() => new MemoryStream(bytes)),
            Aspect = Aspect.AspectFit,
            HorizontalOptions = LayoutOptions.Fill,
            VerticalOptions = LayoutOptions.Fill
        };
        var pinch = new PinchGestureRecognizer();
        pinch.PinchUpdated += (_, e) =>
        {
            if (e.Status == GestureStatus.Running)
                image.Scale = Math.Clamp(e.Scale, 1, 5);
            else if (e.Status == GestureStatus.Completed && image.Scale < 1)
                image.Scale = 1;
        };
        var doubleTap = new TapGestureRecognizer { NumberOfTapsRequired = 2 };
        doubleTap.Tapped += (_, _) => image.Scale = image.Scale > 1 ? 1 : 2.5;
        image.GestureRecognizers.Add(pinch);
        image.GestureRecognizers.Add(doubleTap);
        _content.Children.Add(image);
    }

#if ANDROID
    private Task LoadAudioAsync(string url)
    {
        var title = new Label
        {
            Text = string.IsNullOrWhiteSpace(_fileName) ? "Audio" : _fileName,
            TextColor = Colors.White,
            FontSize = 20,
            HorizontalTextAlignment = TextAlignment.Center
        };
        _audioProgress = new Slider { Minimum = 0, Maximum = 1, MinimumTrackColor = Color.FromArgb("#D9B86C") };
        _audioTime = new Label { Text = "Preparing audio…", TextColor = Colors.White, HorizontalTextAlignment = TextAlignment.Center };
        var play = new Button { Text = "▶  Play", BackgroundColor = Color.FromArgb("#1A4D3A"), TextColor = Colors.White, CornerRadius = 16 };
        play.Clicked += (_, _) =>
        {
            if (_audioPlayer?.IsPlaying == true) { _audioPlayer.Pause(); play.Text = "▶  Play"; }
            else { _audioPlayer?.Start(); play.Text = "Ⅱ  Pause"; }
        };
        _audioProgress.ValueChanged += (_, e) =>
        {
            if (_audioPlayer is { IsPlaying: false } && _audioPlayer.Duration > 0)
                _audioPlayer.SeekTo((int)e.NewValue);
        };
        _content.Children.Add(new VerticalStackLayout
        {
            Spacing = 18,
            Padding = 28,
            VerticalOptions = LayoutOptions.Center,
            Children = { title, _audioProgress, _audioTime, play }
        });

        _audioPlayer = new Android.Media.MediaPlayer();
        _audioPlayer.SetDataSource(url);
        _audioPlayer.Prepared += (_, _) =>
        {
            _audioProgress.Maximum = _audioPlayer.Duration;
            _audioTime.Text = FormatDuration(_audioPlayer.Duration);
            _audioPlayer.Start();
            play.Text = "Ⅱ  Pause";
            _audioTimer = Dispatcher.CreateTimer();
            _audioTimer.Interval = TimeSpan.FromMilliseconds(250);
            _audioTimer.Tick += (_, _) =>
            {
                if (_audioPlayer is { IsPlaying: true })
                {
                    _audioProgress.Value = _audioPlayer.CurrentPosition;
                    _audioTime.Text = $"{FormatDuration(_audioPlayer.CurrentPosition)} / {FormatDuration(_audioPlayer.Duration)}";
                }
            };
            _audioTimer.Start();
        };
        _audioPlayer.Error += (_, _) => MainThread.BeginInvokeOnMainThread(() => ShowError("Audio could not be played."));
        _audioPlayer.PrepareAsync();
        return Task.CompletedTask;
    }

    private void LoadVideo(string url)
    {
        _videoView = new WebView
        {
            BackgroundColor = Colors.Black,
            HorizontalOptions = LayoutOptions.Fill,
            VerticalOptions = LayoutOptions.Center
        };
        var safe = System.Net.WebUtility.HtmlEncode(url);
        _videoView.Source = new HtmlWebViewSource
        {
            Html = $"<html><body style='margin:0;background:#000;display:flex;align-items:center;height:100vh'>" +
                   $"<video controls autoplay playsinline style='width:100%;max-height:100%;' src='{safe}'></video></body></html>"
        };
        _content.Children.Add(_videoView);
    }

    private void StopPlayback()
    {
        _audioTimer?.Stop();
        _audioTimer = null;
        if (_audioPlayer is not null)
        {
            _audioPlayer.Stop();
            _audioPlayer.Release();
            _audioPlayer.Dispose();
            _audioPlayer = null;
        }
        _videoView?.EvaluateJavaScriptAsync("document.querySelector('video')?.pause();");
        _videoView = null;
    }

    private static string FormatDuration(int milliseconds) =>
        TimeSpan.FromMilliseconds(Math.Max(0, milliseconds)).ToString(@"m\:ss");
#else
    private void StopPlayback() { }
#endif

    private void ShowError(string message)
    {
        _loading.IsVisible = _loading.IsRunning = false;
        _error.Text = message;
        _error.IsVisible = true;
        _retry.IsVisible = true;
    }

    private async Task CloseAsync() => await Shell.Current.GoToAsync("..");
}
