using System.Net;
using System.Net.Http.Headers;
using System.Net.Http.Json;
using System.Text.Json;
using CCT_USCF.Models;

namespace CCT_USCF.Services;

public sealed class ChurchAnnouncementService
{
    private readonly HttpClient _http;
    private readonly AuthService _auth;
    private static readonly JsonSerializerOptions JsonOptions = new(JsonSerializerDefaults.Web);

    public ChurchAnnouncementService(HttpClient http, AuthService auth) => (_http, _auth) = (http, auth);

    public async Task<ChurchAnnouncementOptions> GetOptionsAsync(CancellationToken ct = default)
        => await SendAsync<ChurchAnnouncementOptions>(HttpMethod.Get, "api/church-announcements/options", null, ct)
            ?? throw new InvalidOperationException("Announcement options were unavailable.");

    public async Task<IReadOnlyList<ChurchNotification>> GetNotificationsAsync(CancellationToken ct = default)
        => await SendAsync<List<ChurchNotification>>(HttpMethod.Get, "api/church-announcements/notifications", null, ct) ?? [];

    public async Task<int> GetUnreadCountAsync(CancellationToken ct = default)
    {
        var result = await SendAsync<UnreadCount>(HttpMethod.Get, "api/church-announcements/notifications/unread-count", null, ct);
        return result?.Count ?? 0;
    }

    public async Task CreateAsync(string title, string message, ChurchAnnouncementTarget target, CancellationToken ct = default)
    {
        var payload = new { title, message, targetLevel = target.Level, regionId = target.RegionId,
            districtId = target.DistrictId, branchId = target.Id };
        await SendAsync<object>(HttpMethod.Post, "api/church-announcements", payload, ct);
    }

    public Task MarkReadAsync(Guid id, CancellationToken ct = default)
        => SendAsync<object>(HttpMethod.Post, $"api/church-announcements/notifications/{id}/read", new { }, ct);

    public Task RegisterTokenAsync(string token, CancellationToken ct = default)
        => SendAsync<object>(HttpMethod.Post, "api/church-announcements/token", new { token }, ct);

    private async Task<T?> SendAsync<T>(HttpMethod method, string path, object? body, CancellationToken ct)
    {
        using var request = new HttpRequestMessage(method, path);
        request.Headers.Authorization = new AuthenticationHeaderValue("Bearer", await _auth.GetCurrentFirebaseIdTokenAsync());
        if (body is not null) request.Content = JsonContent.Create(body, options: JsonOptions);
        using var response = await _http.SendAsync(request, ct);
        if (response.IsSuccessStatusCode) return await response.Content.ReadFromJsonAsync<T>(JsonOptions, ct);
        if (response.StatusCode == HttpStatusCode.Unauthorized) throw new InvalidOperationException("Please sign in to use church announcements.");
        if (response.StatusCode == HttpStatusCode.Forbidden) throw new InvalidOperationException("You are not authorized for that announcement audience.");
        var error = await response.Content.ReadFromJsonAsync<ApiError>(JsonOptions, ct);
        throw new InvalidOperationException(error?.Message ?? "The announcement service is unavailable.");
    }

    private sealed record UnreadCount(int Count);
    private sealed record ApiError(string? Message);
}
