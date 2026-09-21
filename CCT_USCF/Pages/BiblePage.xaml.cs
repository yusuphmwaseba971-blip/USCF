using System.Collections.ObjectModel;
using System.Diagnostics;
using CCT_USCF.Models;
using CCT_USCF.Services;

namespace CCT_USCF.Pages;

public partial class BiblePage : ContentPage
{
    private readonly BibleService _bible;
    private ObservableCollection<VerseRow> _verses = new();
    private readonly ObservableCollection<SearchRow> _results = new();
    private CancellationTokenSource? _speechCancellation;
    private string _language = BibleService.KjvId;
    private string _testament = "New Testament";
    private string _book = "John";
    private int _chapter = 3;
    private double _fontSize = 22;
    private string _background = "CCT-USCF";
    private Task? _loadTask;
    private bool _isInitializing;
    private bool _isUpdatingSelectors;
    private int _navigationVersion;

    private static void PerfLog(string message)
    {
        Debug.WriteLine(message);
#if ANDROID
        Android.Util.Log.Debug("BiblePerf", message);
#endif
    }

    public BiblePage()
    {
        InitializeComponent();
        _bible = MauiProgram.Services.GetRequiredService<BibleService>();
        VerseList.ItemsSource = _verses;
        SearchResults.ItemsSource = _results;
        RootGrid.Opacity = 1;
        _ = RenderImmediateDefaultChapterAsync();
        Loaded += (_, _) =>
        {
            if (_loadTask is not null && !_loadTask.IsCompleted)
                return;

            _loadTask = LoadAsync();
        };
    }

    private async Task RenderImmediateDefaultChapterAsync()
    {
        try
        {
            var verses = await BibleService.GetBundledDefaultVersesAsync();
            if (_loadTask is not null && !_loadTask.IsCompleted)
                return;

            _language = BibleService.KjvId;
            _book = "John";
            _chapter = 3;
            _fontSize = 22;
            TranslationLabel.Text = "King James Version";
            TranslationAttribution.IsVisible = false;
            TestamentPicker.ItemsSource = new[] { "Old Testament", "New Testament" };
            TestamentPicker.SelectedItem = "New Testament";
            BookPicker.ItemsSource = new[] { "John" };
            BookPicker.SelectedItem = "John";
            ChapterPicker.ItemsSource = new[] { 3 };
            ChapterPicker.SelectedItem = 3;
            RenderVerses(verses);
            PerfLog($"[BIBLE] Immediate bundled chapter rendered ({verses.Count} verses)");
        }
        catch (Exception ex)
        {
            Debug.WriteLine($"[BIBLE] Immediate bundled chapter unavailable: {ex}");
        }
    }

    private async Task LoadAsync()
    {
        var timer = Stopwatch.StartNew();
        _isInitializing = true;
        PerfLog($"[BIBLE] Navigation load started at {timer.ElapsedMilliseconds} ms");
        try
        {
            // The selected translation is sufficient to render this page.
            // Startup continues preparing the other translation in parallel.
            await _bible.EnsureTranslationReadyAsync(_bible.Language).ConfigureAwait(false);
            PerfLog($"[BIBLE] Preparation/cache ready after {timer.ElapsedMilliseconds} ms");
            _language = _bible.Language;
            _book = _bible.Book;
            _chapter = _bible.Chapter;
            _fontSize = _bible.FontSize;
            _background = _bible.Background;

            TranslationLabel.Text = _language == BibleService.KjvId ? "King James Version" : "Kiswahili — Neno";
            TranslationAttribution.IsVisible = _language == BibleService.NenoId;
            ApplyBackground();

            _testament = (await _bible.GetBooksAsync(_language))
                .FirstOrDefault(b => b.Name.Equals(_book, StringComparison.OrdinalIgnoreCase))?.Testament
                ?? _testament;
            PerfLog($"[BIBLE] Selected testament ready after {timer.ElapsedMilliseconds} ms");
            TestamentPicker.ItemsSource = new[] { "Old Testament", "New Testament" };
            TestamentPicker.SelectedItem = _testament;
            await RefreshBooksAsync(requestVersion: _navigationVersion);
            PerfLog($"[BIBLE] Selected book ready after {timer.ElapsedMilliseconds} ms");
            await RefreshChapterAsync(requestVersion: _navigationVersion);
            PerfLog($"[BIBLE] First verse render path completed after {timer.ElapsedMilliseconds} ms");
        }
        finally
        {
            _isInitializing = false;
            RootGrid.Opacity = 1;
        }
    }

