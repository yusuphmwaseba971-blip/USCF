using System.Diagnostics;
using System.Text.Json;
using System.Text.Json.Serialization;
using CCT_USCF.Models;
using SQLite;

namespace CCT_USCF.Services;

public sealed class BibleService
{
    public const string KjvId = "KJV";
    public const string NenoId = "NENO";

    internal sealed record StoredState(
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
    private readonly Dictionary<string, IReadOnlyList<BibleVerse>> _verseCache = new(StringComparer.OrdinalIgnoreCase);
    private SQLiteAsyncConnection? _database;
    private StoredState _state = new(KjvId, "Genesis", 1, 1, 22, "CCT-USCF",
        new(), new(StringComparer.OrdinalIgnoreCase), new());
    private bool _initialized;
    private static readonly string AppDatabasePath = Path.Combine(FileSystem.AppDataDirectory, "bible.sqlite");
    private string StatePath => Path.Combine(FileSystem.AppDataDirectory, "bible-state.json");

    private static void PerfLog(string message)
    {
        Debug.WriteLine(message);
#if ANDROID
        Android.Util.Log.Debug("BiblePerf", message);
#endif
    }

    public async Task InitializeAsync()
    {
        if (_initialized)
            return;

        await _gate.WaitAsync();
        try
        {
            if (_initialized)
                return;

            await EnsureDatabaseReadyAsync().ConfigureAwait(false);
            await LoadStateAsync().ConfigureAwait(false);
            _initialized = true;
        }
        finally
        {
            _gate.Release();
        }
    }

    public async Task WarmupDefaultAsync()
    {
        await InitializeAsync().ConfigureAwait(false);
        PerfLog("[BIBLE] SQLite database initialized without full-Bible preload");
    }

    public async Task EnsureReadyAsync()
    {
        await InitializeAsync().ConfigureAwait(false);
    }

    public async Task EnsureTranslationReadyAsync(string language)
    {
        await InitializeAsync().ConfigureAwait(false);
        var normalized = string.IsNullOrWhiteSpace(language) ? KjvId : language;
        _ = await GetBooksAsync(normalized).ConfigureAwait(false);
    }

    private async Task EnsureDatabaseReadyAsync()
    {
        if (File.Exists(AppDatabasePath))
            return;

        using var stream = await FileSystem.OpenAppPackageFileAsync("bible.sqlite").ConfigureAwait(false);
        await using var destination = File.Create(AppDatabasePath);
        await stream.CopyToAsync(destination).ConfigureAwait(false);
    }

    private async Task<SQLiteAsyncConnection> GetDatabaseAsync()
    {
        await InitializeAsync().ConfigureAwait(false);
        _database ??= new SQLiteAsyncConnection(AppDatabasePath, SQLiteOpenFlags.ReadWrite | SQLiteOpenFlags.Create | SQLiteOpenFlags.FullMutex);
        return _database;
    }

    public async Task<IReadOnlyList<string>> GetLanguagesAsync()
    {
        await InitializeAsync().ConfigureAwait(false);
        return new[] { KjvId, NenoId };
    }

    public async Task<IReadOnlyList<string>> GetTestamentsAsync(string language)
    {
        var db = await GetDatabaseAsync().ConfigureAwait(false);
        var rows = await db.QueryAsync<BibleTestamentRow>(
            "SELECT DISTINCT Testament AS Testament FROM BibleBookRow WHERE Language = ? ORDER BY Testament",
            language ?? KjvId).ConfigureAwait(false);
        return rows.Select(row => row.Testament).ToArray();
    }

    public async Task<IReadOnlyList<BibleBook>> GetBooksAsync(string language = KjvId, string? testament = null)
    {
        var db = await GetDatabaseAsync().ConfigureAwait(false);
        var rows = testament is null
            ? await db.QueryAsync<BibleBookRow>(
                "SELECT Id, Language, Testament, BookOrder, Name, Abbreviation FROM BibleBookRow WHERE Language = ? ORDER BY BookOrder",
                language ?? KjvId).ConfigureAwait(false)
            : await db.QueryAsync<BibleBookRow>(
                "SELECT Id, Language, Testament, BookOrder, Name, Abbreviation FROM BibleBookRow WHERE Language = ? AND Testament = ? ORDER BY BookOrder",
                language ?? KjvId,
                testament).ConfigureAwait(false);

        return rows.Select(row => new BibleBook(row.Id, row.Name, row.Abbreviation, row.Testament, Array.Empty<IReadOnlyList<string>>())).ToArray();
    }

    public async Task<IReadOnlyList<int>> GetChaptersAsync(string book, string language = KjvId)
    {
        var db = await GetDatabaseAsync().ConfigureAwait(false);
        var rows = await db.QueryAsync<BibleChapterNumberRow>(
            "SELECT c.ChapterNumber AS ChapterNumber FROM BibleChapterRow c INNER JOIN BibleBookRow b ON b.Id = c.BookId WHERE b.Language = ? AND b.Name = ? ORDER BY c.ChapterNumber",
            language ?? KjvId,
            book ?? string.Empty).ConfigureAwait(false);
        return rows.Select(row => row.ChapterNumber).ToArray();
    }

    public async Task<IReadOnlyList<BibleVerse>> GetVersesAsync(string book, int chapter, string language = KjvId)
    {
        var cacheKey = $"{language}|{book}|{chapter}";
        if (_verseCache.TryGetValue(cacheKey, out var cached))
            return cached;

        var db = await GetDatabaseAsync().ConfigureAwait(false);
        var rows = await db.QueryAsync<BibleVerseQueryRow>(
            "SELECT v.VerseNumber, v.Text FROM BibleVerseRow v INNER JOIN BibleChapterRow c ON c.Id = v.ChapterId INNER JOIN BibleBookRow b ON b.Id = c.BookId WHERE b.Language = ? AND b.Name = ? AND c.ChapterNumber = ? ORDER BY v.VerseNumber",
            language ?? KjvId,
            book ?? string.Empty,
            chapter).ConfigureAwait(false);

        var verses = rows.Select(row => new BibleVerse(row.VerseNumber, row.Text ?? string.Empty)).ToArray();
        _verseCache[cacheKey] = verses;
        return verses;
    }

    public async Task<string> GetVerseAsync(string book, int chapter, int verse, string language = KjvId)
    {
        var db = await GetDatabaseAsync().ConfigureAwait(false);
        var rows = await db.QueryAsync<BibleVerseTextRow>(
            "SELECT v.Text AS Text FROM BibleVerseRow v INNER JOIN BibleChapterRow c ON c.Id = v.ChapterId INNER JOIN BibleBookRow b ON b.Id = c.BookId WHERE b.Language = ? AND b.Name = ? AND c.ChapterNumber = ? AND v.VerseNumber = ?",
            language ?? KjvId,
            book ?? string.Empty,
            chapter,
            verse).ConfigureAwait(false);
        return rows.FirstOrDefault()?.Text ?? string.Empty;
    }

    public async Task<IReadOnlyList<BibleSearchResult>> SearchAsync(string query, string language = KjvId)
    {
        await InitializeAsync().ConfigureAwait(false);
        if (string.IsNullOrWhiteSpace(query))
            return Array.Empty<BibleSearchResult>();

        var normalized = query.Trim();
        var db = await GetDatabaseAsync().ConfigureAwait(false);
        var rows = await db.QueryAsync<BibleSearchResultQueryRow>(
            "SELECT b.Name AS Book, c.ChapterNumber AS Chapter, v.VerseNumber AS Verse, v.Text AS Text FROM BibleVerseRow v INNER JOIN BibleChapterRow c ON c.Id = v.ChapterId INNER JOIN BibleBookRow b ON b.Id = c.BookId WHERE b.Language = ? AND v.Text LIKE ? ORDER BY b.BookOrder, c.ChapterNumber, v.VerseNumber LIMIT 100",
            language ?? KjvId,
            $"%{normalized}%").ConfigureAwait(false);

        return rows.Select(row => new BibleSearchResult(row.Book, row.Chapter, row.Verse, row.Text ?? string.Empty)).ToArray();
    }

    public string GetAbbreviationForBook(string book, string language = KjvId)
    {
        var db = GetDatabaseAsync().GetAwaiter().GetResult();
        var rows = db.QueryAsync<BibleBookRow>(
            "SELECT Id, Language, Testament, BookOrder, Name, Abbreviation FROM BibleBookRow WHERE Language = ? AND Name = ?",
            language ?? KjvId,
            book ?? string.Empty).GetAwaiter().GetResult();
        return rows.FirstOrDefault()?.Abbreviation ?? book;
    }

    public async Task<BibleDisplayModel> ResolveBiblePostAsync(BiblePostDto post)
    {
        var books = await GetBooksAsync().ConfigureAwait(false);
        var book = books
            .FirstOrDefault(b => b.ShortName.Equals(post.BookId, StringComparison.OrdinalIgnoreCase))?.Name ?? post.BookId;
        var verses = await GetVersesAsync(book, post.ChapterNumber).ConfigureAwait(false);
        var text = string.Join("\n", verses
            .Skip(Math.Max(0, post.VerseStart - 1))
            .Take(Math.Max(0, post.VerseEnd - post.VerseStart + 1))
            .Select(v => v.Text));

        return new BibleDisplayModel
        {
            Id = post.Id,
            UserId = post.UserId,
            BookDisplay = book,
            Chapter = post.ChapterNumber,
            VerseStart = post.VerseStart,
            VerseEnd = post.VerseEnd,
            PassageText = text,
            CreatedAtUtc = post.CreatedAtUtc
        };
    }

    public async Task LoadStateAsync()
    {
        if (!File.Exists(StatePath))
            return;

        try
        {
            await using var stateFile = File.OpenRead(StatePath);
            StoredState? loaded = null;
            try
            {
                // Prefer source-generated context when available under trimming.
                loaded = await JsonSerializer.DeserializeAsync(stateFile, BibleJsonContext.Default.StoredState).ConfigureAwait(false);
            }
            catch (Exception ex) when (ex is NotSupportedException || ex is JsonException || ex is InvalidOperationException)
            {
                // Fallback: parse with JsonDocument which doesn't require reflection.
                try
                {
                    stateFile.Seek(0, SeekOrigin.Begin);
                    using var reader = new StreamReader(stateFile);
                    var text = await reader.ReadToEndAsync().ConfigureAwait(false);
                    using var doc = JsonDocument.Parse(text);
                    var root = doc.RootElement;

                    string language = root.TryGetProperty("Language", out var l) && l.ValueKind == JsonValueKind.String ? l.GetString()! : KjvId;
                    string book = root.TryGetProperty("Book", out var b) && b.ValueKind == JsonValueKind.String ? b.GetString()! : "Genesis";
                    int chapter = root.TryGetProperty("Chapter", out var ch) && ch.ValueKind == JsonValueKind.Number ? ch.GetInt32() : 1;
                    int verse = root.TryGetProperty("Verse", out var v) && v.ValueKind == JsonValueKind.Number ? v.GetInt32() : 1;
                    double fontSize = root.TryGetProperty("FontSize", out var fs) && fs.ValueKind == JsonValueKind.Number ? fs.GetDouble() : 22.0;
                    string background = root.TryGetProperty("Background", out var bg) && bg.ValueKind == JsonValueKind.String ? bg.GetString()! : "CCT-USCF";

                    var bookmarks = new List<string>();
                    if (root.TryGetProperty("Bookmarks", out var bm) && bm.ValueKind == JsonValueKind.Array)
                    {
                        foreach (var item in bm.EnumerateArray())
                        {
                            if (item.ValueKind == JsonValueKind.String)
                                bookmarks.Add(item.GetString()!);
                        }
                    }

                    var highlights = new Dictionary<string, string>(StringComparer.OrdinalIgnoreCase);
                    if (root.TryGetProperty("Highlights", out var hl) && hl.ValueKind == JsonValueKind.Object)
                    {
                        foreach (var prop in hl.EnumerateObject())
                        {
                            if (prop.Value.ValueKind == JsonValueKind.String)
                                highlights[prop.Name] = prop.Value.GetString()!;
                        }
                    }

                    var notes = new List<BibleNote>();
                    // Notes are optional and may be complex; ignore detailed reconstruction for resilience.

                    loaded = new StoredState(language, book, chapter, verse, fontSize, background, bookmarks, highlights, notes);
                }
                catch
                {
                    // If fallback parsing fails, give up silently and use default state.
                }
            }

            if (loaded is not null)
            {
                var language = loaded.Language.Equals("English", StringComparison.OrdinalIgnoreCase)
                    ? KjvId
                    : loaded.Language.Equals("Swahili", StringComparison.OrdinalIgnoreCase)
                        ? NenoId
                        : loaded.Language;
                _state = loaded with { Language = language };
            }
        }
        catch (JsonException)
        {
            // Corrupt preferences should not prevent Bible reading.
        }
    }

    private async Task SaveStateAsync() =>
        await File.WriteAllTextAsync(StatePath, JsonSerializer.Serialize(_state, BibleJsonContext.Default.StoredState)).ConfigureAwait(false);

    public string Language => _state.Language;
    public string Book => _state.Book;
    public int Chapter => _state.Chapter;
    public int Verse => _state.Verse;
    public double FontSize => _state.FontSize;
    public string Background => _state.Background;

    public async Task SetPositionAsync(string language, string book, int chapter, int verse)
    {
        _state = _state with { Language = language, Book = book, Chapter = chapter, Verse = verse };
        await SaveStateAsync().ConfigureAwait(false);
    }

    public async Task SetAppearanceAsync(double fontSize, string background)
    {
        _state = _state with { FontSize = fontSize, Background = background };
        await SaveStateAsync().ConfigureAwait(false);
    }

    public bool IsBookmarked(string key) => _state.Bookmarks.Contains(key, StringComparer.OrdinalIgnoreCase);
    public IReadOnlyList<string> GetBookmarksForDisplay() => _state.Bookmarks;

    public async Task ToggleBookmarkAsync(string key)
    {
        var list = _state.Bookmarks.ToList();
        var existing = list.FindIndex(x => x.Equals(key, StringComparison.OrdinalIgnoreCase));
        if (existing >= 0)
            list.RemoveAt(existing);
        else
            list.Add(key);

        _state = _state with { Bookmarks = list };
        await SaveStateAsync().ConfigureAwait(false);
    }

    public string? GetHighlight(string key) => _state.Highlights.TryGetValue(key, out var value) ? value : null;
    public async Task SetHighlightAsync(string key, string? color)
    {
        var highlights = new Dictionary<string, string>(_state.Highlights, StringComparer.OrdinalIgnoreCase);
        if (string.IsNullOrWhiteSpace(color))
            highlights.Remove(key);
        else
            highlights[key] = color;

        _state = _state with { Highlights = highlights };
        await SaveStateAsync().ConfigureAwait(false);
    }

    public IReadOnlyList<BibleNote> GetNotes() => _state.Notes;
    public async Task SaveNoteAsync(BibleNote note)
    {
        var notes = _state.Notes.Where(n => n.Id != note.Id).Append(note).ToList();
        _state = _state with { Notes = notes };
        await SaveStateAsync().ConfigureAwait(false);
    }
}

[Table("BibleBookRow")]
public sealed class BibleBookRow
{
    [PrimaryKey, AutoIncrement, Column("Id")]
    public int Id { get; set; }

