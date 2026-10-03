using System.Net;
using System.Net.Http.Headers;
using System.Text;
using System.Text.Json;
using System.Text.Json.Serialization;
using CCT_USCF.Models;
using Microsoft.Extensions.Logging;
using Microsoft.Maui.Devices;

namespace CCT_USCF.Services;

public interface IFeedbackService
{
    Task<FeedbackReceipt> CreateBugReportAsync(BugFeedbackRequest request);
    Task<FeedbackReceipt> CreateSuggestionAsync(SuggestionFeedbackRequest request);
    Task<FeedbackReceipt> CreateGeneralFeedbackAsync(GeneralFeedbackRequest request);
    Task<IReadOnlyList<FeedbackModel>> GetMyReportsAsync();
    Task<FeedbackAdminPage> GetMyReportsPageAsync(int offset, int limit);
    Task<byte[]> GetScreenshotAsync(string feedbackId);
    Task<bool> IsFeedbackAdminAsync();
    Task<FeedbackAdminSummary> GetAdminSummaryAsync();
    Task<FeedbackAdminPage> GetAdminReportsAsync(
        string status,
        string type,
        string category,
        string search,
        int offset,
        int limit);
    Task<FeedbackModel> UpdateFeedbackStatusAsync(string feedbackId, string status);
    Task<byte[]> GetAdminScreenshotAsync(string feedbackId);
}

public sealed class FeedbackSubmissionException : Exception
{
    public FeedbackSubmissionException(string message) : base(message)
    {
    }
}

public sealed class FeedbackService : IFeedbackService
{
    public const int MaximumScreenshotBytes = 2 * 1024 * 1024;

    private static readonly JsonSerializerOptions JsonOptions =
        new(JsonSerializerDefaults.Web);

    private readonly AuthService _authService;
    private readonly HttpClient _httpClient;
    private readonly ILogger<FeedbackService> _logger;

    public FeedbackService(
        AuthService authService,
        HttpClient httpClient,
        ILogger<FeedbackService> logger)
    {
        _authService = authService ?? throw new ArgumentNullException(nameof(authService));
        _httpClient = httpClient ?? throw new ArgumentNullException(nameof(httpClient));
        _logger = logger ?? throw new ArgumentNullException(nameof(logger));
    }

    public Task<FeedbackReceipt> CreateBugReportAsync(BugFeedbackRequest request)
    {
        ArgumentNullException.ThrowIfNull(request);

        if (string.IsNullOrWhiteSpace(request.Title))
            throw new FeedbackSubmissionException("Please add a short title.");

        if (request.ScreenshotBytes is { Length: > MaximumScreenshotBytes })
            throw new FeedbackSubmissionException("The screenshot must be 2 MB or smaller.");

        if (request.ScreenshotBytes is { Length: > 0 } &&
            request.ScreenshotContentType is not ("image/png" or "image/jpeg" or "image/webp"))
        {
            throw new FeedbackSubmissionException("Choose a PNG, JPEG, or WEBP image.");
        }

        return SubmitAsync(
            request.RequestId,
            FeedbackType.Bug,
            request.Category,
            request.Title,
            request.Description,
            request.ExpectedResult,
            request.ActualResult,
            null,
            null,
            null,
            request.ScreenshotBytes,
            request.ScreenshotContentType);
    }

    public Task<FeedbackReceipt> CreateSuggestionAsync(SuggestionFeedbackRequest request)
    {
        ArgumentNullException.ThrowIfNull(request);

        return SubmitAsync(
            request.RequestId,
            FeedbackType.Suggestion,
            request.Category,
            request.Title,
            request.Description,
            null,
            null,
            null,
            null,
            null,
            null,
            null);
    }

