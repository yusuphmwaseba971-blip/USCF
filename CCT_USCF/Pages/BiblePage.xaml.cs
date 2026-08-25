using System.Collections.ObjectModel;

namespace CCT_USCF.Pages;

public partial class BiblePage : ContentPage
{
    private readonly Dictionary<string, string> _backgroundStyles = new()
    {
        ["Nature"] = "#dff6e8,#d7f0ff",
        ["Sunrise"] = "#f9d7a7,#f59e0b",
        ["Mountain"] = "#dbeafe,#475569",
        ["Sky"] = "#dbeafe,#93c5fd",
        ["Water"] = "#e0f2fe,#2dd4bf",
        ["Dark"] = "#0f172a,#1e293b",
        ["Sepia"] = "#f5e7c6,#b78a5d",
        ["Neutral"] = "#f1f5f9,#cbd5e1"
    };

    private readonly List<string> _books = new() { "John", "Romans", "Psalm", "Matthew", "Philippians" };
    private readonly Dictionary<string, int> _chapterCounts = new() { ["John"] = 21, ["Romans"] = 16, ["Psalm"] = 150, ["Matthew"] = 28, ["Philippians"] = 4 };
    private readonly Dictionary<string, Dictionary<int, string[]>> _verses = new()
    {
        ["John"] = new() { [3] = ["For God so loved the world, that he gave his only Son, that whoever believes in him should not perish but have eternal life."] },
        ["Romans"] = new() { [8] = ["For I am convinced that neither death nor life, nor angels, nor rulers, nor things present, nor things to come, nor powers,"] },
        ["Psalm"] = new() { [23] = ["The Lord is my shepherd; I shall not want."] },
        ["Matthew"] = new() { [5] = ["Blessed are the pure in heart, for they shall see God."] },
        ["Philippians"] = new() { [4] = ["Rejoice in the Lord always; again I will say, rejoice."] }
    };

    private bool _motionEnabled = true;
    private double _fontSize = 28;
    private string _selectedBackground = "Nature";
    private string _selectedColor = "#F8FAFC";
    private string _selectedFontStyle = "Default";

    public BiblePage()
    {
        InitializeComponent();
        InitializeSelections();
        LoadPreferences();
        _ = LoadLeaderStatusAsync();
        UpdatePresentation();

        // Load Bible data from local resource
        _ = Task.Run(async () =>
        {
            try
            {
                var bs = (CCT_USCF.Services.BibleService)MauiProgram.Services.GetService(typeof(CCT_USCF.Services.BibleService))!;
                await bs.InitializeAsync();
                var books = await bs.GetBooksAsync();
                await MainThread.InvokeOnMainThreadAsync(() =>
                {
                    BookPicker.ItemsSource = books;
                    if (books.Count > 0) BookPicker.SelectedIndex = 0;
                });
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine($"Bible load failed: {ex.Message}");
            }
        });
    }

    private void InitializeSelections()
    {
        var defaultFontStyles = new[] { "Default", "Serif", "Sans Serif", "Reading", "Classic" };
        FontStylePicker.ItemsSource = defaultFontStyles;
        FontStylePicker.SelectedItem = "Default";

        BackgroundPicker.ItemsSource = _backgroundStyles.Keys.ToList();
        BackgroundPicker.SelectedItem = _selectedBackground;

        BackgroundColorPicker.ItemsSource = new[] { "White", "Light", "Dark", "Sepia", "Blue", "Neutral" };
        BackgroundColorPicker.SelectedItem = "Light";
    }

    private void LoadPreferences()
    {
        _motionEnabled = Preferences.Default.Get("BibleMotionEnabled", true);
        _fontSize = Preferences.Default.Get("BibleFontSize", 28d);
        _selectedBackground = Preferences.Default.Get("BibleBackground", "Nature");
        _selectedColor = Preferences.Default.Get("BibleBackgroundColor", "#F8FAFC");
        _selectedFontStyle = Preferences.Default.Get("BibleFontStyle", "Default");

        MotionToggle.IsChecked = _motionEnabled;
        BackgroundPicker.SelectedItem = _selectedBackground;
        BackgroundColorPicker.SelectedItem = MapColorName(_selectedColor);
        FontStylePicker.SelectedItem = _selectedFontStyle;
    }

    private void UpdatePresentation()
    {
        var fontStyle = _selectedFontStyle switch
        {
            "Serif" => "Times New Roman",
            "Sans Serif" => "Arial",
            "Reading" => "OpenSansRegular",
            "Classic" => "Georgia",
            _ => null
        };

        VerseText.FontSize = _fontSize;
        VerseText.FontFamily = fontStyle;
        VerseHeading.FontSize = Math.Max(16, _fontSize * 0.85);

        var colors = _backgroundStyles.ContainsKey(_selectedBackground) ? _backgroundStyles[_selectedBackground].Split(',') : new[] { "#dff6e8", "#f8fafc" };
        if (BackgroundPanel.Background is LinearGradientBrush brush)
        {
            brush.GradientStops[0].Color = Color.FromArgb(colors[0]);
            brush.GradientStops[1].Color = Color.FromArgb(colors[1]);
        }

        var ctxColor = _selectedColor switch
        {
            "Dark" => Color.FromArgb("#0F172A"),
            "Sepia" => Color.FromArgb("#4B2E2B"),
            "Blue" => Color.FromArgb("#083344"),
            "Neutral" => Color.FromArgb("#1F2937"),
            _ => Color.FromArgb("#111827")
        };

        VerseText.TextColor = ctxColor;
        VerseHeading.TextColor = ctxColor;

        ApplyMotion();
        SavePreferences();
    }

