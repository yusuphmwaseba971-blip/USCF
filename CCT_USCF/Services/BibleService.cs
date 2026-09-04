using System.Globalization;
using System.Text.Json;
using CCT_USCF.Models;

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

    private readonly SemaphoreSlim _gate = new(1, 1);
    private readonly Dictionary<string, BibleTranslation> _translations = new(StringComparer.OrdinalIgnoreCase);
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
            _translations[KjvId] = await LoadJsonAsync("kjv.json", KjvBookNames, "English", "King James Version");
            _translations[NenoId] = await LoadJsonAsync("swahili_neno.json", NenoBookNames, "Kiswahili", "Biblica Open Kiswahili Contemporary Version (Neno) 2015");
            await LoadStateAsync();
            _initialized = true;
        }
        finally { _gate.Release(); }
    }

    private static async Task<BibleTranslation> LoadJsonAsync(string assetName, IReadOnlyList<string> bookNames, string language, string translationName)
    {
        using var stream = await FileSystem.OpenAppPackageFileAsync(assetName);
        using var document = await JsonDocument.ParseAsync(stream);
        var books = new List<BibleBook>();
        var index = 0;
        foreach (var element in document.RootElement.EnumerateArray())
        {
            var abbreviation = element.GetProperty("abbrev").GetString() ?? $"b{index + 1}";
            var chapters = new List<IReadOnlyList<string>>();
            foreach (var chapter in element.GetProperty("chapters").EnumerateArray())
                chapters.Add(chapter.EnumerateArray().Select(v => v.GetString() ?? string.Empty).ToArray());
            books.Add(new BibleBook(index + 1, index < bookNames.Count ? bookNames[index] : abbreviation,
                abbreviation, index < 39 ? "Old Testament" : "New Testament", chapters));
            index++;
        }
        return new BibleTranslation(language, translationName, books);
    }

    private static readonly string[] KjvBookNames =
    {
        "Genesis","Exodus","Leviticus","Numbers","Deuteronomy","Joshua","Judges","Ruth","1 Samuel","2 Samuel",
        "1 Kings","2 Kings","1 Chronicles","2 Chronicles","Ezra","Nehemiah","Esther","Job","Psalms","Proverbs",
        "Ecclesiastes","Song of Solomon","Isaiah","Jeremiah","Lamentations","Ezekiel","Daniel","Hosea","Joel",
        "Amos","Obadiah","Jonah","Micah","Nahum","Habakkuk","Zephaniah","Haggai","Zechariah","Malachi",
        "Matthew","Mark","Luke","John","Acts","Romans","1 Corinthians","2 Corinthians","Galatians","Ephesians",
        "Philippians","Colossians","1 Thessalonians","2 Thessalonians","1 Timothy","2 Timothy","Titus","Philemon",
        "Hebrews","James","1 Peter","2 Peter","1 John","2 John","3 John","Jude","Revelation"
    };

    private static readonly string[] NenoBookNames =
    {
        "Mwanzo","Kutoka","Walawi","Hesabu","Kumbukumbu","Yoshua","Waamuzi","Ruthu","1 Samweli","2 Samweli",
        "1 Wafalme","2 Wafalme","1 Nyakati","2 Nyakati","Ezra","Nehemia","Esta","Ayubu","Zaburi","Mithali",
        "Mhubiri","Wimbo","Isaya","Yeremia","Maombolezo","Ezekieli","Danieli","Hosea","Yoeli","Amosi",
        "Obadia","Yona","Mika","Nahumu","Habakuki","Sefania","Hagai","Zekaria","Malaki","Mathayo","Marko",
        "Luka","Yohana","Matendo","Warumi","1 Wakorintho","2 Wakorintho","Wagalatia","Waefeso","Wafilipi",
        "Wakolosai","1 Wathesalonike","2 Wathesalonike","1 Timotheo","2 Timotheo","Tito","Filemoni","Waebrania",
        "Yakobo","1 Petro","2 Petro","1 Yohana","2 Yohana","3 Yohana","Yuda","Ufunuo"
    };

    public async Task<IReadOnlyList<string>> GetLanguagesAsync() { await InitializeAsync(); return new[] { KjvId, NenoId }; }
    public async Task<IReadOnlyList<BibleBook>> GetBooksAsync(string language = KjvId)
    {
        await InitializeAsync();
        return _translations.TryGetValue(language, out var t) ? t.Books : Array.Empty<BibleBook>();
    }
    public async Task<IReadOnlyList<int>> GetChaptersAsync(string book, string language = KjvId)
    {
        var found = (await GetBooksAsync(language)).FirstOrDefault(b => b.Name.Equals(book, StringComparison.OrdinalIgnoreCase));
        return found?.Chapters.Select((_, i) => i + 1).ToArray() ?? Array.Empty<int>();
    }
    public async Task<IReadOnlyList<BibleVerse>> GetVersesAsync(string book, int chapter, string language = KjvId)
    {
        var found = (await GetBooksAsync(language)).FirstOrDefault(b => b.Name.Equals(book, StringComparison.OrdinalIgnoreCase));
        if (found is null || chapter < 1 || chapter > found.Chapters.Count) return Array.Empty<BibleVerse>();
        return found.Chapters[chapter - 1].Select((text, i) => new BibleVerse(i + 1, text)).ToArray();
    }
    public async Task<string> GetVerseAsync(string book, int chapter, int verse, string language = KjvId) =>
        (await GetVersesAsync(book, chapter, language)).FirstOrDefault(v => v.Number == verse)?.Text ?? string.Empty;
    public async Task<IReadOnlyList<BibleSearchResult>> SearchAsync(string query, string language = KjvId)
    {
        await InitializeAsync();
        if (string.IsNullOrWhiteSpace(query)) return Array.Empty<BibleSearchResult>();
        var normalized = query.Trim();
        return (await GetBooksAsync(language)).SelectMany(book => book.Chapters.SelectMany((chapter, chapterIndex) =>
            chapter.Select((text, verseIndex) => new BibleSearchResult(book.Name, chapterIndex + 1, verseIndex + 1, text))))
            .Where(v => v.Text.Contains(normalized, StringComparison.OrdinalIgnoreCase))
            .Take(100).ToArray();
    }
    public string GetAbbreviationForBook(string book, string language = KjvId) =>
        _translations.TryGetValue(language, out var t) ? t.Books.FirstOrDefault(b => b.Name.Equals(book, StringComparison.OrdinalIgnoreCase))?.ShortName ?? book : book;

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
            var loaded = await JsonSerializer.DeserializeAsync<StoredState>(File.OpenRead(StatePath), JsonOptions);
            if (loaded is not null)
            {
                var language = loaded.Language.Equals("English", StringComparison.OrdinalIgnoreCase) ? KjvId :
                    loaded.Language.Equals("Swahili", StringComparison.OrdinalIgnoreCase) ? NenoId : loaded.Language;
                _state = loaded with { Language = language };
            }
        }
        catch (JsonException) { /* Corrupt preferences should not prevent Bible reading. */ }
    }
    private async Task SaveStateAsync() => await File.WriteAllTextAsync(StatePath, JsonSerializer.Serialize(_state, JsonOptions));
    public string Language => _state.Language;
    public string Book => _state.Book;
    public int Chapter => _state.Chapter;
    public int Verse => _state.Verse;
    public double FontSize => _state.FontSize;
    public string Background => _state.Background;
    public async Task SetPositionAsync(string language, string book, int chapter, int verse)
    { _state = _state with { Language = language, Book = book, Chapter = chapter, Verse = verse }; await SaveStateAsync(); }
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
