using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http.Headers;
using System.Net.Http.Json;
using System.Text.Json.Serialization;
using System.Threading.Tasks;

using CCT_USCF.Models;
using Plugin.Firebase.Auth;
using Plugin.Firebase.Firestore;
using Microsoft.Maui.Networking;
using SQLite;

namespace CCT_USCF.Services;

public class PrayerService
{
    private const string PrayerLogTag = "CCT-USCF-Prayer";

    public event Action<IReadOnlyList<PrayerRequest>>? PrayersSynchronized;
    private readonly IFirebaseAuth _auth;
    private readonly IFirebaseFirestore _firestore;
    private readonly HttpClient _http;
    private readonly AuthService _authService;

    public PrayerService(
        IFirebaseAuth auth,
        IFirebaseFirestore firestore,
        HttpClient http,
        AuthService authService)
    {
        _auth = auth;
        _firestore = firestore;
        _http = http;
        _authService = authService;
    }

    public async Task<PrayerRequest> CreatePrayerAsync(
        string content,
        PrayerCategory category,
        PrayerReach reach,
        PrayerVisibility visibility,
        PrayerNameVisibility nameVisibility)
    {
        var normalizedContent = NormalizeContent(content);
        var isPrivate = visibility == PrayerVisibility.Private;
        System.Diagnostics.Debug.WriteLine(
            $"[PRAYER_REQUEST_START] contentLength={normalizedContent.Length} " +
            $"private={isPrivate} database=cct-uscf-db table=cct_prayers");

        if (string.IsNullOrWhiteSpace(normalizedContent))
            throw new ArgumentException("Prayer request content is required.", nameof(content));

        var currentUser = _auth.CurrentUser;
        System.Diagnostics.Debug.WriteLine(
            $"[PRAYER_REQUEST_AUTH] uidPresent={!string.IsNullOrWhiteSpace(currentUser?.Uid)}");
        if (currentUser == null)
            throw new InvalidOperationException("You must be signed in to create a prayer request.");

        var profile = MauiProgram.CurrentUser;
        var prayerId = Guid.NewGuid().ToString("N");
        var authorDisplayName = !string.IsNullOrWhiteSpace(profile?.FullName)
            ? profile.FullName
            : currentUser.DisplayName ?? "Member";

        var prayer = new PrayerRequest
        {
            PrayerId = prayerId,
            AuthorUid = currentUser.Uid,
            AuthorDisplayName = authorDisplayName,
            IsAnonymous = nameVisibility == PrayerNameVisibility.Anonymous,
            Content = normalizedContent,
            Category = category,
            Reach = reach,
            Visibility = visibility,
            NameVisibility = nameVisibility,
            BranchId = profile?.BranchId,
            DistrictId = profile?.DistrictId,
            RegionId = profile?.RegionId,
            Status = PrayerStatus.Active,
            CreatedAtUtc = DateTime.UtcNow,
            UpdatedAtUtc = DateTime.UtcNow,
            PrayerCount = 0,
            IsAnswered = false,
            AnsweredAtUtc = null,
            IsOwnerVisible = nameVisibility == PrayerNameVisibility.ShowMyName
        };

        string? token;
        try
        {
            token = await _authService.GetCurrentFirebaseIdTokenAsync();
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine(
                $"[PRAYER_REQUEST_ERROR] exceptionType={ex.GetType().FullName} " +
                $"message={ex.Message} operation=Firebase ID token retrieval");
            throw;
        }

        if (string.IsNullOrWhiteSpace(token))
            throw new InvalidOperationException("Your Firebase session has expired. Please sign in again.");

        var payload = new PrayerCreatePayload(prayer.Content, null, isPrivate);
        System.Diagnostics.Debug.WriteLine(
            $"[PRAYER_REQUEST_PAYLOAD] contentLength={prayer.Content.Length} " +
            $"private={isPrivate} leaderId=none");

        using var request = new HttpRequestMessage(HttpMethod.Post, "api/prayers")
        {
            Content = JsonContent.Create(payload, PrayerJsonContext.Default.PrayerCreatePayload)
        };
        request.Headers.Authorization = new AuthenticationHeaderValue("Bearer", token);
        System.Diagnostics.Debug.WriteLine(
            "[PRAYER_REQUEST_APPWRITE_CREATE] started route=api/prayers " +
            "database=cct-uscf-db table=cct_prayers");

        HttpResponseMessage response;
        try
        {
            response = await _http.SendAsync(request);
        }
        catch (HttpRequestException ex)
        {
            System.Diagnostics.Debug.WriteLine(
                $"[PRAYER_REQUEST_ERROR] exceptionType={ex.GetType().FullName} " +
                $"status={(int?)ex.StatusCode ?? 0} message={ex.Message} " +
                "operation=Appwrite create request");
            throw;
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine(
                $"[PRAYER_REQUEST_ERROR] exceptionType={ex.GetType().FullName} " +
                $"message={ex.Message} operation=Appwrite create request");
            throw;
        }

        using (response)
        {
            var responseBody = await response.Content.ReadAsStringAsync();
            if (!response.IsSuccessStatusCode)
            {
                System.Diagnostics.Debug.WriteLine(
                    $"[PRAYER_REQUEST_ERROR] exceptionType=HttpStatus " +
                    $"status={(int)response.StatusCode} responseBodyLength={responseBody.Length} " +
                    "operation=Appwrite create request");
                throw new HttpRequestException(
                    $"Prayer request could not be saved ({(int)response.StatusCode}).",
                    null,
                    response.StatusCode);
            }

            var result = System.Text.Json.JsonSerializer.Deserialize(
                responseBody,
                PrayerJsonContext.Default.PrayerCreateResponse);
            if (result is null || !result.Success || string.IsNullOrWhiteSpace(result.RowId))
            {
                System.Diagnostics.Debug.WriteLine(
                    "[PRAYER_REQUEST_ERROR] exceptionType=InvalidResponse " +
                    "message=Appwrite did not confirm creation of the prayer request. " +
                    "operation=Appwrite create response");
                throw new InvalidOperationException(
                    "Appwrite did not confirm creation of the prayer request.");
            }

            prayer.PrayerId = result.RowId;
            prayer.Status = ParseStatus(result.Status);
            System.Diagnostics.Debug.WriteLine(
                $"[PRAYER_REQUEST_SUCCESS] status={result.Status} private={result.IsPrivate}");
        }

        await SaveOrUpdateCachedPrayersAsync([prayer]);
        return prayer;
    }