    [Column("Language")]
    public string Language { get; set; } = string.Empty;

    [Column("Testament")]
    public string Testament { get; set; } = string.Empty;

    [Column("BookOrder")]
    public int BookOrder { get; set; }

    [Column("Name")]
    public string Name { get; set; } = string.Empty;

    [Column("Abbreviation")]
    public string Abbreviation { get; set; } = string.Empty;
}

public sealed class BibleTestamentRow
{
    [Column("Testament")]
    public string Testament { get; set; } = string.Empty;
}

public sealed class BibleChapterNumberRow
{
    [Column("ChapterNumber")]
    public int ChapterNumber { get; set; }
}

public sealed class BibleVerseTextRow
{
    [Column("Text")]
    public string Text { get; set; } = string.Empty;
}

public sealed class BibleVerseQueryRow
{
    [Column("VerseNumber")]
    public int VerseNumber { get; set; }

    [Column("Text")]
    public string Text { get; set; } = string.Empty;
}

public sealed class BibleSearchResultQueryRow
{
    [Column("Book")]
    public string Book { get; set; } = string.Empty;

    [Column("Chapter")]
    public int Chapter { get; set; }

    [Column("Verse")]
    public int Verse { get; set; }

    [Column("Text")]
    public string? Text { get; set; }
}

public sealed record BibleTranslation(string Language, string Name, IReadOnlyList<BibleBook> Books);
public sealed record BibleBook(int Number, string Name, string ShortName, string Testament, IReadOnlyList<IReadOnlyList<string>> Chapters);
public sealed record BibleVerse(int Number, string Text);
public sealed record BibleSearchResult(string Book, int Chapter, int Verse, string Text);
public sealed record BibleNote(string Id, string Language, string Book, int Chapter, int Verse, string Text, DateTime CreatedUtc, DateTime ModifiedUtc);

[JsonSourceGenerationOptions(
    PropertyNameCaseInsensitive = true,
    PropertyNamingPolicy = JsonKnownNamingPolicy.CamelCase)]
[JsonSerializable(typeof(BibleService.StoredState))]
internal partial class BibleJsonContext : JsonSerializerContext
{
}