    public Task<FeedbackReceipt> CreateGeneralFeedbackAsync(GeneralFeedbackRequest request)
    {
        ArgumentNullException.ThrowIfNull(request);

        var description = string.Join(
            Environment.NewLine,
            new[]
            {
                request.Rating is >= 1 and <= 5 ? $"Rating: {request.Rating}/5" : null,
                string.IsNullOrWhiteSpace(request.Liked) ? null : $"Liked: {request.Liked.Trim()}",
                string.IsNullOrWhiteSpace(request.Improvement) ? null : $"Improvement: {request.Improvement.Trim()}"
            }.Where(value => value is not null));
        if (string.IsNullOrWhiteSpace(description))
            throw new FeedbackSubmissionException("Please add a rating or share feedback.");

        return SubmitAsync(
            request.RequestId,
            FeedbackType.General,
            FeedbackCategory.Other,
            "General feedback",
            description,
            null,
            null,
            request.Rating,
            request.Liked,
            request.Improvement,
            null,
            null);
    }

    public async Task<IReadOnlyList<FeedbackModel>> GetMyReportsAsync()
    {
        using var response = await SendAuthenticatedAsync(
            HttpMethod.Get,
            "/api/feedback/mine",
            content: null);
        var body = await response.Content.ReadAsStringAsync();
        EnsureSuccess(response.StatusCode, body);

        var result = Deserialize<ReportsResponse>(body);
        return result.Reports is { } reports
            ? reports
            : Array.Empty<FeedbackModel>();
    }

    public async Task<FeedbackAdminPage> GetMyReportsPageAsync(int offset, int limit)
    {
        if (offset < 0 || limit is < 1 or > 50)
            throw new ArgumentOutOfRangeException(nameof(offset), "Feedback paging values are invalid.");

        var query = string.Join("&", new[]
        {
            Pair("offset", offset.ToString(System.Globalization.CultureInfo.InvariantCulture)),
            Pair("limit", limit.ToString(System.Globalization.CultureInfo.InvariantCulture))
        });
        using var response = await SendAuthenticatedAsync(
            HttpMethod.Get,
            $"/api/feedback/mine?{query}",
            content: null);
        var body = await response.Content.ReadAsStringAsync();
        EnsureSuccess(response.StatusCode, body);
        var result = Deserialize<AdminReportsResponse>(body);
        return new FeedbackAdminPage
        {
            Reports = result.Reports is null
                ? new List<FeedbackModel>()
                : result.Reports,
            Total = result.Total,
            Limit = result.Limit,
            Offset = result.Offset
        };
    }

    public async Task<byte[]> GetScreenshotAsync(string feedbackId)
    {
        if (string.IsNullOrWhiteSpace(feedbackId))
            throw new ArgumentException("A feedback ID is required.", nameof(feedbackId));

        using var response = await SendAuthenticatedAsync(
            HttpMethod.Get,
            $"/api/feedback/{Uri.EscapeDataString(feedbackId)}/screenshot",
            content: null);
        var body = await response.Content.ReadAsStringAsync();
        EnsureSuccess(response.StatusCode, body);

        return DecodeScreenshot(Deserialize<ScreenshotResponse>(body));
    }

    public async Task<bool> IsFeedbackAdminAsync()
    {
        using var response = await SendAuthenticatedAsync(
            HttpMethod.Get,
            "/api/feedback/admin/access",
            content: null);
        var body = await response.Content.ReadAsStringAsync();
        if (response.StatusCode is HttpStatusCode.Forbidden or HttpStatusCode.Unauthorized)
            return false;
        EnsureSuccess(response.StatusCode, body);

        var result = Deserialize<AdminAccessResponse>(body);
        if (!result.Success || result.IsAdmin is null)
            throw new FeedbackSubmissionException("The feedback admin access response was invalid.");

        return result.IsAdmin.Value;
    }

    public async Task<FeedbackAdminSummary> GetAdminSummaryAsync()
    {
        using var response = await SendAuthenticatedAsync(
            HttpMethod.Get,
            "/api/feedback/admin/summary",
            content: null);
        var body = await response.Content.ReadAsStringAsync();
        EnsureSuccess(response.StatusCode, body);
        return Deserialize<FeedbackAdminSummaryResponse>(body).ToSummary();
    }

