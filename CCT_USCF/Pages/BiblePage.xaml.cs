using System.Collections.ObjectModel;
using CCT_USCF.Models;
using CCT_USCF.Services;

namespace CCT_USCF.Pages;

public partial class BiblePage : ContentPage
{
    private enum BibleScreen
    {
        Books,
        Chapters,
        Reading
    }

    private readonly BibleService _bible;
    private readonly ObservableCollection<SearchRow> _results = new();
    private IReadOnlyList<int> _chapters = Array.Empty<int>();
    private IReadOnlyList<BibleVerse> _chapterVerses = Array.Empty<BibleVerse>();
    private IReadOnlyList<VerseRow> _verses = Array.Empty<VerseRow>();
    private CancellationTokenSource? _speechCancellation;
    private string _language = BibleService.KjvId;
    private string _testament = "Old Testament";
    private string _book = string.Empty;
    private int _chapter;
    private double _fontSize = 22;
    private string _background = "CCT-USCF";
    private VerseRow? _selectedVerse;
    private BibleScreen _screen = BibleScreen.Books;
    private bool _initialized;

    public BiblePage()
    {
        InitializeComponent();
        _bible = MauiProgram.Services.GetRequiredService<BibleService>();
        SearchResults.ItemsSource = _results;
        Loaded += OnLoaded;
    }

    private async void OnLoaded(object? sender, EventArgs e)
    {
        if (_initialized)
            return;

        _initialized = true;
        try
        {
            await _bible.EnsureReadyAsync();
            _language = _bible.Language;
            _fontSize = _bible.FontSize;
            _background = _bible.Background;
            ApplyBackground();
            await RefreshBooksAsync();
        }
        catch (Exception ex)
        {
            BooksStatusLabel.Text = $"Unable to open the Bible: {ex.Message}";
            BooksStatusLabel.IsVisible = true;
        }
    }

    private async Task RefreshBooksAsync()
    {
        _screen = BibleScreen.Books;
        UpdateScreen();
        BooksStatusLabel.Text = "Opening Bible…";
        BooksStatusLabel.IsVisible = true;
        BooksList.ItemsSource = null;

        var books = await _bible.GetBooksAsync(_language, _testament);
        BooksList.ItemsSource = books;
        BooksHeading.Text = GetTestamentDisplayName().ToUpperInvariant();
        BooksStatusLabel.IsVisible = books.Count == 0;
        if (books.Count == 0)
            BooksStatusLabel.Text = "No books are available for this translation.";
    }

    private async Task OpenBookAsync(string book, int? targetChapter = null)
    {
        var chapters = await _bible.GetChaptersAsync(book, _language);
        if (chapters.Count == 0)
        {
            await DisplayAlert("Bible", $"No chapters are available for {book}.", "OK");
            return;
        }

        _book = book;
        _chapters = chapters;
        ChaptersHeading.Text = book.ToUpperInvariant();
        ChaptersList.ItemsSource = chapters;
        _screen = BibleScreen.Chapters;
        UpdateScreen();

        if (targetChapter is int chapter)
            await OpenChapterAsync(chapter);
    }

    private async Task OpenChapterAsync(int chapter)
    {
        var verses = await _bible.GetVersesAsync(_book, chapter, _language);
        if (verses.Count == 0)
        {
            await DisplayAlert("Bible", $"No verses are available for {_book} {chapter}.", "OK");
            return;
        }

        _chapter = chapter;
        _chapterVerses = verses;
        _verses = verses
            .Select(verse => new VerseRow(
                verse.Number,
                verse.Text,
                _fontSize,
                _bible.GetHighlight(Key(verse.Number))))
            .ToArray();
        VerseList.ItemsSource = _verses;
        VerseList.SelectedItem = null;
        _selectedVerse = null;
        VerseActions.IsVisible = false;
        UpdateChapterNavigation();
        _screen = BibleScreen.Reading;
        UpdateScreen();

        await _bible.SetPositionAsync(_language, _book, _chapter, verses[0].Number);
        if (_verses.Count > 0)
            VerseList.ScrollTo(_verses[0], position: ScrollToPosition.Start, animate: false);
    }

    private void UpdateScreen()
    {
        BooksPanel.IsVisible = _screen == BibleScreen.Books;
        ChaptersPanel.IsVisible = _screen == BibleScreen.Chapters;
        ReaderPanel.IsVisible = _screen == BibleScreen.Reading;
        BackButton.IsVisible = _screen != BibleScreen.Books;
        VerseActions.IsVisible = _screen == BibleScreen.Reading && _selectedVerse is not null;
        PageTitle.Text = _screen switch
        {
            BibleScreen.Books => "BIBLIA",
            BibleScreen.Chapters => _book,
            _ => $"{_book} {_chapter}"
        };
    }