    private void ApplyMotion()
    {
        if (!_motionEnabled)
        {
            this.AbortAnimation("bibleMotion");
            BackgroundPanel.TranslationY = 0;
            BackgroundPanel.Scale = 1;
            return;
        }

        this.AbortAnimation("bibleMotion");
        var animation = new Animation(v =>
        {
            BackgroundPanel.Scale = 1 + (v * 0.04d);
            BackgroundPanel.TranslationY = (float)(Math.Sin(v * Math.PI) * 4);
        }, 0, 1, Easing.CubicInOut);
        animation.Commit(this, "bibleMotion", length: 9000, repeat: () => true, finished: (d, b) => { });
    }

    private async Task LoadLeaderStatusAsync()
    {
        try
        {
            var user = await new CCT_USCF.Services.AuthService(new HttpClient { BaseAddress = new Uri(CCT_USCF.Services.ApiConfig.BaseUrl) }).GetCurrentUserAsync();
            var isLeader = user != null && user.Role.Contains("Leader", StringComparison.OrdinalIgnoreCase);
            if (!isLeader)
            {
                LeaderStatusLabel.IsVisible = false;
                LeaderQuotaLabel.IsVisible = false;
                return;
            }

            LeaderStatusLabel.Text = "Verified leader publishing status";
            LeaderQuotaLabel.Text = "Images today: 0 / 5    Videos today: 0 / 3";
        }
        catch
        {
            LeaderStatusLabel.IsVisible = false;
            LeaderQuotaLabel.IsVisible = false;
        }
    }

    private void SavePreferences()
    {
        Preferences.Default.Set("BibleMotionEnabled", _motionEnabled);
        Preferences.Default.Set("BibleFontSize", _fontSize);
        Preferences.Default.Set("BibleBackground", _selectedBackground);
        Preferences.Default.Set("BibleBackgroundColor", _selectedColor);
        Preferences.Default.Set("BibleFontStyle", _selectedFontStyle);
    }

    private static string MapColorName(string color)
    {
        return color switch
        {
            "#0F172A" => "Dark",
            "#4B2E2B" => "Sepia",
            "#083344" => "Blue",
            "#1F2937" => "Neutral",
            _ => "Light"
        };
    }

    private async void OnBookChanged(object? sender, EventArgs e)
    {
        var selectedBook = BookPicker.SelectedItem as string;
        if (string.IsNullOrWhiteSpace(selectedBook)) return;

        try
        {
            var bs = (CCT_USCF.Services.BibleService)MauiProgram.Services.GetService(typeof(CCT_USCF.Services.BibleService))!;
            var chapters = await bs.GetChaptersAsync(selectedBook);
            ChapterPicker.ItemsSource = chapters;
            if (chapters.Count > 0) ChapterPicker.SelectedItem = chapters[0];
            else ChapterPicker.SelectedItem = 1;
            UpdateVerseSelection();
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine($"OnBookChanged error: {ex.Message}");
        }
    }

    private void OnChapterChanged(object? sender, EventArgs e)
    {
        _ = Task.Run(async () => await MainThread.InvokeOnMainThreadAsync(UpdateVerseSelection));
    }

    private void OnVerseChanged(object? sender, EventArgs e)
    {
        _ = Task.Run(async () => await MainThread.InvokeOnMainThreadAsync(UpdateVerseText));
    }

    private async Task UpdateVerseSelection()
    {
        var selectedBook = BookPicker.SelectedItem as string;
        var selectedChapter = (int?)ChapterPicker.SelectedItem ?? 1;

        if (string.IsNullOrWhiteSpace(selectedBook)) return;

        try
        {
            var bs = (CCT_USCF.Services.BibleService)MauiProgram.Services.GetService(typeof(CCT_USCF.Services.BibleService))!;
            var verses = await bs.GetVersesAsync(selectedBook, selectedChapter);
            var verseNumbers = Enumerable.Range(1, Math.Max(1, verses.Count)).ToArray();
            VersePicker.ItemsSource = verseNumbers;
            VersePicker.SelectedItem = 1;
            await UpdateVerseText();
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine($"UpdateVerseSelection error: {ex.Message}");
        }
    }