    public async Task<IReadOnlyList<PrayerRequest>> GetPrayerWallAsync(int limit = 5)
    {
        System.Diagnostics.Debug.WriteLine("[PRAYER_FETCH_START]");
        var token = await _authService.GetCurrentFirebaseIdTokenAsync();
        if (string.IsNullOrWhiteSpace(token))
            throw new InvalidOperationException("Your Firebase session has expired. Please sign in again.");
        System.Diagnostics.Debug.WriteLine(
            $"[PRAYER_FETCH_AUTH] authenticatedUserAvailable={_auth.CurrentUser != null}");

        using var request = new HttpRequestMessage(
            HttpMethod.Get, $"api/prayers?limit={Math.Clamp(limit, 1, 100)}");
        request.Headers.Authorization = new AuthenticationHeaderValue("Bearer", token);
        System.Diagnostics.Debug.WriteLine("[PRAYER_FETCH_REQUEST] database=cct-uscf-db table=cct_prayers");
        using var response = await _http.SendAsync(request);
        var responseBody = await response.Content.ReadAsStringAsync();
        System.Diagnostics.Debug.WriteLine(
            $"[PRAYER_FETCH_RESPONSE] status={(int)response.StatusCode} bodyLength={responseBody.Length}");
        if (!response.IsSuccessStatusCode)
        {
            System.Diagnostics.Debug.WriteLine($"[PRAYER_FETCH_ERROR] status={(int)response.StatusCode}");
            throw new HttpRequestException($"Prayer requests could not be loaded ({(int)response.StatusCode}).");
        }

        var result = System.Text.Json.JsonSerializer.Deserialize(
            responseBody,
            PrayerJsonContext.Default.PrayerListResponse);
        var items = (result?.Rows ?? [])
            .Where(row => !string.IsNullOrWhiteSpace(row.Content))
            .Select(MapPrayerRow)
            .OrderByDescending(item => item.CreatedAtUtc)
            .ToList();
        System.Diagnostics.Debug.WriteLine($"[PRAYER_FETCH_RESULT] rows={result?.Rows?.Count ?? 0} displayed={items.Count}");
        return items;
    }

    [Table("prayer_cache")]
    private sealed class CachedPrayer
    {
        [PrimaryKey]
        public string PrayerId { get; set; } = string.Empty;
        [Indexed]
        public string CacheOwnerUid { get; set; } = string.Empty;
        public string UserId { get; set; } = string.Empty;
        public string Content { get; set; } = string.Empty;
        public bool IsPrivate { get; set; }
        public string Status { get; set; } = "active";
        public DateTime CreatedAtUtc { get; set; }
        public DateTime UpdatedAtUtc { get; set; }
        public DateTime CachedAtUtc { get; set; }
        public int PrayerCount { get; set; }
        public bool IsPrayed { get; set; }
    }

    private sealed class SqliteColumnInfo
    {
        public string Name { get; set; } = string.Empty;
    }

    private readonly SemaphoreSlim _cacheInitializationLock = new(1, 1);
    private SQLiteAsyncConnection? _cacheDatabase;
    private bool _cacheInitialized;
    private const string CacheDatabaseName = "cct-uscf-prayer-cache.db3";
    private const string LastPrayerCursorKey = "PrayerCache_LastCursor";
    private const string LastPrayerSyncKey = "PrayerCache_LastSyncAt";
    private const string CacheOwnerColumn = "CacheOwnerUid";

    private string UserCacheKey(string key) =>
        $"{key}_{_auth.CurrentUser?.Uid ?? "anonymous"}";

