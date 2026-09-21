using System.Net;
using System.Net.Http.Headers;
using System.Net.Http.Json;
using System.Text.Json;
using CCT_USCF.Models;
using SQLite;

namespace CCT_USCF.Services;

public sealed class ChurchAnnouncementService
{
    private readonly HttpClient _http;
    private readonly AuthService _auth;
    private static readonly JsonSerializerOptions JsonOptions = new(JsonSerializerDefaults.Web);

    public ChurchAnnouncementService(HttpClient http, AuthService auth) => (_http, _auth) = (http, auth);

    public event EventHandler? AnnouncementsChanged;

    public async Task<ChurchAnnouncementOptions> GetOptionsAsync(CancellationToken ct = default)
    {
        try
        {
            var options = await SendAsync<ChurchAnnouncementOptions>(
                HttpMethod.Get, "api/church-announcements/options", null, ct);
            if (options?.Targets is { Count: > 0 })
                return options;
        }
        catch (Exception ex) when (ex is HttpRequestException or TaskCanceledException)
        {
            System.Diagnostics.Debug.WriteLine($"Announcement audience sync unavailable; using profile: {ex.Message}");
        }

        return BuildProfileOptions();
    }

    private static ChurchAnnouncementOptions BuildProfileOptions()
    {
        var user = MauiProgram.CurrentUser
            ?? throw new InvalidOperationException("Please sign in and complete your church profile first.");
        var targets = new List<ChurchAnnouncementTarget>();
        var leader = IsLeader(user);

        if (leader)
            targets.Add(new("National", 0, "All church members", null, null));
        if (user.RegionId is int regionId)
            targets.Add(new("Region", regionId, user.Region ?? $"Region {regionId}", regionId, null));
        if (user.DistrictId is int districtId)
            targets.Add(new("District", districtId, user.District ?? $"District {districtId}", user.RegionId, districtId));
        if (user.BranchId is int branchId)
            targets.Add(new("Branch", branchId, user.Branch ?? $"My branch ({branchId})", user.RegionId, user.DistrictId));

        return new ChurchAnnouncementOptions(
            user.LeadershipLevel,
            user.Organization,
            targets);
    }

    private static bool IsLeader(CurrentUser user)
    {
        var values = new[] { user.Role, user.LeadershipLevel, user.LeadershipDuty }
            .Where(value => !string.IsNullOrWhiteSpace(value));
        return values.Any(value =>
        {
            var normalized = value.Trim().Replace(" ", string.Empty).Replace("-", string.Empty);
            return normalized.Equals("Leader", StringComparison.OrdinalIgnoreCase) ||
                   normalized.Equals("Pastor", StringComparison.OrdinalIgnoreCase) ||
                   normalized.Equals("Priest", StringComparison.OrdinalIgnoreCase) ||
                   normalized.Equals("Chairman", StringComparison.OrdinalIgnoreCase);
        });
    }

    public async Task<IReadOnlyList<ChurchNotification>> GetNotificationsAsync(CancellationToken ct = default)
    {
        await EnsureCurrentUserAsync();
        var cached = await AnnouncementCache.GetVisibleAsync();
        if (cached.Count > 0)
        {
            _ = SynchronizeNotificationsAsync();
            return cached;
        }

        return await SynchronizeNotificationsAsync(ct);
    }

    public async Task<IReadOnlyList<ChurchNotification>> GetCachedNotificationsAsync()
    {
        await EnsureCurrentUserAsync();
        return await AnnouncementCache.GetVisibleAsync();
    }

    private async Task EnsureCurrentUserAsync()
    {
        if (MauiProgram.CurrentUser is null)
        {
            var user = await _auth.GetCurrentUserAsync();
            if (user is not null)
                MauiProgram.SetCurrentUser(user);
        }
    }