    public async Task<FeedbackAdminPage> GetAdminReportsAsync(
        string status,
        string type,
        string category,
        string search,
        int offset,
        int limit)
    {
        if (offset < 0 || limit is < 1 or > 50)
            throw new ArgumentOutOfRangeException(nameof(offset), "Feedback paging values are invalid.");

        var query = string.Join("&", new[]
        {
            Pair("status", status),
            Pair("type", type),
            Pair("category", category),
            Pair("search", search),
            Pair("offset", offset.ToString(System.Globalization.CultureInfo.InvariantCulture)),
            Pair("limit", limit.ToString(System.Globalization.CultureInfo.InvariantCulture))
        });
        using var response = await SendAuthenticatedAsync(
            HttpMethod.Get,
            $"/api/feedback/admin/reports?{query}",
            content: null);
        var body = await response.Content.ReadAsStringAsync();
        EnsureSuccess(response.StatusCode, body);
        var result = Deserialize<AdminReportsResponse>(body);
        return new FeedbackAdminPage
        {
            Reports = result.Reports is null
                ? new List<FeedbackModel>()
                : result.Reports,
            Total = result.Total,
            Limit = result.Limit,
            Offset = result.Offset
        };
    }

    public async Task<FeedbackModel> UpdateFeedbackStatusAsync(string feedbackId, string status)
    {
        if (string.IsNullOrWhiteSpace(feedbackId))
            throw new ArgumentException("A feedback ID is required.", nameof(feedbackId));

        using var content = new StringContent(
            JsonSerializer.Serialize(new { status }, JsonOptions),
            Encoding.UTF8,
            "application/json");
        using var response = await SendAuthenticatedAsync(
            HttpMethod.Patch,
            $"/api/feedback/admin/reports/{Uri.EscapeDataString(feedbackId)}/status",
            content);
        var body = await response.Content.ReadAsStringAsync();
        EnsureSuccess(response.StatusCode, body);

        var result = Deserialize<AdminFeedbackUpdateResponse>(body);
        return result.Report
            ?? throw new FeedbackSubmissionException("The feedback report could not be refreshed.");
    }

    public async Task<byte[]> GetAdminScreenshotAsync(string feedbackId)
    {
        if (string.IsNullOrWhiteSpace(feedbackId))
            throw new ArgumentException("A feedback ID is required.", nameof(feedbackId));

        using var response = await SendAuthenticatedAsync(
            HttpMethod.Get,
            $"/api/feedback/admin/reports/{Uri.EscapeDataString(feedbackId)}/screenshot",
            content: null);
        var body = await response.Content.ReadAsStringAsync();
        EnsureSuccess(response.StatusCode, body);
        return DecodeScreenshot(Deserialize<ScreenshotResponse>(body));
    }

    private byte[] DecodeScreenshot(ScreenshotResponse result)
    {
        if (string.IsNullOrWhiteSpace(result.ImageBase64))
            throw new FeedbackSubmissionException("The screenshot could not be loaded.");

        try
        {
            var bytes = Convert.FromBase64String(result.ImageBase64);
            if (bytes.Length > MaximumScreenshotBytes)
                throw new FeedbackSubmissionException("The screenshot exceeds the supported size.");
            return bytes;
        }
        catch (FormatException ex)
        {
            _logger.LogError(ex, "The feedback service returned an invalid screenshot payload.");
            throw new FeedbackSubmissionException("The screenshot could not be loaded.");
        }
    }

    private static string Pair(string key, string? value) =>
        $"{Uri.EscapeDataString(key)}={Uri.EscapeDataString(value ?? string.Empty)}";