    private void UpdateChapterNavigation()
    {
        var chapterIndex = -1;
        for (var index = 0; index < _chapters.Count; index++)
        {
            if (_chapters[index] == _chapter)
            {
                chapterIndex = index;
                break;
            }
        }

        VerseHeading.Text = _language == BibleService.NenoId
            ? $"SURA YA {_chapter}"
            : $"CHAPTER {_chapter}";
        PreviousChapterButton.IsEnabled = chapterIndex > 0;
        NextChapterButton.IsEnabled = chapterIndex >= 0 && chapterIndex < _chapters.Count - 1;
    }

    private string GetTestamentDisplayName() =>
        _language == BibleService.NenoId
            ? _testament == "Old Testament" ? "Agano la Kale" : "Agano Jipya"
            : _testament;

    private string Key(int verse) => $"{_language}|{_book}|{_chapter}:{verse}";

    private async void OnBookSelected(object? sender, SelectionChangedEventArgs e)
    {
        if (e.CurrentSelection.FirstOrDefault() is not BibleBook book)
            return;

        BooksList.SelectedItem = null;
        try
        {
            await OpenBookAsync(book.Name);
        }
        catch (Exception ex)
        {
            await DisplayAlert("Bible", $"Unable to open {book.Name}: {ex.Message}", "OK");
        }
    }

    private async void OnChapterClicked(object? sender, EventArgs e)
    {
        if (sender is not Button { CommandParameter: int chapter })
            return;

        try
        {
            await OpenChapterAsync(chapter);
        }
        catch (Exception ex)
        {
            await DisplayAlert("Bible", $"Unable to open {_book} {chapter}: {ex.Message}", "OK");
        }
    }

    private async void OnPreviousChapterClicked(object? sender, EventArgs e)
    {
        var index = IndexOfCurrentChapter();
        if (index <= 0)
            return;

        try
        {
            await OpenChapterAsync(_chapters[index - 1]);
        }
        catch (Exception ex)
        {
            await DisplayAlert("Bible", $"Unable to open the previous chapter: {ex.Message}", "OK");
        }
    }

    private async void OnNextChapterClicked(object? sender, EventArgs e)
    {
        var index = IndexOfCurrentChapter();
        if (index < 0 || index >= _chapters.Count - 1)
            return;

        try
        {
            await OpenChapterAsync(_chapters[index + 1]);
        }
        catch (Exception ex)
        {
            await DisplayAlert("Bible", $"Unable to open the next chapter: {ex.Message}", "OK");
        }
    }

    private int IndexOfCurrentChapter()
    {
        for (var index = 0; index < _chapters.Count; index++)
        {
            if (_chapters[index] == _chapter)
                return index;
        }

        return -1;
    }

    private void OnVerseSelected(object? sender, SelectionChangedEventArgs e)
    {
        _selectedVerse = e.CurrentSelection.FirstOrDefault() as VerseRow;
        VerseActions.IsVisible = _selectedVerse is not null;
    }

    private void OnBackClicked(object? sender, EventArgs e) => NavigateBack();

    private void NavigateBack()
    {
        switch (_screen)
        {
            case BibleScreen.Reading:
                _screen = BibleScreen.Chapters;
                _selectedVerse = null;
                VerseActions.IsVisible = false;
                UpdateScreen();
                break;
            case BibleScreen.Chapters:
                _screen = BibleScreen.Books;
                UpdateScreen();
                break;
        }
    }

    protected override bool OnBackButtonPressed()
    {
        if (_screen == BibleScreen.Books)
            return base.OnBackButtonPressed();

        NavigateBack();
        return true;
    }

    private async void OnMoreClicked(object? sender, EventArgs e)
    {
        var choices = new[]
        {
            _language == BibleService.NenoId ? "English — KJV" : "Kiswahili — Neno",
            _language == BibleService.NenoId ? "Agano la Kale" : "Old Testament",
            _language == BibleService.NenoId ? "Agano Jipya" : "New Testament",
            "Search",
            "Bookmarks",
            "Notebook",
            "Appearance",
            "Read aloud",
            "Post reading"
        };

        var choice = await DisplayActionSheet("Bible", "Cancel", null, choices);
        if (choice == choices[0])
        {
            await ChangeLanguageAsync(_language == BibleService.NenoId
                ? BibleService.KjvId
                : BibleService.NenoId);
        }
        else if (choice == choices[1])
        {
            await ChangeTestamentAsync("Old Testament");
        }
        else if (choice == choices[2])
        {
            await ChangeTestamentAsync("New Testament");
        }
        else if (choice == "Search")
        {
            OnSearchClicked(this, EventArgs.Empty);
        }
        else if (choice == "Bookmarks")
        {
            await OnBookmarksAsync();
        }
        else if (choice == "Notebook")
        {
            await OnNotebookAsync();
        }
        else if (choice == "Appearance")
        {
            await ChangeAppearanceAsync();
        }
        else if (choice == "Read aloud")
        {
            await ReadAloudAsync();
        }
        else if (choice == "Post reading")
        {
            await PostReadingAsync();
        }
    }

