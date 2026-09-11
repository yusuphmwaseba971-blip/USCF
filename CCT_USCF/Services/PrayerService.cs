using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http.Headers;
using System.Net.Http.Json;
using System.Threading.Tasks;

using CCT_USCF.Models;
using Plugin.Firebase.Auth;
using Plugin.Firebase.Firestore;
using Microsoft.Maui.Networking;
using SQLite;

namespace CCT_USCF.Services;

public class PrayerService
{
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
        System.Diagnostics.Debug.WriteLine("[PRAYER_REQUEST_START]");
        var currentUser = _auth.CurrentUser;
        if (currentUser == null)
            throw new InvalidOperationException("You must be signed in to create a prayer request.");
        System.Diagnostics.Debug.WriteLine($"[PRAYER_REQUEST_AUTH] uid={currentUser.Uid}");

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
            Content = NormalizeContent(content),
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

        var token = await _authService.GetCurrentFirebaseIdTokenAsync();
        if (string.IsNullOrWhiteSpace(token))
            throw new InvalidOperationException("Your Firebase session has expired. Please sign in again.");

        var isPrivate = visibility == PrayerVisibility.Private;
        var payload = new
        {
            content = prayer.Content,
            leader_id = (string?)null,
            is_private = isPrivate
        };
        System.Diagnostics.Debug.WriteLine(
            $"[PRAYER_REQUEST_PAYLOAD] contentLength={prayer.Content.Length} isPrivate={isPrivate} leaderId=none");

        using var request = new HttpRequestMessage(HttpMethod.Post, "api/prayers")
        {
            Content = JsonContent.Create(payload)
        };
        request.Headers.Authorization = new AuthenticationHeaderValue("Bearer", token);
        System.Diagnostics.Debug.WriteLine("[PRAYER_REQUEST_APPWRITE_CREATE] route=api/prayers database=cct-uscf-db table=cct_prayers");
        using var response = await _http.SendAsync(request);
        var responseBody = await response.Content.ReadAsStringAsync();
        if (!response.IsSuccessStatusCode)
        {
            System.Diagnostics.Debug.WriteLine(
                $"[PRAYER_REQUEST_ERROR] status={(int)response.StatusCode} body={responseBody}");
            throw new HttpRequestException($"Prayer request could not be saved ({(int)response.StatusCode}).");
        }

        var result = System.Text.Json.JsonSerializer.Deserialize<PrayerCreateResponse>(
            responseBody,
            new System.Text.Json.JsonSerializerOptions { PropertyNameCaseInsensitive = true });
        if (result is null || !result.Success || string.IsNullOrWhiteSpace(result.RowId))
            throw new InvalidOperationException("Appwrite did not confirm creation of the prayer request.");

        prayer.PrayerId = result.RowId;
        prayer.Status = PrayerStatus.Active;
        System.Diagnostics.Debug.WriteLine($"[PRAYER_REQUEST_SUCCESS] rowId={result.RowId}");

