using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http.Headers;
using System.Net.Http.Json;
using System.Threading.Tasks;

using CCT_USCF.Models;
using Plugin.Firebase.Auth;
using Plugin.Firebase.Firestore;

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

        return prayer;
    }

    public async Task<IReadOnlyList<PrayerRequest>> GetPrayerWallAsync(int limit = 25)
    {
        System.Diagnostics.Debug.WriteLine("[PRAYER_FETCH_START]");
        var token = await _authService.GetCurrentFirebaseIdTokenAsync();
        if (string.IsNullOrWhiteSpace(token))
            throw new InvalidOperationException("Your Firebase session has expired. Please sign in again.");
        System.Diagnostics.Debug.WriteLine($"[PRAYER_FETCH_AUTH] uid={_auth.CurrentUser?.Uid ?? "none"}");

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