    private async Task<SQLiteAsyncConnection> GetCacheDatabaseAsync()
    {
        if (_cacheDatabase == null)
        {
            var databasePath = Path.Combine(FileSystem.AppDataDirectory, CacheDatabaseName);
            _cacheDatabase = new SQLiteAsyncConnection(databasePath);
        }

        if (_cacheInitialized)
            return _cacheDatabase;

        await _cacheInitializationLock.WaitAsync();
        try
        {
            if (!_cacheInitialized)
            {
                await _cacheDatabase.CreateTableAsync<CachedPrayer>();
                var columns = await _cacheDatabase.QueryAsync<SqliteColumnInfo>(
                    "PRAGMA table_info('prayer_cache');");
                if (!columns.Any(column => column.Name.Equals(CacheOwnerColumn, StringComparison.OrdinalIgnoreCase)))
                {
                    await _cacheDatabase.ExecuteAsync(
                        "ALTER TABLE prayer_cache ADD COLUMN CacheOwnerUid TEXT NOT NULL DEFAULT '';");
                    await _cacheDatabase.ExecuteAsync(
                        "DELETE FROM prayer_cache WHERE CacheOwnerUid = '';");
                }
                if (!columns.Any(column => column.Name.Equals(nameof(CachedPrayer.PrayerCount), StringComparison.OrdinalIgnoreCase)))
                    await _cacheDatabase.ExecuteAsync("ALTER TABLE prayer_cache ADD COLUMN PrayerCount INTEGER NOT NULL DEFAULT 0;");
                if (!columns.Any(column => column.Name.Equals(nameof(CachedPrayer.IsPrayed), StringComparison.OrdinalIgnoreCase)))
                    await _cacheDatabase.ExecuteAsync("ALTER TABLE prayer_cache ADD COLUMN IsPrayed INTEGER NOT NULL DEFAULT 0;");
                _cacheInitialized = true;
                Android.Util.Log.Info(PrayerLogTag, "[PRAYER_LOAD_CACHE] SQLite prayer_cache initialized");
            }
        }
        finally
        {
            _cacheInitializationLock.Release();
        }

        return _cacheDatabase;
    }

    private static PrayerRequest ToPrayerRequest(CachedPrayer cached, string? currentUserId)
    {
        return new PrayerRequest
        {
            PrayerId = cached.PrayerId,
            AuthorUid = cached.UserId,
            AuthorDisplayName = cached.UserId == currentUserId ? "You" : "Prayer member",
            IsAnonymous = true,
            Content = cached.Content,
            Visibility = cached.IsPrivate
                ? PrayerVisibility.Private
                : PrayerVisibility.NationalPrayerWall,
            Status = ParseStatus(cached.Status),
            CreatedAtUtc = cached.CreatedAtUtc,
            UpdatedAtUtc = cached.UpdatedAtUtc,
            IsOwnerVisible = cached.UserId == currentUserId
            ,PrayerCount = cached.PrayerCount
            ,IsPrayed = cached.IsPrayed
        };
    }

    private CachedPrayer ToCachedPrayer(PrayerRequest prayer, string ownerUid)
    {
        return new CachedPrayer
        {
            PrayerId = prayer.PrayerId,
            CacheOwnerUid = ownerUid,
            UserId = prayer.AuthorUid,
            Content = prayer.Content,
            IsPrivate = prayer.Visibility == PrayerVisibility.Private,
            Status = prayer.Status.ToString(),
            CreatedAtUtc = prayer.CreatedAtUtc,
            UpdatedAtUtc = prayer.UpdatedAtUtc,
            CachedAtUtc = DateTime.UtcNow
            ,PrayerCount = prayer.PrayerCount
            ,IsPrayed = prayer.IsPrayed
        };
    }

    public async Task<List<PrayerRequest>> LoadCachedPrayersAsync(int limit = 50)
    {
        Android.Util.Log.Info(PrayerLogTag, "[PRAYER_LOAD_CACHE] reading local cache");
        var ownerUid = _auth.CurrentUser?.Uid;
        if (string.IsNullOrWhiteSpace(ownerUid))
        {
            Android.Util.Log.Info(PrayerLogTag, "[PRAYER_LOAD_AUTH] authenticatedUserAvailable=false");
            return [];
        }
        var database = await GetCacheDatabaseAsync();
        var cached = await database.Table<CachedPrayer>()
            .Where(row => row.CacheOwnerUid == ownerUid)
            .OrderByDescending(row => row.CreatedAtUtc)
            .Take(limit)
            .ToListAsync();
        Android.Util.Log.Info(PrayerLogTag, $"[PRAYER_LOAD_CACHE] rows={cached.Count}");
        return cached
            .Select(row => ToPrayerRequest(row, _auth.CurrentUser?.Uid))
            .ToList();
    }

    private async Task SaveOrUpdateCachedPrayersAsync(IEnumerable<PrayerRequest> prayers)
    {
        var database = await GetCacheDatabaseAsync();
        var inserted = 0;
        var updated = 0;
        var skipped = 0;

        foreach (var prayer in prayers.Where(item => !string.IsNullOrWhiteSpace(item.PrayerId)))
        {
            var ownerUid = _auth.CurrentUser?.Uid;
            if (string.IsNullOrWhiteSpace(ownerUid))
                throw new InvalidOperationException("Cannot cache prayer requests without an authenticated user.");
            var incoming = ToCachedPrayer(prayer, ownerUid);
            var existing = await database.FindAsync<CachedPrayer>(incoming.PrayerId);
            if (existing == null)
            {
                await database.InsertAsync(incoming);
                inserted++;
            }
            else if (existing.UpdatedAtUtc != incoming.UpdatedAtUtc ||
                     existing.Content != incoming.Content ||
                     existing.Status != incoming.Status ||
                     existing.IsPrivate != incoming.IsPrivate ||
                     existing.PrayerCount != incoming.PrayerCount ||
                     existing.IsPrayed != incoming.IsPrayed)
            {
                await database.UpdateAsync(incoming);
                updated++;
            }
            else
            {
                skipped++;
            }
        }

        Android.Util.Log.Info(
            PrayerLogTag,
            $"[PRAYER_LOAD_CACHE_SAVE] inserted={inserted} updated={updated} unchanged={skipped}");
    }