    private async Task UpdateVerseText()
    {
        var selectedBook = BookPicker.SelectedItem as string;
        var selectedChapter = (int?)ChapterPicker.SelectedItem ?? 1;
        var selectedVerse = (int?)VersePicker.SelectedItem ?? 1;

        if (string.IsNullOrWhiteSpace(selectedBook)) return;

        try
        {
            var bs = (CCT_USCF.Services.BibleService)MauiProgram.Services.GetService(typeof(CCT_USCF.Services.BibleService))!;
            var verseText = await bs.GetVerseAsync(selectedBook, selectedChapter, selectedVerse);
            if (string.IsNullOrWhiteSpace(verseText)) verseText = "(Verse not found)";
            VerseHeading.Text = $"{selectedBook.ToUpperInvariant()} {selectedChapter}:{selectedVerse}";
            VerseText.Text = verseText;
            AudioDurationLabel.Text = "0:30";
            AudioProgress.Maximum = 30;
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine($"UpdateVerseText error: {ex.Message}");
        }
    }

    private void IncreaseFontClicked(object? sender, EventArgs e)
    {
        _fontSize = Math.Min(42, _fontSize + 2);
        UpdatePresentation();
    }

    private void DecreaseFontClicked(object? sender, EventArgs e)
    {
        _fontSize = Math.Max(18, _fontSize - 2);
        UpdatePresentation();
    }

    private void OnFontStyleChanged(object? sender, EventArgs e)
    {
        _selectedFontStyle = FontStylePicker.SelectedItem?.ToString() ?? "Default";
        UpdatePresentation();
    }

    private void OnBackgroundChanged(object? sender, EventArgs e)
    {
        _selectedBackground = BackgroundPicker.SelectedItem?.ToString() ?? "Nature";
        UpdatePresentation();
    }

    private void OnBackgroundColorChanged(object? sender, EventArgs e)
    {
        _selectedColor = BackgroundColorPicker.SelectedItem?.ToString() switch
        {
            "Dark" => "#0F172A",
            "Sepia" => "#4B2E2B",
            "Blue" => "#083344",
            "Neutral" => "#1F2937",
            _ => "#F8FAFC"
        };
        UpdatePresentation();
    }

    private void OnMotionToggled(object? sender, CheckedChangedEventArgs e)
    {
        _motionEnabled = e.Value;
        UpdatePresentation();
    }

    private void OnPlayPauseClicked(object? sender, EventArgs e)
    {
        if (PlayButton.Text.Contains("Pause"))
        {
            PlayButton.Text = "▶ Play";
            return;
        }

        PlayButton.Text = "⏸ Pause";
        AudioTimeLabel.Text = "0:18";
        AudioProgress.Value = 18;
    }

    private void OnStopAudioClicked(object? sender, EventArgs e)
    {
        PlayButton.Text = "▶ Play";
        AudioProgress.Value = 0;
        AudioTimeLabel.Text = "0:00";
    }

    private async void OnPostBibleClicked(object? sender, EventArgs e)
    {
        var btn = sender as Button;
        try
        {
            btn.IsEnabled = false;
            var selectedBook = BookPicker.SelectedItem as string;
            var chapter = (int?)ChapterPicker.SelectedItem ?? 1;
            var verse = (int?)VersePicker.SelectedItem ?? 1;
            if (string.IsNullOrWhiteSpace(selectedBook))
            {
                await DisplayAlert("Error", "Please select a book.", "OK");
                return;
            }
            var bs = (CCT_USCF.Services.BibleService)MauiProgram.Services.GetService(typeof(CCT_USCF.Services.BibleService))!;
            var abbrev = bs.GetAbbreviationForBook(selectedBook);
            if (string.IsNullOrWhiteSpace(abbrev))
            {
                await DisplayAlert("Error", "Unable to determine book code.", "OK");
                return;
            }

            var passageText = await bs.GetVerseAsync(selectedBook, chapter, verse);
            var confirm = await DisplayAlert("Confirm Post", $"Post {selectedBook} {chapter}:{verse}\n\n{passageText}", "Post", "Cancel");
            if (!confirm) return;

            var community = (CCT_USCF.Services.CommunityService)MauiProgram.Services.GetService(typeof(CCT_USCF.Services.CommunityService))!;
            var dto = new CCT_USCF.Models.BiblePostCreateDto { BookId = abbrev, ChapterNumber = chapter, VerseStart = verse, VerseEnd = verse };
            var created = await community.CreateBiblePostAsync(dto);
            if (created != null)
            {
                await DisplayAlert("Success", "Bible reading posted.", "OK");
            }
            else
            {
                await DisplayAlert("Error", "Failed to post bible reading.", "OK");
            }
        }
        catch (Exception ex)
        {
            await DisplayAlert("Error", ex.Message, "OK");
        }
        finally
        {
            if (btn != null) btn.IsEnabled = true;
        }
    }

    private void OnAudioProgressChanged(object? sender, ValueChangedEventArgs e)
    {
        var totalSeconds = (int)AudioProgress.Maximum;
        var currentSeconds = (int)e.NewValue;
        AudioTimeLabel.Text = TimeSpan.FromSeconds(currentSeconds).ToString(@"m\:ss");
        AudioDurationLabel.Text = TimeSpan.FromSeconds(totalSeconds).ToString(@"m\:ss");
    }
}