    private async Task RefreshBooksAsync(int? requestVersion = null)
    {
        var books = (await _bible.GetBooksAsync(_language)).Where(b => b.Testament == _testament).ToArray();
        if (requestVersion is not null && requestVersion != _navigationVersion) return;
        _isUpdatingSelectors = true;
        try
        {
            BookPicker.ItemsSource = books.Select(b => b.Name).ToArray();
            if (!books.Any())
            {
                BookPicker.SelectedItem = null;
                _verses.Clear();
                StatusLabel.Text = "No licensed text installed";
                return;
            }
            if (!books.Any(b => b.Name.Equals(_book, StringComparison.OrdinalIgnoreCase))) _book = books[0].Name;
            BookPicker.SelectedItem = _book;
        }
        finally { _isUpdatingSelectors = false; }
    }

    private async Task RefreshChapterAsync(int? requestVersion = null)
    {
        var chapters = await _bible.GetChaptersAsync(_book, _language);
        if (requestVersion is not null && requestVersion != _navigationVersion) return;
        _isUpdatingSelectors = true;
        try
        {
            ChapterPicker.ItemsSource = chapters.ToArray();
            ChapterPicker.SelectedItem = chapters.Contains(_chapter) ? _chapter : chapters.FirstOrDefault();
        }
        finally { _isUpdatingSelectors = false; }
        if (ChapterPicker.SelectedItem is int chapter)
        {
            _chapter = chapter;
            await RefreshVersesAsync();
        }
    }

    private async Task RefreshVersesAsync()
    {
        var timer = Stopwatch.StartNew();
        PerfLog($"[BIBLE] Chapter lookup started for {_language}|{_book}|{_chapter}");
        var requestVersion = _navigationVersion;
        var verses = await _bible.GetVersesAsync(_book, _chapter, _language);
        if (requestVersion != _navigationVersion)
        {
            Debug.WriteLine($"[BIBLE] Ignored stale verse request for {_book} {_chapter}");
            return;
        }
        PerfLog($"[BIBLE] Chapter lookup completed in {timer.ElapsedMilliseconds} ms ({verses.Count} verses)");
        RenderVerses(verses);
        PerfLog($"[BIBLE] UI chapter update completed in {timer.ElapsedMilliseconds} ms");
        _ = PersistPositionAsync();
    }

    private void RenderVerses(IReadOnlyList<BibleVerse> verses)
    {
        var timer = Stopwatch.StartNew();
        var rows = verses
            .Select(verse => new VerseRow(verse.Number, verse.Text, _fontSize, _bible.GetHighlight(Key(verse.Number))))
            .ToList();

        // Replace the source once instead of raising one collection-change
        // notification and layout pass for every verse in the chapter.
        _verses = new ObservableCollection<VerseRow>(rows);
        VerseList.ItemsSource = _verses;

        VerseHeading.Text = $"{_book.ToUpperInvariant()} {_chapter}";
        ContinueLabel.Text = $"Continue reading • {_book} {_chapter}";
        StatusLabel.Text = verses.Count == 0 ? "No translation text available" : "Available offline";
        VerseCard.IsVisible = verses.Count > 0;
        VerseLoadingLabel.IsVisible = verses.Count == 0;
        PerfLog($"[BIBLE] Visible verse collection replacement completed in {timer.ElapsedMilliseconds} ms ({verses.Count} verses)");
    }

    private async Task PersistPositionAsync()
    {
        try
        {
            await _bible.SetPositionAsync(_language, _book, _chapter, _bible.Verse);
        }
        catch (Exception ex)
        {
            Debug.WriteLine($"[BIBLE] Position persistence failed after render: {ex}");
        }
    }