    private async Task<(List<PrayerRequest> Rows, string? LastCursor)> FetchPagedPrayersAsync(
        int limit,
        string? cursorAfter = null,
        string? newerThan = null)
    {
        var boundedLimit = Math.Clamp(limit, 1, 100);
        Android.Util.Log.Info(
            PrayerLogTag,
            $"[PRAYER_LOAD_AUTH] firebaseUserAvailable={_auth.CurrentUser != null}");

        var token = await _authService.GetCurrentFirebaseIdTokenAsync();
        if (string.IsNullOrWhiteSpace(token))
            throw new InvalidOperationException("Your Firebase session has expired. Please sign in again.");
        Android.Util.Log.Info(PrayerLogTag, "[PRAYER_LOAD_AUTH] firebaseTokenAvailable=true");

        var query = $"api/prayers?limit={boundedLimit}";
        if (!string.IsNullOrWhiteSpace(cursorAfter))
            query += $"&cursorAfter={Uri.EscapeDataString(cursorAfter)}";
        if (!string.IsNullOrWhiteSpace(newerThan))
            query += $"&newerThan={Uri.EscapeDataString(newerThan)}";

        using var request = new HttpRequestMessage(HttpMethod.Get, query);
        request.Headers.Authorization = new AuthenticationHeaderValue("Bearer", token);
        Android.Util.Log.Info(
            PrayerLogTag,
            $"[PRAYER_LOAD_REQUEST] route=api/prayers limit={boundedLimit} " +
            $"cursorPresent={!string.IsNullOrWhiteSpace(cursorAfter)} newerThanPresent={!string.IsNullOrWhiteSpace(newerThan)}");
        using var response = await _http.SendAsync(request);
        var body = await response.Content.ReadAsStringAsync();
        Android.Util.Log.Info(
            PrayerLogTag,
            $"[PRAYER_LOAD_RESPONSE] status={(int)response.StatusCode} requestedLimit={boundedLimit} bodyLength={body.Length}");
        if (!response.IsSuccessStatusCode)
            throw new HttpRequestException($"Prayer requests could not be loaded ({(int)response.StatusCode}).");

        Android.Util.Log.Info(PrayerLogTag, "[PRAYER_LOAD_PARSE] started");
        var result = System.Text.Json.JsonSerializer.Deserialize(
            body,
            PrayerJsonContext.Default.PrayerListResponse);
        var rows = (result?.Rows ?? [])
            .Where(row => !string.IsNullOrWhiteSpace(row.Content))
            .Select(MapPrayerRow)
            .OrderByDescending(row => row.CreatedAtUtc)
            .ToList();

        var lastCursor = rows.Count == 0 ? null : rows[^1].PrayerId;
        Android.Util.Log.Info(
            PrayerLogTag,
            $"[PRAYER_LOAD_PARSE] records={rows.Count}; cursorAvailable={!string.IsNullOrWhiteSpace(lastCursor)}");
        return (rows, lastCursor);
    }

    public async Task<List<PrayerRequest>> GetInitialPrayersAsync()
    {
        if (_auth.CurrentUser == null)
        {
            Android.Util.Log.Info(PrayerLogTag, "[PRAYER_LOAD_AUTH] authenticatedUserAvailable=false");
            return [];
        }
        Android.Util.Log.Info(PrayerLogTag, "[PRAYER_LOAD_AUTH] authenticatedUserAvailable=true");
        var cached = await LoadCachedPrayersAsync();
        if (cached.Count > 0)
        {
            var lastSyncText = Preferences.Default.Get(UserCacheKey(LastPrayerSyncKey), string.Empty);
            var isStale = !DateTime.TryParse(lastSyncText, out var lastSync) ||
                          DateTime.UtcNow - lastSync.ToUniversalTime() >= TimeSpan.FromHours(48);
            Android.Util.Log.Info(
                PrayerLogTag,
                $"[PRAYER_LOAD_CACHE] source=cache rows={cached.Count} stale={isStale}");
            if (isStale)
                _ = SyncNewAndChangedPrayersAsync();
            Android.Util.Log.Info(PrayerLogTag, $"[PRAYER_LOAD_SUCCESS] source=cache records={cached.Count}");
            return cached;
        }

        Android.Util.Log.Info(PrayerLogTag, "[PRAYER_LOAD_REMOTE] initialFetch limit=5");
        var (rows, cursor) = await FetchPagedPrayersAsync(5);
        await SaveOrUpdateCachedPrayersAsync(rows);
        if (!string.IsNullOrWhiteSpace(cursor))
            Preferences.Default.Set(UserCacheKey(LastPrayerCursorKey), cursor);
        Preferences.Default.Set(UserCacheKey(LastPrayerSyncKey), DateTime.UtcNow.ToString("O"));
        Android.Util.Log.Info(PrayerLogTag, $"[PRAYER_LOAD_SUCCESS] source=remote records={rows.Count}");
        return rows;
    }

