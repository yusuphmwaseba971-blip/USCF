using System.Text.Json;
using System.Reflection;
using System.Collections.Concurrent;
using CCT_USCF.Models;

namespace CCT_USCF.Services;

public class BibleService
{
    private record RawBook(string abbrev, JsonElement chapters);

    private List<string> _displayNames = new();
    private List<string> _abbrevs = new();
    private List<List<string>> _chapters = new();
    private bool _initialized = false;
    private readonly object _lock = new object();

    public async Task InitializeAsync()
    {
        if (_initialized) return;
        lock (_lock)
        {
            if (_initialized) return;
            _initialized = true; // mark to prevent duplicate init
        }

        using var stream = await FileSystem.OpenAppPackageFileAsync("kjv.json");
        using var reader = new StreamReader(stream);
        var text = await reader.ReadToEndAsync();
        var doc = JsonDocument.Parse(text);
        var root = doc.RootElement;

        // canonical English book names in order (66 books)
        var canonical = new[] {
            "Genesis","Exodus","Leviticus","Numbers","Deuteronomy","Joshua","Judges","Ruth","1 Samuel","2 Samuel","1 Kings","2 Kings","1 Chronicles","2 Chronicles","Ezra","Nehemiah","Esther","Job","Psalms","Proverbs","Ecclesiastes","Song of Solomon","Isaiah","Jeremiah","Lamentations","Ezekiel","Daniel","Hosea","Joel","Amos","Obadiah","Jonah","Micah","Nahum","Habakkuk","Zephaniah","Haggai","Zechariah","Malachi","Matthew","Mark","Luke","John","Acts","Romans","1 Corinthians","2 Corinthians","Galatians","Ephesians","Philippians","Colossians","1 Thessalonians","2 Thessalonians","1 Timothy","2 Timothy","Titus","Philemon","Hebrews","James","1 Peter","2 Peter","1 John","2 John","3 John","Jude","Revelation"
        };

        int i = 0;
        foreach (var bookElem in root.EnumerateArray())
        {
            var abbrev = bookElem.GetProperty("abbrev").GetString() ?? bookElem.GetProperty("abbr").GetString() ?? (i < canonical.Length ? canonical[i] : $"B{i}");
            _abbrevs.Add(abbrev);
            var display = (i < canonical.Length) ? canonical[i] : abbrev;
            _displayNames.Add(display);

            var chList = new List<string>();
            var chaptersElem = bookElem.GetProperty("chapters");
            foreach (var ch in chaptersElem.EnumerateArray())
            {
                // Each chapter is an array of verses
                var verses = ch.EnumerateArray().Select(v => v.GetString() ?? string.Empty).ToList();
                // Store chapter as single string joined with \n markers? We store verses nested
                // we'll keep nested structure in _chapters as serialized per chapter: we store verses separated by "\n" placeholder
                chList.Add(string.Join("\n", verses));
                _chapters.Add(verses);
            }

            i++;
        }

        // Note: _chapters is currently a flattened list of chapters across books - adjust storage
        // We'll rebuild a per-book chapters structure instead
        // Re-parse properly
        _chapters = new List<List<string>>();
        i = 0;
        foreach (var bookElem in root.EnumerateArray())
        {
            var chapters = new List<string>();
            var chaptersElem = bookElem.GetProperty("chapters");
            foreach (var ch in chaptersElem.EnumerateArray())
            {
                var verses = ch.EnumerateArray().Select(v => v.GetString() ?? string.Empty).ToList();
                // store verses joined with special delimiter for fast retrieval
                chapters.Add(string.Join("\n", verses));
            }
            _chapters.Add(chapters);
            i++;
        }
    }

    private void EnsureInitialized() => Task.Run(async () => await InitializeAsync()).Wait();

    public async Task<List<string>> GetBooksAsync()
    {
        await InitializeAsync();
        return _displayNames.ToList();
    }

    public string? GetAbbreviationForBook(string bookDisplay)
    {
        var idx = _displayNames.FindIndex(b => string.Equals(b, bookDisplay, StringComparison.OrdinalIgnoreCase));
        if (idx < 0 || idx >= _abbrevs.Count) return null;
        return _abbrevs[idx];
    }

    public async Task<List<int>> GetChaptersAsync(string bookName)
    {
        await InitializeAsync();
        var idx = _displayNames.FindIndex(b => string.Equals(b, bookName, StringComparison.OrdinalIgnoreCase));
        if (idx < 0) return new List<int>();
        var count = _chapters[idx].Count;
        return Enumerable.Range(1, count).ToList();
    }

    public async Task<List<string>> GetVersesAsync(string bookName, int chapter)
    {
        await InitializeAsync();
        var idx = _displayNames.FindIndex(b => string.Equals(b, bookName, StringComparison.OrdinalIgnoreCase));
        if (idx < 0) return new List<string>();
        if (chapter < 1 || chapter > _chapters[idx].Count) return new List<string>();
        var versesJoined = _chapters[idx][chapter - 1];
        var verses = versesJoined.Split('\n').ToList();
        return verses;
    }

    public async Task<string> GetVerseAsync(string bookName, int chapter, int verse)
    {
        var verses = await GetVersesAsync(bookName, chapter);
        if (verse < 1 || verse > verses.Count) return string.Empty;
        return verses[verse - 1];
    }

    public async Task<string> GetPassageAsync(string bookName, int chapter, int verseStart, int verseEnd)
    {
        var verses = await GetVersesAsync(bookName, chapter);
        if (verses.Count == 0) return string.Empty;
        verseStart = Math.Max(1, verseStart);
        verseEnd = Math.Min(verseEnd, verses.Count);
        return string.Join("\n", verses.Skip(verseStart - 1).Take(verseEnd - verseStart + 1));
    }

    // Resolve a backend BiblePostDto (bookId may be abbrev) to a display model
    public async Task<BibleDisplayModel> ResolveBiblePostAsync(CCT_USCF.Models.BiblePostDto post)
    {
        await InitializeAsync();
        // Find index by abbrev first, then by display name
        var idx = _abbrevs.FindIndex(a => string.Equals(a, post.BookId, StringComparison.OrdinalIgnoreCase));
        if (idx < 0)
        {
            idx = _displayNames.FindIndex(b => string.Equals(b, post.BookId, StringComparison.OrdinalIgnoreCase));
        }
        string bookDisplay = (idx >= 0 && idx < _displayNames.Count) ? _displayNames[idx] : post.BookId;
        var passage = await GetPassageAsync(bookDisplay, post.ChapterNumber, post.VerseStart, post.VerseEnd);
        return new BibleDisplayModel
        {
            Id = post.Id,
            UserId = post.UserId,
            BookDisplay = bookDisplay,
            Chapter = post.ChapterNumber,
            VerseStart = post.VerseStart,
            VerseEnd = post.VerseEnd,
            PassageText = passage,
            CreatedAtUtc = post.CreatedAtUtc
        };
    }
}