    private string Key(int verse) => $"{_language}|{_book}|{_chapter}:{verse}";
    private async void OnTestamentChanged(object? s, EventArgs e)
    {
        if (_isInitializing || _isUpdatingSelectors) return;
        var timer = Stopwatch.StartNew();
        _navigationVersion++;
        _testament = TestamentPicker.SelectedItem?.ToString() ?? _testament;
        var requestVersion = _navigationVersion;
        await RefreshBooksAsync(requestVersion);
        await RefreshChapterAsync(requestVersion);
        Debug.WriteLine($"[BIBLE] Testament switch completed in {timer.ElapsedMilliseconds} ms");
    }
    private async void OnBookChanged(object? s, EventArgs e)
    {
        if (_isInitializing || _isUpdatingSelectors) return;
        if (BookPicker.SelectedItem is string book)
        {
            var timer = Stopwatch.StartNew();
            _navigationVersion++;
            _book = book; _chapter = 1;
            await RefreshChapterAsync(_navigationVersion);
            Debug.WriteLine($"[BIBLE] Book switch completed in {timer.ElapsedMilliseconds} ms");
        }
    }
    private async void OnChapterChanged(object? s, EventArgs e)
    {
        if (_isInitializing || _isUpdatingSelectors) return;
        if (ChapterPicker.SelectedItem is int chapter)
        {
            var timer = Stopwatch.StartNew();
            _navigationVersion++;
            _chapter = chapter;
            await RefreshVersesAsync();
            Debug.WriteLine($"[BIBLE] Chapter switch completed in {timer.ElapsedMilliseconds} ms");
        }
    }
    private async void OnSwahiliClicked(object? s, EventArgs e)
    {
        var timer = Stopwatch.StartNew();
        _navigationVersion++;
        _language = BibleService.NenoId; TranslationLabel.Text = "Kiswahili — Neno"; TranslationAttribution.IsVisible = true;
        var requestVersion = _navigationVersion;
        await RefreshBooksAsync(requestVersion); await RefreshChapterAsync(requestVersion);
        Debug.WriteLine($"[BIBLE] Swahili translation switch completed in {timer.ElapsedMilliseconds} ms");
    }
    private async void OnEnglishClicked(object? s, EventArgs e)
    {
        var timer = Stopwatch.StartNew();
        _navigationVersion++;
        _language = BibleService.KjvId; TranslationLabel.Text = "King James Version"; TranslationAttribution.IsVisible = false;
        var requestVersion = _navigationVersion;
        await RefreshBooksAsync(requestVersion); await RefreshChapterAsync(requestVersion);
        Debug.WriteLine($"[BIBLE] English translation switch completed in {timer.ElapsedMilliseconds} ms");
    }

    private async void OnSearchPressed(object? s, EventArgs e)
    {
        _results.Clear();
        foreach (var result in await _bible.SearchAsync(SearchBox.Text ?? string.Empty, _language))
            _results.Add(new SearchRow(result));
        SearchResults.IsVisible = _results.Count > 0;
    }
    private async void OnSearchClicked(object? s, EventArgs e) { SearchBox.Focus(); }
    private async void OnSearchResultSelected(object? s, SelectionChangedEventArgs e)
    {
        if (e.CurrentSelection.FirstOrDefault() is SearchRow row)
        {
            _book = row.Book; _chapter = row.Chapter;
            SearchResults.IsVisible = false;
            _navigationVersion++;
            await RefreshChapterAsync(_navigationVersion);
        }
        SearchResults.SelectedItem = null;
    }

    private async void OnCopyVerseClicked(object? s, EventArgs e)
    {
        if (s is Button { CommandParameter: VerseRow verse })
            await Clipboard.Default.SetTextAsync($"{_book} {_chapter}:{verse.Number}\n{verse.Text}");
    }
    private async void OnShareVerseClicked(object? s, EventArgs e)
    {
        if (s is Button { CommandParameter: VerseRow verse })
            await Share.Default.RequestAsync(new ShareTextRequest
            {
                Title = $"{_book} {_chapter}:{verse.Number}",
                Text = $"{_book} {_chapter}:{verse.Number}\n{verse.Text}\n\nCCT-USCF"
            });
    }
    private async void OnNoteVerseClicked(object? s, EventArgs e)
    {
        if (s is not Button { CommandParameter: VerseRow verse }) return;
        var text = await DisplayPromptAsync("Bible note", $"{_book} {_chapter}:{verse.Number}");
        if (!string.IsNullOrWhiteSpace(text))
            await _bible.SaveNoteAsync(new BibleNote(Guid.NewGuid().ToString("N"), _language, _book, _chapter, verse.Number, text, DateTime.UtcNow, DateTime.UtcNow));
    }
    private async void OnBookmarkVerseClicked(object? s, EventArgs e)
    {
        if (s is Button { CommandParameter: VerseRow verse }) await _bible.ToggleBookmarkAsync(Key(verse.Number));
    }
    private async void OnHighlightVerseClicked(object? s, EventArgs e)
    {
        if (s is not Button { CommandParameter: VerseRow verse }) return;
        var color = await DisplayActionSheet("Highlight", "Cancel", null, "Yellow", "Green", "Blue", "Remove");
        var selectedColor = color == "Remove" || color == "Cancel" ? null : color;
        var index = _verses.IndexOf(verse);
        if (index >= 0)
            _verses[index] = verse with { Highlight = selectedColor };
        _ = PersistHighlightAsync(Key(verse.Number), selectedColor);
    }