    public async Task<List<PrayerRequest>> SyncNewAndChangedPrayersAsync()
    {
        try
        {
            if (Connectivity.Current.NetworkAccess != NetworkAccess.Internet)
            {
                System.Diagnostics.Debug.WriteLine("[PRAYER_OFFLINE] cached feed remains available");
                return [];
            }

            System.Diagnostics.Debug.WriteLine("[PRAYER_SYNC_START] detecting new/changed");
            var database = await GetCacheDatabaseAsync();
            var newest = await database.Table<CachedPrayer>()
                .Where(row => row.CacheOwnerUid == _auth.CurrentUser!.Uid)
                .OrderByDescending(row => row.UpdatedAtUtc)
                .FirstOrDefaultAsync();
            var newerThan = newest?.UpdatedAtUtc.ToString("O");
            var (rows, _) = await FetchPagedPrayersAsync(5, newerThan: newerThan);
            await SaveOrUpdateCachedPrayersAsync(rows);
            Preferences.Default.Set(UserCacheKey(LastPrayerSyncKey), DateTime.UtcNow.ToString("O"));
            PrayersSynchronized?.Invoke(rows);
            return rows;
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine($"[PRAYER_SYNC_ERROR] {ex.GetType().Name}: {ex.Message}");
            return [];
        }
    }

    public async Task<List<PrayerRequest>> RefreshPrayersAsync(int limit = 50)
    {
        var (rows, cursor) = await FetchPagedPrayersAsync(limit);
        await SaveOrUpdateCachedPrayersAsync(rows);
        if (!string.IsNullOrWhiteSpace(cursor))
            Preferences.Default.Set(UserCacheKey(LastPrayerCursorKey), cursor);
        Preferences.Default.Set(UserCacheKey(LastPrayerSyncKey), DateTime.UtcNow.ToString("O"));
        PrayersSynchronized?.Invoke(rows);
        return rows;
    }

    public async Task<List<PrayerRequest>> LoadMorePrayersAsync(int pageSize = 3)
    {
        if (Connectivity.Current.NetworkAccess != NetworkAccess.Internet)
        {
            System.Diagnostics.Debug.WriteLine("[PRAYER_OFFLINE] load-more skipped");
            return [];
        }

        var cursor = Preferences.Default.Get(UserCacheKey(LastPrayerCursorKey), string.Empty);
        if (string.IsNullOrWhiteSpace(cursor))
        {
            var database = await GetCacheDatabaseAsync();
            var oldest = await database.Table<CachedPrayer>()
                .Where(row => row.CacheOwnerUid == _auth.CurrentUser!.Uid)
                .OrderBy(row => row.CreatedAtUtc)
                .FirstOrDefaultAsync();
            cursor = oldest?.PrayerId ?? string.Empty;
        }

        if (string.IsNullOrWhiteSpace(cursor))
            return [];

        var boundedPageSize = Math.Clamp(pageSize, 1, 3);
        System.Diagnostics.Debug.WriteLine(
            $"[PRAYER_LOAD_MORE_START] limit={boundedPageSize} cursorPresent=true");
        var (rows, nextCursor) = await FetchPagedPrayersAsync(boundedPageSize, cursorAfter: cursor);
        await SaveOrUpdateCachedPrayersAsync(rows);
        if (!string.IsNullOrWhiteSpace(nextCursor))
            Preferences.Default.Set(UserCacheKey(LastPrayerCursorKey), nextCursor);
        System.Diagnostics.Debug.WriteLine($"[PRAYER_LOAD_MORE_RESULT] returned={rows.Count}");
        return rows;
    }

    public async Task<PrayerActionResult> PrayForRequestAsync(string prayerId)
    {
        if (string.IsNullOrWhiteSpace(prayerId))
            throw new ArgumentException("Prayer ID is required.", nameof(prayerId));
        var token = await _authService.GetCurrentFirebaseIdTokenAsync()
            ?? throw new InvalidOperationException("Your Firebase session has expired. Please sign in again.");
        System.Diagnostics.Debug.WriteLine("[PRAYER_I_PRAY_START]");
        using var request = new HttpRequestMessage(HttpMethod.Post, $"api/prayers/{Uri.EscapeDataString(prayerId)}/pray");
        request.Headers.Authorization = new AuthenticationHeaderValue("Bearer", token);
        using var response = await _http.SendAsync(request);
        if (!response.IsSuccessStatusCode)
            throw new HttpRequestException($"Prayer action could not be saved ({(int)response.StatusCode}).");
        var result = await response.Content.ReadFromJsonAsync(
            PrayerJsonContext.Default.PrayerActionResponse);
        var recorded = result?.Recorded == true;
        var summary = await GetPrayerActionSummaryAsync(prayerId);
        var cached = await LoadCachedPrayersAsync(100);
        var prayer = cached.FirstOrDefault(item => item.PrayerId == prayerId);
        if (prayer != null)
        {
            prayer.IsPrayed = summary.HasPrayed;
            prayer.PrayerCount = summary.Count;
            await SaveOrUpdateCachedPrayersAsync([prayer]);
        }
        return new PrayerActionResult
        {
            Recorded = recorded,
            Count = summary.Count,
            HasPrayed = summary.HasPrayed
        };
    }