    private async Task<IReadOnlyList<ChurchNotification>> SynchronizeNotificationsAsync(
        CancellationToken ct = default)
    {
        System.Diagnostics.Debug.WriteLine(
            $"[ANNOUNCEMENT_FETCH_START] timestamp={DateTimeOffset.UtcNow:O} " +
            "database=cct-uscf-db table=announcements");
        try
        {
            var remote = await SendAsync<List<ChurchNotification>>(
                HttpMethod.Get, "api/church-announcements/notifications", null, ct) ?? [];
            await AnnouncementCache.MergeAsync(remote);
            var synchronized = await AnnouncementCache.GetVisibleAsync();
            AnnouncementsChanged?.Invoke(this, EventArgs.Empty);
            System.Diagnostics.Debug.WriteLine(
                $"[ANNOUNCEMENT_FETCH_RESULT] rows={remote.Count} visible={synchronized.Count}");
            return synchronized;
        }
        catch (Exception ex) when (ex is HttpRequestException or TaskCanceledException or InvalidOperationException)
        {
            var offline = await AnnouncementCache.GetVisibleAsync();
            System.Diagnostics.Debug.WriteLine(
                $"[ANNOUNCEMENT_CACHE_FALLBACK] rows={offline.Count} reason={ex.GetType().Name}");
            return offline;
        }
    }

    public async Task<int> GetUnreadCountAsync(CancellationToken ct = default)
        => (await GetNotificationsAsync(ct)).Count(notification => !notification.IsRead);

    public async Task<string> CreateAsync(string title, string message, ChurchAnnouncementTarget target,
        string? imageUrl = null, string? attachmentUrl = null, CancellationToken ct = default)
    {
        var payload = new
        {
            title,
            message,
            targetLevel = target.Level,
            regionId = target.RegionId,
            districtId = target.DistrictId,
            branchId = target.Level.Equals("Branch", StringComparison.OrdinalIgnoreCase) ? (int?)target.Id : null
            ,imageUrl
            ,attachmentUrl
        };
        var result = await SendAsync<AnnouncementCreateResponse>(
            HttpMethod.Post, "api/church-announcements", payload, ct);
        if (result?.Success != true || string.IsNullOrWhiteSpace(result.AnnouncementId))
            throw new InvalidOperationException(
                "The announcement service did not confirm storage with success=true and an announcement ID.");
        return result.AnnouncementId;
    }

    public async Task MarkReadAsync(Guid id, CancellationToken ct = default)
    {
        await AnnouncementCache.MarkReadAsync(id);
        AnnouncementsChanged?.Invoke(this, EventArgs.Empty);
        try
        {
            await SendAsync<object>(HttpMethod.Post, $"api/church-announcements/notifications/{id:N}/read", new { }, ct);
        }
        catch (Exception ex) when (ex is HttpRequestException or TaskCanceledException or InvalidOperationException)
        {
            System.Diagnostics.Debug.WriteLine($"Announcement read sync unavailable: {ex.Message}");
        }
    }

    public async Task DeleteForCurrentUserAsync(Guid id, CancellationToken ct = default)
    {
        await AnnouncementCache.MarkDeletedAsync(id);
        AnnouncementsChanged?.Invoke(this, EventArgs.Empty);
    }

    public async Task RegisterTokenAsync(string token, CancellationToken ct = default)
    {
        var user = MauiProgram.CurrentUser;
        await SendAsync<object>(HttpMethod.Post, "api/church-announcements/token", new
        {
            token,
            regionId = user?.RegionId,
            districtId = user?.DistrictId,
            branchId = user?.BranchId,
            userName = user?.FullName
        }, ct);
    }

