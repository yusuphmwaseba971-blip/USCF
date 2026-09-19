using System.Collections.Concurrent;
using System.Globalization;
using CCT_USCF.Models;
using System.Diagnostics;
using System.Text.Json;

namespace CCT_USCF.Services;

public sealed class BibleService
{
    public const string KjvId = "KJV";
    public const string NenoId = "NENO";

    private sealed record StoredState(
        string Language,
        string Book,
        int Chapter,
        int Verse,
        double FontSize,
        string Background,
        List<string> Bookmarks,
        Dictionary<string, string> Highlights,
        List<BibleNote> Notes);

    private sealed class BibleBookIndex
    {
        public string Translation { get; set; } = string.Empty;
        public int BookId { get; set; }
        public string Name { get; set; } = string.Empty;
        public string ShortName { get; set; } = string.Empty;
        public string Testament { get; set; } = string.Empty;
        public int ChapterCount { get; set; }
    }

    private readonly SemaphoreSlim _gate = new(1, 1);
    private readonly SemaphoreSlim _stateWriteGate = new(1, 1);
    private readonly ConcurrentDictionary<(string Language, int BookId, int Chapter), IReadOnlyList<BibleVerse>> _chapterCache = new();
    private IReadOnlyList<BibleBookIndex>? _bookIndex;
    private StoredState _state = new(KjvId, "John", 3, 16, 22, "CCT-USCF",
        new(), new(StringComparer.OrdinalIgnoreCase), new());
    private bool _initialized;
    private static readonly JsonSerializerOptions JsonOptions = new(JsonSerializerDefaults.Web);
    private string StatePath => Path.Combine(FileSystem.AppDataDirectory, "bible-state.json");

    public async Task InitializeAsync()
    {
        if (_initialized) return;
        await _gate.WaitAsync();
        try
        {
            if (_initialized) return;
            await LoadStateAsync();
            _initialized = true;
        }
        finally { _gate.Release(); }
    }

    public async Task WarmupDefaultAsync()
    {
        var timer = Stopwatch.StartNew();
        await InitializeAsync();
        await EnsureIndexReadyAsync();

        var defaultBook = _state.Book;
        var defaultLanguage = _state.Language;
        var found = (await EnsureIndexReadyAsync()).FirstOrDefault(item =>
            item.Translation.Equals(defaultLanguage, StringComparison.OrdinalIgnoreCase) &&
            item.Name.Equals(defaultBook, StringComparison.OrdinalIgnoreCase));

        if (found is not null)
            _ = await GetVersesAsync(defaultBook, Math.Clamp(_state.Chapter, 1, found.ChapterCount), defaultLanguage);

        Debug.WriteLine($"[BIBLE PERF] Local Bible index ready in {timer.ElapsedMilliseconds} ms");
    }

    private async Task<IReadOnlyList<BibleBookIndex>> EnsureIndexReadyAsync()
    {
        if (_bookIndex is not null) return _bookIndex;
        await _gate.WaitAsync();
        try
        {
            if (_bookIndex is not null) return _bookIndex;
            await using var stream = await FileSystem.OpenAppPackageFileAsync("bible-index.json");
            _bookIndex = await JsonSerializer.DeserializeAsync<List<BibleBookIndex>>(stream, JsonOptions)
                ?? throw new InvalidDataException("The local Bible index is empty.");
            if (_bookIndex.Count != 132)
                throw new InvalidDataException($"The local Bible index contains {_bookIndex.Count} books; expected 132.");
            return _bookIndex;
        }
        finally { _gate.Release(); }
    }

    private static string ChapterAssetPath(string language, int bookId, int chapter) =>
        $"bible-chapters/{language}/{bookId:00}/{chapter:000}.json";

    private async Task<IReadOnlyList<BibleVerse>> ReadChapterAsync(string language, int bookId, int chapter)
    {
        var cacheKey = (language, bookId, chapter);
        if (_chapterCache.TryGetValue(cacheKey, out var cached))
            return cached;

        await using var stream = await FileSystem.OpenAppPackageFileAsync(ChapterAssetPath(language, bookId, chapter));
        var verses = await JsonSerializer.DeserializeAsync<string[]>(stream, JsonOptions)
            ?? throw new InvalidDataException($"Chapter data is empty: {language}/{bookId}/{chapter}");

        var result = verses.Select((text, index) => new BibleVerse(index + 1, text)).ToArray();
        _chapterCache[cacheKey] = result;
        return result;
    }