    private async Task<PrayerActionSummary> GetPrayerActionSummaryAsync(string prayerId)
    {
        var token = await _authService.GetCurrentFirebaseIdTokenAsync()
            ?? throw new InvalidOperationException("Your Firebase session has expired. Please sign in again.");
        using var request = new HttpRequestMessage(HttpMethod.Get, $"api/prayers/{Uri.EscapeDataString(prayerId)}/actions");
        request.Headers.Authorization = new AuthenticationHeaderValue("Bearer", token);
        using var response = await _http.SendAsync(request);
        if (!response.IsSuccessStatusCode)
            throw new HttpRequestException($"Prayer count could not be loaded ({(int)response.StatusCode}).");
        return await response.Content.ReadFromJsonAsync(PrayerJsonContext.Default.PrayerActionSummary)
            ?? throw new InvalidOperationException("Prayer count response was empty.");
    }

    private static PrayerStatus ParseStatus(string? value) =>
        Enum.TryParse<PrayerStatus>(value, true, out var status) ? status : PrayerStatus.Active;

    private PrayerRequest MapPrayerRow(PrayerRow row) =>
        new()
        {
            PrayerId = row.Id,
            AuthorUid = row.UserId,
            AuthorDisplayName = row.UserId == _auth.CurrentUser?.Uid ? "You" : "Prayer member",
            IsAnonymous = true,
            Content = row.Content,
            Visibility = row.IsPrivate ? PrayerVisibility.Private : PrayerVisibility.NationalPrayerWall,
            Status = ParseStatus(row.Status),
            CreatedAtUtc = row.CreatedAtUtc,
            UpdatedAtUtc = row.UpdatedAtUtc,
            IsOwnerVisible = row.UserId == _auth.CurrentUser?.Uid,
            PrayerCount = row.PrayerCount,
            IsPrayed = row.IsPrayed
        };

    internal sealed class PrayerListResponse
    {
        public List<PrayerRow> Rows { get; set; } = [];
    }

    internal sealed class PrayerActionResponse
    {
        public bool Recorded { get; set; }
    }

    internal sealed class PrayerActionSummary
    {
        public string PrayerId { get; set; } = string.Empty;
        public int Count { get; set; }
        public bool HasPrayed { get; set; }
    }

    internal sealed class PrayerRow
    {
        public string Id { get; set; } = string.Empty;
        public string UserId { get; set; } = string.Empty;
        public string Content { get; set; } = string.Empty;
        public bool IsPrivate { get; set; }
        public string Status { get; set; } = string.Empty;
        public DateTime CreatedAtUtc { get; set; }
        public DateTime UpdatedAtUtc { get; set; }
        public int PrayerCount { get; set; }
        public bool IsPrayed { get; set; }
    }

    public async Task<IReadOnlyList<PrayerRequest>> GetMyPrayersAsync()
    {
        var uid = _auth.CurrentUser?.Uid;
        if (string.IsNullOrWhiteSpace(uid))
            throw new InvalidOperationException("You must be signed in to view your prayer requests.");

        var token = await _authService.GetCurrentFirebaseIdTokenAsync();
        if (string.IsNullOrWhiteSpace(token))
            throw new InvalidOperationException("Your Firebase session has expired. Please sign in again.");

        using var request = new HttpRequestMessage(HttpMethod.Get, "api/prayers?limit=100&mine=true");
        request.Headers.Authorization = new AuthenticationHeaderValue("Bearer", token);
        System.Diagnostics.Debug.WriteLine("[PRAYER_MY_REQUESTS_START] authenticatedUserAvailable=true");
        using var response = await _http.SendAsync(request);
        var body = await response.Content.ReadAsStringAsync();
        System.Diagnostics.Debug.WriteLine(
            $"[PRAYER_MY_REQUESTS_RESPONSE] status={(int)response.StatusCode} bodyLength={body.Length}");
        if (!response.IsSuccessStatusCode)
            throw new HttpRequestException($"Your prayer requests could not be loaded ({(int)response.StatusCode}).");

        var result = System.Text.Json.JsonSerializer.Deserialize(
            body,
            PrayerJsonContext.Default.PrayerListResponse);
        return (result?.Rows ?? [])
            .Where(row => !string.IsNullOrWhiteSpace(row.Content) && row.UserId == uid)
            .Select(MapPrayerRow)
            .OrderByDescending(item => item.CreatedAtUtc)
            .ToList();
    }

    public async Task<PrayerRequest?> GetPrayerAsync(string prayerId)
    {
        if (string.IsNullOrWhiteSpace(prayerId))
            return null;

        var snapshot = await _firestore
            .GetCollection("prayers")
            .GetDocument(prayerId)
            .GetDocumentSnapshotAsync<PrayerFirestoreDocument>(Source.Default);

        if (snapshot?.Data == null)
            return null;

        return MapFromDocument(snapshot.Data);
    }