    private async Task PersistHighlightAsync(string key, string? color)
    {
        try
        {
            await _bible.SetHighlightAsync(key, color);
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine($"Bible highlight persistence failed: {ex}");
        }
    }

    private async void OnAppearanceClicked(object? s, EventArgs e)
    {
        var choice = await DisplayActionSheet("Reading background", "Cancel", null, "CCT-USCF", "Minimal", "Nature", "Sunrise", "Dark");
        if (choice is not null and not "Cancel") { _background = choice; ApplyBackground(); await _bible.SetAppearanceAsync(_fontSize, _background); }
        var size = await DisplayActionSheet("Text size", "Cancel", null, "Small", "Comfortable", "Large");
        if (size == "Small") _fontSize = 18; else if (size == "Large") _fontSize = 28; else if (size == "Comfortable") _fontSize = 22;
        if (size is not null and not "Cancel") { await _bible.SetAppearanceAsync(_fontSize, _background); await RefreshVersesAsync(); }
    }
    private async void OnBookmarksClicked(object? s, EventArgs e)
    {
        var bookmarks = _bible.GetBookmarksForDisplay();
        await DisplayAlert("Bookmarks", bookmarks.Count == 0 ? "No bookmarks yet." : string.Join("\n", bookmarks), "OK");
    }
    private async void OnNotebookClicked(object? s, EventArgs e)
    {
        var notes = _bible.GetNotes();
        await DisplayAlert("Notebook", notes.Count == 0 ? "No notes yet." : string.Join("\n", notes.Select(n => $"{n.Book} {n.Chapter}:{n.Verse} — {n.Language}: {n.Text}")), "OK");
    }
    private async void OnSpeechClicked(object? s, EventArgs e)
    {
        _speechCancellation?.Cancel(); _speechCancellation = new CancellationTokenSource();
        try
        {
            var text = string.Join(" ", _verses.Select(v => v.Text));
            var languageCode = _language == BibleService.NenoId ? "sw" : "en";
            var locale = (await TextToSpeech.Default.GetLocalesAsync())
                .FirstOrDefault(item => item.Language.StartsWith(languageCode, StringComparison.OrdinalIgnoreCase));
            if (locale is null) throw new InvalidOperationException($"No {languageCode} voice is installed.");
            await TextToSpeech.Default.SpeakAsync(text, new SpeechOptions { Locale = locale }, _speechCancellation.Token);
        }
        catch (Exception ex) { await DisplayAlert("Reading aloud", $"The selected offline voice is unavailable: {ex.Message}", "OK"); }
    }
    private void OnStopSpeechClicked(object? s, EventArgs e) { _speechCancellation?.Cancel(); }

    private void ApplyBackground()
    {
        RootGrid.BackgroundColor = _background switch
        {
            "Dark" => Color.FromArgb("#0F172A"),
            "Sunrise" => Color.FromArgb("#FFF1D6"),
            "Nature" => Color.FromArgb("#E4F2E8"),
            "Minimal" => Color.FromArgb("#F8FAFC"),
            _ => Color.FromArgb("#E8F5EC")
        };
    }

    private async void OnPostBibleClicked(object? sender, EventArgs e)
    {
        if (_verses.Count == 0) return;
        try
        {
            var community = MauiProgram.Services.GetRequiredService<CommunityService>();
            var created = await community.CreateBiblePostAsync(new Models.BiblePostCreateDto { BookId = _bible.GetAbbreviationForBook(_book, _language), ChapterNumber = _chapter, VerseStart = _bible.Verse, VerseEnd = _bible.Verse });
            if (created is not null) await DisplayAlert("Success", "Bible reading posted.", "OK");
        }
        catch (Exception ex) { await DisplayAlert("Error", ex.Message, "OK"); }
    }

    public sealed record VerseRow(int Number, string Text, double FontSize, string? Highlight)
    {
        public Color Background => Highlight switch { "Yellow" => Color.FromArgb("#FFF4B8"), "Green" => Color.FromArgb("#DDF4E5"), "Blue" => Color.FromArgb("#DDEBFF"), _ => Colors.Transparent };
    }
    public sealed record SearchRow(BibleSearchResult Result)
    {
        public string Book => Result.Book; public int Chapter => Result.Chapter; public string Text => Result.Text;
        public string Reference => $"{Result.Book} {Result.Chapter}:{Result.Verse}";
    }
}