    private async Task ChangeLanguageAsync(string language)
    {
        _language = language;
        _testament = "Old Testament";
        _searchBoxHide();
        try
        {
            await RefreshBooksAsync();
        }
        catch (Exception ex)
        {
            await DisplayAlert("Bible", $"Unable to change translation: {ex.Message}", "OK");
        }
    }

    private async Task ChangeTestamentAsync(string testament)
    {
        _testament = testament;
        try
        {
            await RefreshBooksAsync();
        }
        catch (Exception ex)
        {
            await DisplayAlert("Bible", $"Unable to show {GetTestamentDisplayName()}: {ex.Message}", "OK");
        }
    }

    private void _searchBoxHide()
    {
        SearchBox.IsVisible = false;
        SearchBox.Text = string.Empty;
        SearchResults.IsVisible = false;
        _results.Clear();
    }

    private void OnSearchClicked(object? sender, EventArgs e)
    {
        SearchBox.IsVisible = !SearchBox.IsVisible;
        SearchResults.IsVisible = false;
        if (SearchBox.IsVisible)
            SearchBox.Focus();
    }

    private async void OnSearchPressed(object? sender, EventArgs e)
    {
        try
        {
            _results.Clear();
            foreach (var result in await _bible.SearchAsync(SearchBox.Text ?? string.Empty, _language))
                _results.Add(new SearchRow(result));
            SearchResults.IsVisible = _results.Count > 0;
        }
        catch (Exception ex)
        {
            await DisplayAlert("Bible search", ex.Message, "OK");
        }
    }

    private async void OnSearchResultSelected(object? sender, SelectionChangedEventArgs e)
    {
        if (e.CurrentSelection.FirstOrDefault() is not SearchRow result)
            return;

        SearchResults.SelectedItem = null;
        SearchResults.IsVisible = false;
        SearchBox.IsVisible = false;
        try
        {
            var books = await _bible.GetBooksAsync(_language);
            var book = books.FirstOrDefault(item =>
                item.Name.Equals(result.Book, StringComparison.OrdinalIgnoreCase));
            if (book is null)
            {
                await DisplayAlert("Bible search", $"The book {result.Book} is unavailable.", "OK");
                return;
            }

            _testament = book.Testament;
            await OpenBookAsync(result.Book, result.Chapter);
        }
        catch (Exception ex)
        {
            await DisplayAlert("Bible search", $"Unable to open {result.Reference}: {ex.Message}", "OK");
        }
    }

    private VerseRow? GetSelectedVerse() => _selectedVerse;

    private async void OnCopyVerseClicked(object? sender, EventArgs e)
    {
        if (GetSelectedVerse() is { } verse)
            await Clipboard.Default.SetTextAsync($"{_book} {_chapter}:{verse.Number}\n{verse.Text}");
    }

    private async void OnShareVerseClicked(object? sender, EventArgs e)
    {
        if (GetSelectedVerse() is { } verse)
        {
            await Share.Default.RequestAsync(new ShareTextRequest
            {
                Title = $"{_book} {_chapter}:{verse.Number}",
                Text = $"{_book} {_chapter}:{verse.Number}\n{verse.Text}\n\nCCT-USCF"
            });
        }
    }

    private async void OnNoteVerseClicked(object? sender, EventArgs e)
    {
        if (GetSelectedVerse() is not { } verse)
            return;

        var text = await DisplayPromptAsync("Bible note", $"{_book} {_chapter}:{verse.Number}");
        if (!string.IsNullOrWhiteSpace(text))
        {
            await _bible.SaveNoteAsync(new BibleNote(
                Guid.NewGuid().ToString("N"),
                _language,
                _book,
                _chapter,
                verse.Number,
                text,
                DateTime.UtcNow,
                DateTime.UtcNow));
        }
    }

    private async void OnBookmarkVerseClicked(object? sender, EventArgs e)
    {
        if (GetSelectedVerse() is { } verse)
            await _bible.ToggleBookmarkAsync(Key(verse.Number));
    }