        await SaveOrUpdateCachedPrayersAsync([prayer]);
        return prayer;
    }

    public async Task<IReadOnlyList<PrayerRequest>> GetPrayerWallAsync(int limit = 5)
    {
        System.Diagnostics.Debug.WriteLine("[PRAYER_FETCH_START]");
        var token = await _authService.GetCurrentFirebaseIdTokenAsync();
        if (string.IsNullOrWhiteSpace(token))
            throw new InvalidOperationException("Your Firebase session has expired. Please sign in again.");
        System.Diagnostics.Debug.WriteLine($"[PRAYER_FETCH_AUTH] uid={_auth.CurrentUser?.Uid ?? "none"}");

        using var request = new HttpRequestMessage(
            HttpMethod.Get, $"api/prayers?limit={Math.Clamp(limit, 1, 5)}");
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

        var result = System.Text.Json.JsonSerializer.Deserialize<PrayerListResponse>(
            responseBody,
            new System.Text.Json.JsonSerializerOptions { PropertyNameCaseInsensitive = true });
        var items = (result?.Rows ?? [])
            .Where(row => !string.IsNullOrWhiteSpace(row.Content))
            .Select(row => new PrayerRequest
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
                IsOwnerVisible = row.UserId == _auth.CurrentUser?.Uid
            })
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
        public string UserId { get; set; } = string.Empty;
        public string Content { get; set; } = string.Empty;
        public bool IsPrivate { get; set; }
        public string Status { get; set; } = "active";
        public DateTime CreatedAtUtc { get; set; }
        public DateTime UpdatedAtUtc { get; set; }
        public DateTime CachedAtUtc { get; set; }
    }

    private readonly SemaphoreSlim _cacheInitializationLock = new(1, 1);
    private SQLiteAsyncConnection? _cacheDatabase;
    private bool _cacheInitialized;
    private const string CacheDatabaseName = "cct-uscf-prayer-cache.db3";
    private const string LastPrayerCursorKey = "PrayerCache_LastCursor";
    private const string LastPrayerSyncKey = "PrayerCache_LastSyncAt";

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
                _cacheInitialized = true;
                System.Diagnostics.Debug.WriteLine("[PRAYER_CACHE] SQLite initialized");
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
        };
    }

    private static CachedPrayer ToCachedPrayer(PrayerRequest prayer)
    {
        return new CachedPrayer
        {
            PrayerId = prayer.PrayerId,
            UserId = prayer.AuthorUid,
            Content = prayer.Content,
            IsPrivate = prayer.Visibility == PrayerVisibility.Private,
            Status = prayer.Status.ToString(),
            CreatedAtUtc = prayer.CreatedAtUtc,
            UpdatedAtUtc = prayer.UpdatedAtUtc,
            CachedAtUtc = DateTime.UtcNow
        };
    }

    public async Task<List<PrayerRequest>> LoadCachedPrayersAsync(int limit = 50)
    {
        System.Diagnostics.Debug.WriteLine("[PRAYER_CACHE_LOAD_START]");
        var database = await GetCacheDatabaseAsync();
        var cached = await database.Table<CachedPrayer>()
            .OrderByDescending(row => row.CreatedAtUtc)
            .Take(limit)
            .ToListAsync();
        System.Diagnostics.Debug.WriteLine($"[PRAYER_CACHE_LOAD_RESULT] count={cached.Count}");
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
            var incoming = ToCachedPrayer(prayer);
            var existing = await database.FindAsync<CachedPrayer>(incoming.PrayerId);
            if (existing == null)
            {
                await database.InsertAsync(incoming);
                inserted++;
            }
            else if (existing.UpdatedAtUtc != incoming.UpdatedAtUtc ||
                     existing.Content != incoming.Content ||
                     existing.Status != incoming.Status ||
                     existing.IsPrivate != incoming.IsPrivate)
            {
                await database.UpdateAsync(incoming);
                updated++;
            }
            else
            {
                skipped++;
            }
        }

        System.Diagnostics.Debug.WriteLine(
            $"[PRAYER_CACHE_SAVE] inserted={inserted} updated={updated} skipped={skipped}");
    }

    private async Task<(List<PrayerRequest> Rows, string? LastCursor)> FetchPagedPrayersAsync(
        int limit,
        string? cursorAfter = null,
        string? newerThan = null)
    {
        var boundedLimit = Math.Clamp(limit, 1, 5);
        System.Diagnostics.Debug.WriteLine(
            $"[PRAYER_SYNC_REQUEST] limit={boundedLimit} cursorAfter={cursorAfter ?? "none"} newerThan={newerThan ?? "none"}");

        var token = await _authService.GetCurrentFirebaseIdTokenAsync();
        if (string.IsNullOrWhiteSpace(token))
            throw new InvalidOperationException("Your Firebase session has expired. Please sign in again.");

        var query = $"api/prayers?limit={boundedLimit}";
        if (!string.IsNullOrWhiteSpace(cursorAfter))
            query += $"&cursorAfter={Uri.EscapeDataString(cursorAfter)}";
        if (!string.IsNullOrWhiteSpace(newerThan))
            query += $"&newerThan={Uri.EscapeDataString(newerThan)}";

        using var request = new HttpRequestMessage(HttpMethod.Get, query);
        request.Headers.Authorization = new AuthenticationHeaderValue("Bearer", token);
        using var response = await _http.SendAsync(request);
        var body = await response.Content.ReadAsStringAsync();
        System.Diagnostics.Debug.WriteLine(
            $"[PRAYER_SYNC_RESPONSE] status={(int)response.StatusCode} requestedLimit={boundedLimit} bodyLength={body.Length}");
        if (!response.IsSuccessStatusCode)
            throw new HttpRequestException($"Prayer requests could not be loaded ({(int)response.StatusCode}).");

        var result = System.Text.Json.JsonSerializer.Deserialize<PrayerListResponse>(
            body,
            new System.Text.Json.JsonSerializerOptions { PropertyNameCaseInsensitive = true });
        var rows = (result?.Rows ?? [])
            .Where(row => !string.IsNullOrWhiteSpace(row.Content))
            .Select(row => new PrayerRequest
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
                IsOwnerVisible = row.UserId == _auth.CurrentUser?.Uid
            })
            .OrderByDescending(row => row.CreatedAtUtc)
            .ToList();

        var lastCursor = rows.Count == 0 ? null : rows[^1].PrayerId;
        System.Diagnostics.Debug.WriteLine(
            $"[PRAYER_SYNC_RESULT] returned={rows.Count} lastCursor={lastCursor ?? "none"}");
        return (rows, lastCursor);
    }

    public async Task<List<PrayerRequest>> GetInitialPrayersAsync()
    {
        var cached = await LoadCachedPrayersAsync();
        if (cached.Count > 0)
        {
            var lastSyncText = Preferences.Default.Get(LastPrayerSyncKey, string.Empty);
            var isStale = !DateTime.TryParse(lastSyncText, out var lastSync) ||
                          DateTime.UtcNow - lastSync.ToUniversalTime() >= TimeSpan.FromHours(48);
            System.Diagnostics.Debug.WriteLine(
                $"[PRAYER_CACHE_FRESHNESS] stale={isStale} ageHours={(DateTime.TryParse(lastSyncText, out lastSync) ? (DateTime.UtcNow - lastSync.ToUniversalTime()).TotalHours : -1):F1}");
            _ = SyncNewAndChangedPrayersAsync();
            return cached;
        }

        System.Diagnostics.Debug.WriteLine("[PRAYER_SYNC_START] initialFetch limit=5");
        var (rows, cursor) = await FetchPagedPrayersAsync(5);
        await SaveOrUpdateCachedPrayersAsync(rows);
        if (!string.IsNullOrWhiteSpace(cursor))
            Preferences.Default.Set(LastPrayerCursorKey, cursor);
        Preferences.Default.Set(LastPrayerSyncKey, DateTime.UtcNow.ToString("O"));
        return rows;
    }

    public async Task SyncNewAndChangedPrayersAsync()
    {
        try
        {
            if (Connectivity.Current.NetworkAccess != NetworkAccess.Internet)
            {
                System.Diagnostics.Debug.WriteLine("[PRAYER_OFFLINE] cached feed remains available");
                return;
            }

            System.Diagnostics.Debug.WriteLine("[PRAYER_SYNC_START] detecting new/changed");
            var database = await GetCacheDatabaseAsync();
            var newest = await database.Table<CachedPrayer>()
                .OrderByDescending(row => row.UpdatedAtUtc)
                .FirstOrDefaultAsync();
            var newerThan = newest?.UpdatedAtUtc.ToString("O");
            var (rows, _) = await FetchPagedPrayersAsync(5, newerThan: newerThan);
            await SaveOrUpdateCachedPrayersAsync(rows);
            Preferences.Default.Set(LastPrayerSyncKey, DateTime.UtcNow.ToString("O"));
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine($"[PRAYER_SYNC_ERROR] {ex.GetType().Name}: {ex.Message}");
        }
    }

    public async Task<List<PrayerRequest>> LoadMorePrayersAsync(int pageSize = 3)
    {
        if (Connectivity.Current.NetworkAccess != NetworkAccess.Internet)
        {
            System.Diagnostics.Debug.WriteLine("[PRAYER_OFFLINE] load-more skipped");
            return [];
        }

        var cursor = Preferences.Default.Get(LastPrayerCursorKey, string.Empty);
        if (string.IsNullOrWhiteSpace(cursor))
        {
            var database = await GetCacheDatabaseAsync();
            var oldest = await database.Table<CachedPrayer>()
                .OrderBy(row => row.CreatedAtUtc)
                .FirstOrDefaultAsync();
            cursor = oldest?.PrayerId ?? string.Empty;
        }

        if (string.IsNullOrWhiteSpace(cursor))
            return [];

        var boundedPageSize = Math.Clamp(pageSize, 1, 3);
        System.Diagnostics.Debug.WriteLine(
            $"[PRAYER_LOAD_MORE_START] limit={boundedPageSize} cursorAfter={cursor}");
        var (rows, nextCursor) = await FetchPagedPrayersAsync(boundedPageSize, cursorAfter: cursor);
        await SaveOrUpdateCachedPrayersAsync(rows);
        if (!string.IsNullOrWhiteSpace(nextCursor))
            Preferences.Default.Set(LastPrayerCursorKey, nextCursor);
        System.Diagnostics.Debug.WriteLine($"[PRAYER_LOAD_MORE_RESULT] returned={rows.Count}");
        return rows;
    }

    private static PrayerStatus ParseStatus(string? value) =>
        Enum.TryParse<PrayerStatus>(value, true, out var status) ? status : PrayerStatus.Active;

    private sealed class PrayerListResponse
    {
        public List<PrayerRow> Rows { get; set; } = [];
    }

    private sealed class PrayerRow
    {
        public string Id { get; set; } = string.Empty;
        public string UserId { get; set; } = string.Empty;
        public string Content { get; set; } = string.Empty;
        public bool IsPrivate { get; set; }
        public string Status { get; set; } = string.Empty;
        public DateTime CreatedAtUtc { get; set; }
        public DateTime UpdatedAtUtc { get; set; }
    }

    public async Task<IReadOnlyList<PrayerRequest>> GetMyPrayersAsync()
    {
        var uid = _auth.CurrentUser?.Uid;
        if (string.IsNullOrWhiteSpace(uid))
            return Array.Empty<PrayerRequest>();

        var snapshot = await _firestore
            .GetCollection("prayers")
            .WhereEqualsTo("authorUid", uid)
            .OrderBy("createdAtUtc", true)
            .GetDocumentsAsync<PrayerFirestoreDocument>(Source.Default);

        return snapshot.Documents
            .Select(doc => MapFromDocument(doc.Data))
            .Where(item => item != null)
            .Cast<PrayerRequest>()
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

    public async Task<bool> PrayForRequestAsync(string prayerId)
    {
        if (string.IsNullOrWhiteSpace(prayerId))
            return false;

        var user = _auth.CurrentUser;
        if (user == null)
            throw new InvalidOperationException("You must be signed in to pray for a request.");

        var prayerRef = _firestore
            .GetCollection("prayers")
            .GetDocument(prayerId);

        var prayerSnapshot = await prayerRef.GetDocumentSnapshotAsync<PrayerFirestoreDocument>(Source.Default);
        var prayer = prayerSnapshot?.Data;
        if (prayer == null)
            return false;

        var actionRef = prayerRef.GetCollection("prayer_actions").GetDocument(user.Uid);
        var currentAction = await actionRef.GetDocumentSnapshotAsync<PrayerActionDocument>(Source.Default);
        if (currentAction?.Data != null)
            return false;

        var action = new PrayerActionDocument
        {
            UserUid = user.Uid,
            CreatedAtUtc = DateTime.UtcNow,
            PrayerId = prayerId
        };

        await actionRef.SetDataAsync(action);

        var count = await GetPrayerCountAsync(prayerId);
        var prayerRecord = MapFromDocument(prayer) ?? throw new InvalidOperationException("Prayer request could not be loaded for update.");
        prayerRecord.PrayerCount = count;
        prayerRecord.UpdatedAtUtc = DateTime.UtcNow;
        await prayerRef.SetDataAsync(ToFirestoreDocument(prayerRecord));
        return true;
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

    private sealed class PrayerCreateResponse
    {
        public bool Success { get; set; }
        public string RowId { get; set; } = string.Empty;
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