    private async Task<FeedbackReceipt> SubmitAsync(
        string requestId,
        FeedbackType type,
        FeedbackCategory category,
        string title,
        string description,
        string? expectedResult,
        string? actualResult,
        int? rating,
        string? liked,
        string? improvement,
        byte[]? screenshotBytes,
        string? screenshotContentType)
    {
        if (string.IsNullOrWhiteSpace(requestId))
            throw new FeedbackSubmissionException("Please try submitting your feedback again.");

        var payload = new FeedbackPayload
        {
            RequestId = requestId,
            Type = FeedbackValues.ToAppwriteValue(type),
            Category = FeedbackValues.ToAppwriteValue(category),
            Title = title.Trim(),
            Description = description.Trim(),
            ExpectedResult = expectedResult?.Trim(),
            ActualResult = actualResult?.Trim(),
            Rating = rating,
            Liked = liked?.Trim(),
            Improvement = improvement?.Trim(),
            AppVersion = AppInfo.VersionString,
            DeviceModel = string.Join(
                ' ',
                new[] { DeviceInfo.Manufacturer, DeviceInfo.Model }
                    .Where(part => !string.IsNullOrWhiteSpace(part))),
            AndroidVersion = DeviceInfo.VersionString,
            ScreenshotBase64 = screenshotBytes is { Length: > 0 }
                ? Convert.ToBase64String(screenshotBytes)
                : null,
            ScreenshotContentType = screenshotContentType
        };

        using var content = new StringContent(
            JsonSerializer.Serialize(payload, JsonOptions),
            Encoding.UTF8,
            "application/json");

        using var response = await SendAuthenticatedAsync(
            HttpMethod.Post,
            "/api/feedback",
            content);
        var body = await response.Content.ReadAsStringAsync();
        EnsureSuccess(response.StatusCode, body);

        var result = Deserialize<SubmitResponse>(body);
        if (!result.Success ||
            string.IsNullOrWhiteSpace(result.Id) ||
            string.IsNullOrWhiteSpace(result.Reference))
        {
            throw new FeedbackSubmissionException(
                "Unable to submit feedback right now. Please check your internet connection and try again.");
        }

        return new FeedbackReceipt
        {
            FeedbackId = result.Id,
            Reference = result.Reference,
            ScreenshotId = result.ScreenshotId,
            CreatedAt = result.CreatedAt
        };
    }

    private async Task<HttpResponseMessage> SendAuthenticatedAsync(
        HttpMethod method,
        string path,
        HttpContent? content)
    {
        var uid = _authService.GetCurrentFirebaseUid();
        if (string.IsNullOrWhiteSpace(uid))
            throw new FeedbackSubmissionException("Please sign in before sending feedback.");

        try
        {
            var token = await _authService.GetCurrentFirebaseIdTokenAsync();
            var request = new HttpRequestMessage(method, new Uri(GetBaseAddress(), path))
            {
                Content = content
            };
            request.Headers.Authorization = new AuthenticationHeaderValue("Bearer", token);
            request.Headers.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));