    private async Task<T?> SendAsync<T>(HttpMethod method, string path, object? body, CancellationToken ct)
    {
        await FirebaseInit.Initialized;
        using var request = new HttpRequestMessage(method, path);
        request.Headers.Authorization = new AuthenticationHeaderValue("Bearer", await _auth.GetCurrentFirebaseIdTokenAsync());
        if (body is not null) request.Content = JsonContent.Create(body, options: JsonOptions);
        var isFetch = path.StartsWith("api/church-announcements/notifications", StringComparison.Ordinal);
        var prefix = isFetch ? "ANNOUNCEMENT_FETCH" : "ANNOUNCEMENT_SEND";
        System.Diagnostics.Debug.WriteLine(
            $"[{prefix}_REQUEST] timestamp={DateTimeOffset.UtcNow:O} " +
            $"method={method} url={_http.BaseAddress}{path} " +
            $"database=cct-uscf-db table=announcements");

        HttpResponseMessage response;
        try
        {
            response = await _http.SendAsync(request, ct);
        }
        catch (Exception ex)
        {
            var diagnostic = AnnouncementDiagnostic.FromException(
                ex, method, new Uri(_http.BaseAddress!, path));
            LogDiagnostic($"[{prefix}_ERROR]", diagnostic);
            throw new InvalidOperationException(diagnostic.ToDisplayMessage(), ex);
        }

        using (response)
        {
            var responseBody = await response.Content.ReadAsStringAsync(ct);
            System.Diagnostics.Debug.WriteLine(
                $"[{prefix}_RESPONSE] timestamp={DateTimeOffset.UtcNow:O} " +
                $"status={(int)response.StatusCode} url={_http.BaseAddress}{path} " +
                $"body={Sanitize(responseBody)}");

            if (response.IsSuccessStatusCode)
            {
                if (string.IsNullOrWhiteSpace(responseBody)) return default;

                try
                {
                    return JsonSerializer.Deserialize<T>(responseBody, JsonOptions);
                }
                catch (JsonException ex)
                {
                    var diagnostic = AnnouncementDiagnostic.FromResponse(
                        ex, method, new Uri(_http.BaseAddress!, path),
                        (int)response.StatusCode, responseBody);
                    LogDiagnostic($"[{prefix}_ERROR]", diagnostic);
                    throw new InvalidOperationException(diagnostic.ToDisplayMessage(), ex);
                }
            }

            var error = TryReadError(responseBody);
            var message = error?.Error ?? error?.Message ?? responseBody;
            var diagnosticError = AnnouncementDiagnostic.FromResponse(
                new InvalidOperationException(message),
                method, new Uri(_http.BaseAddress!, path),
                (int)response.StatusCode, responseBody, error?.Code);
            LogDiagnostic($"[{prefix}_ERROR]", diagnosticError);

            if (response.StatusCode == HttpStatusCode.Unauthorized)
                throw new InvalidOperationException(string.IsNullOrWhiteSpace(message)
                    ? "Please sign in to use church announcements."
                    : diagnosticError.ToDisplayMessage());
            if (response.StatusCode == HttpStatusCode.Forbidden)
                throw new InvalidOperationException(string.IsNullOrWhiteSpace(message)
                    ? "You are not authorized for that announcement audience."
                    : diagnosticError.ToDisplayMessage());

            throw new InvalidOperationException(string.IsNullOrWhiteSpace(message)
                ? "The announcement service is unavailable."
                : diagnosticError.ToDisplayMessage());
        }
    }

    private static ApiError? TryReadError(string payload)
    {
        if (string.IsNullOrWhiteSpace(payload)) return null;

        try
        {
            return JsonSerializer.Deserialize<ApiError>(payload, JsonOptions);
        }
        catch (JsonException)
        {
            return null;
        }
    }

    private sealed record ApiError(string? Error, string? Message, int? Code);

    private sealed record AnnouncementCreateResponse(bool Success, string? AnnouncementId);

    private static void LogDiagnostic(string prefix, AnnouncementDiagnostic diagnostic) =>
        System.Diagnostics.Debug.WriteLine($"{prefix} {diagnostic.ToLogMessage()}");

    private static string Sanitize(string value) =>
        value.Replace("Bearer ", "Bearer [REDACTED] ", StringComparison.OrdinalIgnoreCase)
            .Replace("token", "[REDACTED_FIELD]", StringComparison.OrdinalIgnoreCase)
            .Replace("apiKey", "[REDACTED_FIELD]", StringComparison.OrdinalIgnoreCase);