    public async Task<int> GetPrayerCountAsync(string prayerId)
    {
        if (string.IsNullOrWhiteSpace(prayerId))
            return 0;

        try
        {
            var snapshot = await _firestore
                .GetCollection("prayers")
                .GetDocument(prayerId)
                .GetCollection("prayer_actions")
                .GetDocumentsAsync<PrayerActionDocument>(Source.Default);

            return snapshot.Documents.Count();
        }
        catch
        {
            var prayer = await GetPrayerAsync(prayerId);
            return prayer?.PrayerCount ?? 0;
        }
    }

    public async Task<bool> MarkPrayerAnsweredAsync(string prayerId)
    {
        if (string.IsNullOrWhiteSpace(prayerId))
            return false;

        var prayerRef = _firestore.GetCollection("prayers").GetDocument(prayerId);
        var prayerSnapshot = await prayerRef.GetDocumentSnapshotAsync<PrayerFirestoreDocument>(Source.Default);
        if (prayerSnapshot?.Data == null)
            return false;

        var prayer = MapFromDocument(prayerSnapshot.Data);
        if (prayer == null)
            return false;

        if (prayer.AuthorUid != _auth.CurrentUser?.Uid)
            throw new UnauthorizedAccessException("Only the prayer author can mark it as answered.");

        var answeredPrayer = prayer;
        answeredPrayer.Status = PrayerStatus.Answered;
        answeredPrayer.IsAnswered = true;
        answeredPrayer.AnsweredAtUtc = DateTime.UtcNow;
        answeredPrayer.UpdatedAtUtc = DateTime.UtcNow;

        await prayerRef.SetDataAsync(ToFirestoreDocument(answeredPrayer));
        return true;
    }

    public async Task<bool> ReportPrayerAsync(string prayerId, string reason, string details)
    {
        var currentUser = _auth.CurrentUser;
        if (currentUser == null)
            throw new InvalidOperationException("You must be signed in to report a prayer.");

        if (string.IsNullOrWhiteSpace(prayerId) || string.IsNullOrWhiteSpace(reason))
            return false;

        var report = new PrayerReportDocument
        {
            ReportId = Guid.NewGuid().ToString("N"),
            PrayerId = prayerId,
            ReporterUid = currentUser.Uid,
            Reason = reason,
            Details = details,
            CreatedAtUtc = DateTime.UtcNow
        };

        await _firestore
            .GetCollection("prayer_reports")
            .GetDocument(report.ReportId)
            .SetDataAsync(report);

        return true;
    }

    public void AttachRealtimeListener(Action<IReadOnlyList<PrayerRequest>> onUpdate, Action<Exception>? onError = null)
    {
        try
        {
            _firestore
                .GetCollection("prayers")
                .WhereEqualsTo("status", PrayerStatus.Active.ToString())
                .WhereEqualsTo("visibility", PrayerVisibility.NationalPrayerWall.ToString())
                .OrderBy("createdAtUtc", true)
                .LimitedTo(25)
                .AddSnapshotListener<PrayerFirestoreDocument>(
                    snapshot =>
                    {
                        var items = snapshot.Documents
                            .Select(x => MapFromDocument(x.Data))
                            .Where(x => x != null)
                            .Cast<PrayerRequest>()
                            .ToList();

                        onUpdate(items);
                    },
                    ex => onError?.Invoke(ex),
                    false);
        }
        catch (Exception ex)
        {
            onError?.Invoke(ex);
        }
    }

    private static string NormalizeContent(string content)
    {
        return string.IsNullOrWhiteSpace(content)
            ? string.Empty
            : content.Trim();
    }

    internal sealed record PrayerCreatePayload(
        [property: JsonPropertyName("content")] string Content,
        [property: JsonPropertyName("leader_id")] string? LeaderId,
        [property: JsonPropertyName("is_private")] bool IsPrivate);

    internal sealed class PrayerCreateResponse
    {
        public bool Success { get; set; }
        public string RowId { get; set; } = string.Empty;
        public bool IsPrivate { get; set; }
        public string Status { get; set; } = "pending";
    }

    private static PrayerFirestoreDocument ToFirestoreDocument(PrayerRequest prayer)
    {
        return new PrayerFirestoreDocument
        {
            PrayerId = prayer.PrayerId,
            AuthorUid = prayer.AuthorUid,
            AuthorDisplayName = prayer.AuthorDisplayName,
            IsAnonymous = prayer.IsAnonymous,
            Content = prayer.Content,
            Category = prayer.Category.ToString(),
            Reach = prayer.Reach.ToString(),
            Visibility = prayer.Visibility.ToString(),
            NameVisibility = prayer.NameVisibility.ToString(),
            BranchId = prayer.BranchId,
            DistrictId = prayer.DistrictId,
            RegionId = prayer.RegionId,
            Status = prayer.Status.ToString(),
            CreatedAtUtc = prayer.CreatedAtUtc,
            UpdatedAtUtc = prayer.UpdatedAtUtc,
            PrayerCount = prayer.PrayerCount,
            IsAnswered = prayer.IsAnswered,
            AnsweredAtUtc = prayer.AnsweredAtUtc,
            IsOwnerVisible = prayer.IsOwnerVisible
        };
    }