            try
            {
                return await _httpClient.SendAsync(request);
            }
            finally
            {
                request.Dispose();
            }
        }
        catch (FeedbackSubmissionException)
        {
            throw;
        }
        catch (TaskCanceledException ex)
        {
            _logger.LogWarning(ex, "Feedback request timed out.");
            throw new FeedbackSubmissionException(
                "Unable to submit feedback right now. Please check your internet connection and try again.");
        }
        catch (HttpRequestException ex)
        {
            _logger.LogWarning(ex, "Feedback service could not be reached.");
            throw new FeedbackSubmissionException(
                "Unable to submit feedback right now. Please check your internet connection and try again.");
        }
        catch (Exception ex)
        {
            _logger.LogError(ex, "Feedback request failed unexpectedly.");
            throw new FeedbackSubmissionException(
                "Unable to submit feedback right now. Please try again.");
        }
    }

    private void EnsureSuccess(HttpStatusCode statusCode, string body)
    {
        if ((int)statusCode is >= 200 and < 300)
            return;

        if (statusCode == HttpStatusCode.Unauthorized)
            throw new FeedbackSubmissionException("Please sign in again before sending feedback.");

        if (statusCode == HttpStatusCode.Forbidden)
            throw new FeedbackSubmissionException("Your account is not permitted to access this feedback.");

        if ((int)statusCode >= 500 || statusCode == HttpStatusCode.RequestTimeout)
        {
            _logger.LogWarning("Feedback service returned HTTP status {StatusCode}.", (int)statusCode);
            throw new FeedbackSubmissionException(
                "Unable to submit feedback right now. Please check your internet connection and try again.");
        }

        var error = Deserialize<ApiError>(body);
        throw new FeedbackSubmissionException(
            string.IsNullOrWhiteSpace(error.Error)
                ? "Please check the feedback details and try again."
                : error.Error);
    }

    private Uri GetBaseAddress() =>
        _httpClient.BaseAddress
        ?? throw new InvalidOperationException("The feedback service endpoint is not configured.");

    private static T Deserialize<T>(string json)
    {
        try
        {
            return JsonSerializer.Deserialize<T>(json, JsonOptions)
                ?? throw new FeedbackSubmissionException("The feedback service returned an invalid response.");
        }
        catch (JsonException)
        {
            throw new FeedbackSubmissionException("The feedback service returned an invalid response.");
        }
    }

    private sealed class FeedbackPayload
    {
        [JsonPropertyName("requestId")]
        public string RequestId { get; init; } = string.Empty;
        [JsonPropertyName("type")]
        public string Type { get; init; } = string.Empty;
        [JsonPropertyName("category")]
        public string Category { get; init; } = string.Empty;
        [JsonPropertyName("title")]
        public string Title { get; init; } = string.Empty;
        [JsonPropertyName("description")]
        public string Description { get; init; } = string.Empty;
        [JsonPropertyName("expectedResult")]
        public string? ExpectedResult { get; init; }
        [JsonPropertyName("actualResult")]
        public string? ActualResult { get; init; }
        [JsonPropertyName("rating")]
        public int? Rating { get; init; }
        [JsonPropertyName("liked")]
        public string? Liked { get; init; }
        [JsonPropertyName("improvement")]
        public string? Improvement { get; init; }
        [JsonPropertyName("appVersion")]
        public string AppVersion { get; init; } = string.Empty;
        [JsonPropertyName("deviceModel")]
        public string DeviceModel { get; init; } = string.Empty;
        [JsonPropertyName("androidVersion")]
        public string AndroidVersion { get; init; } = string.Empty;
        [JsonPropertyName("screenshotBase64")]
        public string? ScreenshotBase64 { get; init; }
        [JsonPropertyName("screenshotContentType")]
        public string? ScreenshotContentType { get; init; }
    }

    private sealed class SubmitResponse
    {
        [JsonPropertyName("success")]
        public bool Success { get; init; }
        [JsonPropertyName("id")]
        public string Id { get; init; } = string.Empty;
        [JsonPropertyName("reference")]
        public string Reference { get; init; } = string.Empty;
        [JsonPropertyName("screenshotId")]
        public string? ScreenshotId { get; init; }
        [JsonPropertyName("createdAt")]
        public DateTimeOffset? CreatedAt { get; init; }
    }

    private sealed class ReportsResponse
    {
        [JsonPropertyName("reports")]
        public List<FeedbackModel>? Reports { get; init; }
    }

    private sealed class AdminAccessResponse
    {
        [JsonPropertyName("success")]
        public bool Success { get; init; }
        [JsonPropertyName("isAdmin")]
        public bool? IsAdmin { get; init; }
    }

    private sealed class FeedbackAdminSummaryResponse
    {
        [JsonPropertyName("total")]
        public int Total { get; init; }
        [JsonPropertyName("statuses")]
        public Dictionary<string, int>? Statuses { get; init; }
        [JsonPropertyName("types")]
        public Dictionary<string, int>? Types { get; init; }

        public FeedbackAdminSummary ToSummary() => new()
        {
            Total = Total,
            Statuses = Statuses ?? new Dictionary<string, int>(StringComparer.Ordinal),
            Types = Types ?? new Dictionary<string, int>(StringComparer.Ordinal)
        };
    }

    private sealed class AdminReportsResponse
    {
        [JsonPropertyName("reports")]
        public List<FeedbackModel>? Reports { get; init; }
        [JsonPropertyName("total")]
        public int Total { get; init; }
        [JsonPropertyName("limit")]
        public int Limit { get; init; }
        [JsonPropertyName("offset")]
        public int Offset { get; init; }
    }

    private sealed class AdminFeedbackUpdateResponse
    {
        [JsonPropertyName("report")]
        public FeedbackModel? Report { get; init; }
    }

    private sealed class ScreenshotResponse
    {
        [JsonPropertyName("imageBase64")]
        public string? ImageBase64 { get; init; }
    }

    private sealed class ApiError
    {
        [JsonPropertyName("error")]
        public string? Error { get; init; }
    }
}