    private sealed record AnnouncementDiagnostic(
        DateTimeOffset Timestamp,
        string ExceptionType,
        string Message,
        string? InnerException,
        int? HttpStatusCode,
        string? ResponseBody,
        string RequestUrl,
        string Database,
        string Table,
        int? AppwriteCode)
    {
        public static AnnouncementDiagnostic FromResponse(
            Exception exception, HttpMethod method, Uri url, int statusCode,
            string responseBody, int? appwriteCode = null) =>
            new(DateTimeOffset.UtcNow, exception.GetType().FullName ?? exception.GetType().Name,
                exception.Message, exception.InnerException?.Message, statusCode,
                Sanitize(responseBody), url.ToString(), "cct-uscf-db", "announcements", appwriteCode);

        public static AnnouncementDiagnostic FromException(Exception exception, HttpMethod method, Uri url) =>
            new(DateTimeOffset.UtcNow, exception.GetType().FullName ?? exception.GetType().Name,
                exception.Message, exception.InnerException?.Message, null, null,
                url.ToString(), "cct-uscf-db", "announcements", null);

        public string ToLogMessage() =>
            $"timestamp={Timestamp:O} exceptionType={ExceptionType} message={Message} " +
            $"inner={InnerException ?? "<none>"} status={HttpStatusCode?.ToString() ?? "<none>"} " +
            $"url={RequestUrl} database={Database} table={Table} " +
            $"appwriteCode={AppwriteCode?.ToString() ?? "<none>"} " +
            $"response={ResponseBody ?? "<none>"}";

        public string ToDisplayMessage() =>
            $"Announcement send diagnostic:\n{ToLogMessage()}";
    }
}

internal static class AnnouncementCache
{
    private static readonly SQLiteAsyncConnection Database = new(
        Path.Combine(FileSystem.AppDataDirectory, "cct-uscf-announcements-cache.db3"),
        SQLiteOpenFlags.ReadWrite | SQLiteOpenFlags.Create | SQLiteOpenFlags.SharedCache);
    private static readonly SemaphoreSlim InitializationLock = new(1, 1);
    private static bool _initialized;

    private static string OwnerKey =>
        MauiProgram.CurrentUser?.Id.ToString("N") ?? "anonymous";

    private static string CacheKey(Guid id) => $"{OwnerKey}:{id:N}";

    private static async Task InitializeAsync()
    {
        if (_initialized) return;
        await InitializationLock.WaitAsync();
        try
        {
            if (!_initialized)
            {
                await Database.CreateTableAsync<CachedChurchNotification>();
                try
                {
                    await Database.ExecuteAsync(
                        "ALTER TABLE CachedChurchNotification ADD COLUMN IsDeletedByUser INTEGER NOT NULL DEFAULT 0");
                }
                catch (SQLiteException)
                {
                }
                try
                {
                    await Database.ExecuteAsync(
                        "ALTER TABLE CachedChurchNotification ADD COLUMN DeletedAtUtc TEXT NULL");
                }
                catch (SQLiteException)
                {
                }
                _initialized = true;
            }
        }
        finally { InitializationLock.Release(); }
    }

    public static async Task<List<ChurchNotification>> GetVisibleAsync()
    {
        await InitializeAsync();
        var cached = (await Database.Table<CachedChurchNotification>().ToListAsync())
            .Where(x => x.Id.StartsWith(OwnerKey + ":", StringComparison.Ordinal) && !x.IsDeletedByUser)
            .OrderByDescending(x => x.CreatedAtUtc)
            .ToList();
        var notifications = new List<ChurchNotification>(cached.Count);
        foreach (var item in cached)
        {
            if (item.TryToNotification(out var notification))
            {
                notifications.Add(notification);
                continue;
            }

            System.Diagnostics.Debug.WriteLine(
                $"[ANNOUNCEMENT_CACHE_INVALID] announcementId={item.AnnouncementId} cacheId={item.Id}");
        }

        return notifications;
    }