    private static PrayerRequest? MapFromDocument(PrayerFirestoreDocument? document)
    {
        if (document == null)
            return null;

        return new PrayerRequest
        {
            PrayerId = document.PrayerId,
            AuthorUid = document.AuthorUid,
            AuthorDisplayName = document.AuthorDisplayName,
            IsAnonymous = document.IsAnonymous,
            Content = document.Content,
            Category = Enum.TryParse<PrayerCategory>(document.Category, true, out var category)
                ? category
                : PrayerCategory.Other,
            Reach = Enum.TryParse<PrayerReach>(document.Reach, true, out var reach)
                ? reach
                : PrayerReach.NationalUscf,
            Visibility = Enum.TryParse<PrayerVisibility>(document.Visibility, true, out var visibility)
                ? visibility
                : PrayerVisibility.NationalPrayerWall,
            NameVisibility = Enum.TryParse<PrayerNameVisibility>(document.NameVisibility, true, out var nameVisibility)
                ? nameVisibility
                : PrayerNameVisibility.Anonymous,
            BranchId = document.BranchId,
            DistrictId = document.DistrictId,
            RegionId = document.RegionId,
            Status = Enum.TryParse<PrayerStatus>(document.Status, true, out var status)
                ? status
                : PrayerStatus.Active,
            CreatedAtUtc = document.CreatedAtUtc,
            UpdatedAtUtc = document.UpdatedAtUtc,
            PrayerCount = document.PrayerCount,
            IsAnswered = document.IsAnswered,
            AnsweredAtUtc = document.AnsweredAtUtc,
            IsOwnerVisible = document.IsOwnerVisible
        };
    }

    private sealed class PrayerFirestoreDocument : IFirestoreObject
    {
        [FirestoreDocumentId]
        public string PrayerId { get; set; } = string.Empty;

        [FirestoreProperty("authorUid")]
        public string AuthorUid { get; set; } = string.Empty;

        [FirestoreProperty("authorDisplayName")]
        public string AuthorDisplayName { get; set; } = string.Empty;

        [FirestoreProperty("isAnonymous")]
        public bool IsAnonymous { get; set; }

        [FirestoreProperty("content")]
        public string Content { get; set; } = string.Empty;

        [FirestoreProperty("category")]
        public string Category { get; set; } = PrayerCategory.Other.ToString();

        [FirestoreProperty("reach")]
        public string Reach { get; set; } = PrayerReach.NationalUscf.ToString();

        [FirestoreProperty("visibility")]
        public string Visibility { get; set; } = PrayerVisibility.NationalPrayerWall.ToString();

        [FirestoreProperty("nameVisibility")]
        public string NameVisibility { get; set; } = PrayerNameVisibility.Anonymous.ToString();

        [FirestoreProperty("branchId")]
        public int? BranchId { get; set; }

        [FirestoreProperty("districtId")]
        public int? DistrictId { get; set; }

        [FirestoreProperty("regionId")]
        public int? RegionId { get; set; }

        [FirestoreProperty("status")]
        public string Status { get; set; } = PrayerStatus.Active.ToString();

        [FirestoreProperty("createdAtUtc")]
        public DateTime CreatedAtUtc { get; set; } = DateTime.UtcNow;

        [FirestoreProperty("updatedAtUtc")]
        public DateTime UpdatedAtUtc { get; set; } = DateTime.UtcNow;

        [FirestoreProperty("prayerCount")]
        public int PrayerCount { get; set; }

        [FirestoreProperty("isAnswered")]
        public bool IsAnswered { get; set; }

        [FirestoreProperty("answeredAtUtc")]
        public DateTime? AnsweredAtUtc { get; set; }

        [FirestoreProperty("isOwnerVisible")]
        public bool IsOwnerVisible { get; set; }
    }

    private sealed class PrayerActionDocument : IFirestoreObject
    {
        [FirestoreDocumentId]
        public string UserUid { get; set; } = string.Empty;

        [FirestoreProperty("prayerId")]
        public string PrayerId { get; set; } = string.Empty;

        [FirestoreProperty("createdAtUtc")]
        public DateTime CreatedAtUtc { get; set; } = DateTime.UtcNow;
    }

    private sealed class PrayerReportDocument : IFirestoreObject
    {
        [FirestoreDocumentId]
        public string ReportId { get; set; } = string.Empty;

        [FirestoreProperty("prayerId")]
        public string PrayerId { get; set; } = string.Empty;

        [FirestoreProperty("reporterUid")]
        public string ReporterUid { get; set; } = string.Empty;

        [FirestoreProperty("reason")]
        public string Reason { get; set; } = string.Empty;

        [FirestoreProperty("details")]
        public string Details { get; set; } = string.Empty;

        [FirestoreProperty("createdAtUtc")]
        public DateTime CreatedAtUtc { get; set; } = DateTime.UtcNow;
    }
}

[JsonSourceGenerationOptions(PropertyNameCaseInsensitive = true)]
[JsonSerializable(typeof(PrayerService.PrayerCreatePayload))]
[JsonSerializable(typeof(PrayerService.PrayerCreateResponse))]
[JsonSerializable(typeof(PrayerService.PrayerListResponse))]
[JsonSerializable(typeof(PrayerService.PrayerActionResponse))]
[JsonSerializable(typeof(PrayerService.PrayerActionSummary))]
internal partial class PrayerJsonContext : System.Text.Json.Serialization.JsonSerializerContext
{
}