    public async Task<IReadOnlyList<string>> GetLanguagesAsync() { await InitializeAsync(); return new[] { KjvId, NenoId }; }
    public async Task<IReadOnlyList<BibleBook>> GetBooksAsync(string language = KjvId)
    {
        await InitializeAsync();
        return (await EnsureIndexReadyAsync())
            .Where(book => book.Translation.Equals(language, StringComparison.OrdinalIgnoreCase))
            .Select(book => new BibleBook(book.BookId, book.Name, book.ShortName, book.Testament,
                Array.Empty<IReadOnlyList<string>>()))
            .ToArray();
    }
    public async Task<IReadOnlyList<int>> GetChaptersAsync(string book, string language = KjvId)
    {
        var found = (await EnsureIndexReadyAsync()).FirstOrDefault(item =>
            item.Translation.Equals(language, StringComparison.OrdinalIgnoreCase) &&
            item.Name.Equals(book, StringComparison.OrdinalIgnoreCase));
        return found is null ? Array.Empty<int>() : Enumerable.Range(1, found.ChapterCount).ToArray();
    }
    public async Task<IReadOnlyList<BibleVerse>> GetVersesAsync(string book, int chapter, string language = KjvId)
    {
        var found = (await EnsureIndexReadyAsync()).FirstOrDefault(item =>
            item.Translation.Equals(language, StringComparison.OrdinalIgnoreCase) &&
            item.Name.Equals(book, StringComparison.OrdinalIgnoreCase));
        if (found is null || chapter < 1 || chapter > found.ChapterCount)
            return Array.Empty<BibleVerse>();
        return await ReadChapterAsync(language, found.BookId, chapter);
    }
    public async Task<string> GetVerseAsync(string book, int chapter, int verse, string language = KjvId) =>
        (await GetVersesAsync(book, chapter, language)).FirstOrDefault(v => v.Number == verse)?.Text ?? string.Empty;
    public async Task<IReadOnlyList<BibleSearchResult>> SearchAsync(string query, string language = KjvId)
    {
        await InitializeAsync();
        if (string.IsNullOrWhiteSpace(query)) return Array.Empty<BibleSearchResult>();
        var normalized = query.Trim();
        var results = new List<BibleSearchResult>();
        foreach (var book in (await EnsureIndexReadyAsync()).Where(item =>
            item.Translation.Equals(language, StringComparison.OrdinalIgnoreCase)))
        {
            for (var chapter = 1; chapter <= book.ChapterCount && results.Count < 100; chapter++)
            {
                foreach (var verse in await ReadChapterAsync(language, book.BookId, chapter))
                {
                    if (verse.Text.Contains(normalized, StringComparison.OrdinalIgnoreCase))
                        results.Add(new BibleSearchResult(book.Name, chapter, verse.Number, verse.Text));
                    if (results.Count == 100) break;
                }
            }
            if (results.Count == 100) break;
        }
        return results;
    }

    public async Task<string> GetAbbreviationForBookAsync(string book, string language = KjvId) =>
        (await EnsureIndexReadyAsync()).FirstOrDefault(item =>
            item.Translation.Equals(language, StringComparison.OrdinalIgnoreCase) &&
            item.Name.Equals(book, StringComparison.OrdinalIgnoreCase))?.ShortName ?? book;

    public async Task<BibleDisplayModel> ResolveBiblePostAsync(BiblePostDto post)
    {
        var book = (await GetBooksAsync()).FirstOrDefault(b => b.ShortName.Equals(post.BookId, StringComparison.OrdinalIgnoreCase))?.Name ?? post.BookId;
        var verses = await GetVersesAsync(book, post.ChapterNumber);
        var text = string.Join("\n", verses.Skip(Math.Max(0, post.VerseStart - 1)).Take(post.VerseEnd - post.VerseStart + 1).Select(v => v.Text));
        return new BibleDisplayModel { Id = post.Id, UserId = post.UserId, BookDisplay = book, Chapter = post.ChapterNumber,
            VerseStart = post.VerseStart, VerseEnd = post.VerseEnd, PassageText = text, CreatedAtUtc = post.CreatedAtUtc };
    }

    public async Task LoadStateAsync()
    {
        if (!File.Exists(StatePath)) return;
        try
        {
            await using var stream = File.OpenRead(StatePath);
            var loaded = await JsonSerializer.DeserializeAsync<StoredState>(stream, JsonOptions);
            if (loaded is not null)
                _state = await NormalizeStateAsync(loaded);
        }
        catch (JsonException) { /* Corrupt preferences should not prevent Bible reading. */ }
    }