    public static async Task MergeAsync(IEnumerable<ChurchNotification> notifications)
    {
        await InitializeAsync();
        foreach (var notification in notifications)
        {
            var existing = await FindByAnnouncementIdAsync(notification.AnnouncementId);
            var id = existing?.Id ?? CacheKey(notification.AnnouncementId);
            await Database.InsertOrReplaceAsync(new CachedChurchNotification
            {
                Id = id,
                AnnouncementId = notification.AnnouncementId.ToString(),
                Title = notification.Title,
                Message = notification.Message,
                SenderName = notification.SenderName,
                TargetLevel = notification.TargetLevel,
                CreatedAtUtc = notification.CreatedAtUtc.ToUniversalTime(),
                IsRead = existing?.IsRead == true || notification.IsRead,
                RegionId = notification.RegionId,
                DistrictId = notification.DistrictId,
                BranchId = notification.BranchId,
                ImageUrl = notification.ImageUrl,
                AttachmentUrl = notification.AttachmentUrl,
                ExpiresAtUtc = notification.ExpiresAtUtc,
                IsActive = notification.IsActive,
                IsDeletedByUser = existing?.IsDeletedByUser == true
            });
        }
    }

    public static async Task MarkReadAsync(Guid id)
    {
        await InitializeAsync();
        var existing = await FindByAnnouncementIdAsync(id);
        if (existing is not null)
        {
            existing.IsRead = true;
            await Database.UpdateAsync(existing);
        }
    }

    public static async Task MarkDeletedAsync(Guid id)
    {
        await InitializeAsync();
        var existing = await FindByAnnouncementIdAsync(id);
        if (existing is not null)
        {
            existing.IsDeletedByUser = true;
            existing.DeletedAtUtc = DateTime.UtcNow;
            await Database.UpdateAsync(existing);
        }
    }

    private static async Task<CachedChurchNotification?> FindByAnnouncementIdAsync(Guid id)
    {
        var normalizedId = id.ToString();
        var current = await Database.FindAsync<CachedChurchNotification>(CacheKey(id));
        if (current is not null)
            return current;

        return (await Database.Table<CachedChurchNotification>().ToListAsync())
            .FirstOrDefault(x =>
                x.Id.StartsWith(OwnerKey + ":", StringComparison.Ordinal) &&
                x.AnnouncementId == normalizedId);
    }
}

internal sealed class CachedChurchNotification
{
    [PrimaryKey]
    public string Id { get; set; } = string.Empty;
    public string AnnouncementId { get; set; } = string.Empty;
    public string Title { get; set; } = string.Empty;
    public string Message { get; set; } = string.Empty;
    public string SenderName { get; set; } = string.Empty;
    public string TargetLevel { get; set; } = string.Empty;
    public DateTime CreatedAtUtc { get; set; }
    public bool IsRead { get; set; }
    public bool IsDeletedByUser { get; set; }
    public DateTime? DeletedAtUtc { get; set; }
    public int? RegionId { get; set; }
    public int? DistrictId { get; set; }
    public int? BranchId { get; set; }
    public string ImageUrl { get; set; } = string.Empty;
    public string AttachmentUrl { get; set; } = string.Empty;
    public DateTime? ExpiresAtUtc { get; set; }
    public bool IsActive { get; set; } = true;

    public bool TryToNotification(out ChurchNotification notification)
    {
        notification = default!;
        var separator = Id.IndexOf(':');
        var notificationIdText = separator >= 0 ? Id[(separator + 1)..] : Id;
        if (!Guid.TryParse(notificationIdText, out var notificationId) ||
            !Guid.TryParse(AnnouncementId, out var announcementId))
        {
            return false;
        }

        notification = new ChurchNotification(
            notificationId, announcementId, Title, Message, SenderName, TargetLevel,
            CreatedAtUtc, IsRead, RegionId, DistrictId, BranchId, ImageUrl,
            AttachmentUrl, ExpiresAtUtc, IsActive);
        return true;
    }
}