    private async void OnHighlightVerseClicked(object? sender, EventArgs e)
    {
        if (GetSelectedVerse() is not { } verse)
            return;

        var color = await DisplayActionSheet("Highlight", "Cancel", null, "Yellow", "Green", "Blue", "Remove");
        var selectedColor = color is "Remove" or "Cancel" ? null : color;
        var index = Array.IndexOf(_verses.ToArray(), verse);
        if (index < 0)
            return;

        var updated = _verses.ToArray();
        updated[index] = verse with { Highlight = selectedColor };
        _verses = updated;
        VerseList.ItemsSource = _verses;
        VerseList.SelectedItem = updated[index];
        _selectedVerse = updated[index];
        await _bible.SetHighlightAsync(Key(verse.Number), selectedColor);
    }

    private async Task OnBookmarksAsync()
    {
        var bookmarks = _bible.GetBookmarksForDisplay();
        await DisplayAlert("Bookmarks", bookmarks.Count == 0 ? "No bookmarks yet." : string.Join("\n", bookmarks), "OK");
    }

    private async Task OnNotebookAsync()
    {
        var notes = _bible.GetNotes();
        await DisplayAlert("Notebook", notes.Count == 0
            ? "No notes yet."
            : string.Join("\n", notes.Select(note =>
                $"{note.Book} {note.Chapter}:{note.Verse} — {note.Language}: {note.Text}")), "OK");
    }

    private async Task ChangeAppearanceAsync()
    {
        var choice = await DisplayActionSheet(
            "Reading background", "Cancel", null, "CCT-USCF", "Minimal", "Nature", "Sunrise", "Dark");
        if (choice is not null and not "Cancel")
        {
            _background = choice;
            ApplyBackground();
        }

        var size = await DisplayActionSheet("Text size", "Cancel", null, "Small", "Comfortable", "Large");
        if (size == "Small")
            _fontSize = 18;
        else if (size == "Large")
            _fontSize = 28;
        else if (size == "Comfortable")
            _fontSize = 22;

        await _bible.SetAppearanceAsync(_fontSize, _background);
        if (_screen == BibleScreen.Reading)
        {
            _verses = _chapterVerses
                .Select(verse => new VerseRow(
                    verse.Number,
                    verse.Text,
                    _fontSize,
                    _bible.GetHighlight(Key(verse.Number))))
                .ToArray();
            VerseList.ItemsSource = _verses;
        }
    }

    private async Task ReadAloudAsync()
    {
        _speechCancellation?.Cancel();
        _speechCancellation = new CancellationTokenSource();
        try
        {
            var text = string.Join(" ", _chapterVerses.Select(verse => verse.Text));
            var languageCode = _language == BibleService.NenoId ? "sw" : "en";
            var locale = (await TextToSpeech.Default.GetLocalesAsync())
                .FirstOrDefault(item => item.Language.StartsWith(languageCode, StringComparison.OrdinalIgnoreCase));
            if (locale is null)
                throw new InvalidOperationException($"No {languageCode} voice is installed.");

            await TextToSpeech.Default.SpeakAsync(
                text,
                new SpeechOptions { Locale = locale },
                _speechCancellation.Token);
        }
        catch (Exception ex)
        {
            await DisplayAlert("Reading aloud", $"The selected offline voice is unavailable: {ex.Message}", "OK");
        }
    }

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

    private async Task PostReadingAsync()
    {
        if (_verses.Count == 0)
            return;

        try
        {
            var community = MauiProgram.Services.GetRequiredService<CommunityService>();
            var created = await community.CreateBiblePostAsync(new BiblePostCreateDto
            {
                BookId = _bible.GetAbbreviationForBook(_book, _language),
                ChapterNumber = _chapter,
                VerseStart = _selectedVerse?.Number ?? _verses[0].Number,
                VerseEnd = _selectedVerse?.Number ?? _verses[0].Number
            });
            if (created is not null)
                await DisplayAlert("Success", "Bible reading posted.", "OK");
        }
        catch (Exception ex)
        {
            await DisplayAlert("Error", ex.Message, "OK");
        }
    }

    public sealed record VerseRow(int Number, string Text, double FontSize, string? Highlight)
    {
        public Color Background => Highlight switch
        {
            "Yellow" => Color.FromArgb("#FFF4B8"),
            "Green" => Color.FromArgb("#DDF4E5"),
            "Blue" => Color.FromArgb("#DDEBFF"),
            _ => Colors.Transparent
        };
    }

    public sealed record SearchRow(BibleSearchResult Result)
    {
        public string Book => Result.Book;
        public int Chapter => Result.Chapter;
        public string Text => Result.Text;
        public string Reference => $"{Result.Book} {Result.Chapter}:{Result.Verse}";
    }
}