    private async Task<StoredState> NormalizeStateAsync(StoredState state)
    {
        var language = state.Language.Equals("English", StringComparison.OrdinalIgnoreCase) ? KjvId :
            state.Language.Equals("Swahili", StringComparison.OrdinalIgnoreCase) ? NenoId : state.Language;

        if (!string.Equals(language, KjvId, StringComparison.OrdinalIgnoreCase) &&
            !string.Equals(language, NenoId, StringComparison.OrdinalIgnoreCase))
            language = KjvId;

        var bookIndex = await EnsureIndexReadyAsync();
        var translationBooks = bookIndex
            .Where(item => item.Translation.Equals(language, StringComparison.OrdinalIgnoreCase))
            .ToArray();

        if (translationBooks.Length == 0)
            return new StoredState(KjvId, "John", 3, 16, 22, "CCT-USCF",
                state.Bookmarks, new Dictionary<string, string>(state.Highlights, StringComparer.OrdinalIgnoreCase), state.Notes);

        var book = translationBooks.FirstOrDefault(item => item.Name.Equals(state.Book, StringComparison.OrdinalIgnoreCase))?.Name
            ?? translationBooks.First().Name;

        var foundBook = translationBooks.First(item => item.Name.Equals(book, StringComparison.OrdinalIgnoreCase));
        var chapter = Math.Clamp(state.Chapter, 1, foundBook.ChapterCount);
        var verseCount = (await GetVersesAsync(book, chapter, language)).Count;
        var verse = Math.Clamp(state.Verse, 1, verseCount == 0 ? 1 : verseCount);
        var fontSize = double.IsFinite(state.FontSize) && state.FontSize > 0 ? state.FontSize : 22;
        var background = string.IsNullOrWhiteSpace(state.Background) ? "CCT-USCF" : state.Background;

        return new StoredState(language, book, chapter, verse, fontSize, background,
            state.Bookmarks, new Dictionary<string, string>(state.Highlights, StringComparer.OrdinalIgnoreCase), state.Notes);
    }
    private async Task SaveStateAsync()
    {
        await _stateWriteGate.WaitAsync();
        try
        {
            var state = _state;
            var temporaryPath = $"{StatePath}.tmp";
            await File.WriteAllTextAsync(temporaryPath, JsonSerializer.Serialize(state, JsonOptions));
            File.Move(temporaryPath, StatePath, true);
        }
        finally
        {
            _stateWriteGate.Release();
        }
    }
    public string Language => _state.Language;
    public string Book => _state.Book;
    public int Chapter => _state.Chapter;
    public int Verse => _state.Verse;
    public double FontSize => _state.FontSize;
    public string Background => _state.Background;
    public async Task SetPositionAsync(string language, string book, int chapter, int verse)
    {
        var normalized = await NormalizeStateAsync(new StoredState(
            string.Equals(language, "English", StringComparison.OrdinalIgnoreCase) ? KjvId :
            string.Equals(language, "Swahili", StringComparison.OrdinalIgnoreCase) ? NenoId : language,
            book,
            chapter,
            verse,
            _state.FontSize,
            _state.Background,
            _state.Bookmarks,
            _state.Highlights,
            _state.Notes));

        _state = normalized; 
        await SaveStateAsync();
    }
    public async Task SetAppearanceAsync(double fontSize, string background)
    { _state = _state with { FontSize = fontSize, Background = background }; await SaveStateAsync(); }
    public bool IsBookmarked(string key) => _state.Bookmarks.Contains(key, StringComparer.OrdinalIgnoreCase);
    public IReadOnlyList<string> GetBookmarksForDisplay() => _state.Bookmarks;
    public async Task ToggleBookmarkAsync(string key)
    {
        var list = _state.Bookmarks.ToList();
        var existing = list.FindIndex(x => x.Equals(key, StringComparison.OrdinalIgnoreCase));
        if (existing >= 0) list.RemoveAt(existing); else list.Add(key);
        _state = _state with { Bookmarks = list }; await SaveStateAsync();
    }
    public string? GetHighlight(string key) => _state.Highlights.TryGetValue(key, out var value) ? value : null;
    public async Task SetHighlightAsync(string key, string? color)
    {
        var highlights = new Dictionary<string, string>(_state.Highlights, StringComparer.OrdinalIgnoreCase);
        if (string.IsNullOrWhiteSpace(color)) highlights.Remove(key); else highlights[key] = color;
        _state = _state with { Highlights = highlights }; await SaveStateAsync();
    }
    public IReadOnlyList<BibleNote> GetNotes() => _state.Notes;
    public async Task SaveNoteAsync(BibleNote note)
    {
        var notes = _state.Notes.Where(n => n.Id != note.Id).Append(note).ToList();
        _state = _state with { Notes = notes }; await SaveStateAsync();
    }
}

public sealed record BibleTranslation(string Language, string Name, IReadOnlyList<BibleBook> Books);
public sealed record BibleBook(int Number, string Name, string ShortName, string Testament, IReadOnlyList<IReadOnlyList<string>> Chapters);
public sealed record BibleVerse(int Number, string Text);
public sealed record BibleSearchResult(string Book, int Chapter, int Verse, string Text);
public sealed record BibleNote(string Id, string Language, string Book, int Chapter, int Verse, string Text, DateTime CreatedUtc, DateTime ModifiedUtc);
