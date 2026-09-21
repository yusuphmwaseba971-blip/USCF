using System.Net.Http.Headers;
using System.Net.Http.Json;
using System.Diagnostics;
using System.Text.Json;
using System.Text.Json.Serialization;
using CCT_USCF.Models;

namespace CCT_USCF.Services;

public sealed class ChurchGroupService
{
    private readonly AuthService _authService;
    private readonly HttpClient _httpClient;

    public ChurchGroupService(AuthService authService, HttpClient httpClient)
    {
        _authService = authService ?? throw new ArgumentNullException(nameof(authService));
        _httpClient = httpClient ?? throw new ArgumentNullException(nameof(httpClient));
    }

    public async Task<IReadOnlyList<ChurchGroup>> GetGroupsAsync(
        string scopeType,
        CancellationToken cancellationToken = default)
    {
        using var timeout = CancellationTokenSource.CreateLinkedTokenSource(cancellationToken);
        timeout.CancelAfter(TimeSpan.FromSeconds(30));
        var requestCancellationToken = timeout.Token;
        var startedAt = Stopwatch.GetTimestamp();
        System.Diagnostics.Debug.WriteLine(
            $"[CHURCH GROUP] list_start scope={scopeType}");

        using var request = await CreateRequestAsync(
            HttpMethod.Get,
            $"api/community/groups?scopeType={Uri.EscapeDataString(scopeType)}",
            requestCancellationToken);
        System.Diagnostics.Debug.WriteLine(
            $"[CHURCH GROUP] list_request_ready scope={scopeType} elapsed_ms={ElapsedMilliseconds(startedAt):F0}");
        using var response = await _httpClient.SendAsync(request, requestCancellationToken);
        System.Diagnostics.Debug.WriteLine(
            $"[CHURCH GROUP] list_response scope={scopeType} status={(int)response.StatusCode} elapsed_ms={ElapsedMilliseconds(startedAt):F0}");
        await EnsureSuccessAsync(response);

        var payload = await response.Content.ReadFromJsonAsync(
            ChurchGroupJsonContext.Default.GroupListResponse,
            requestCancellationToken);
        System.Diagnostics.Debug.WriteLine(
            $"[CHURCH GROUP] list_parsed scope={scopeType} count={payload?.Groups.Count ?? 0} elapsed_ms={ElapsedMilliseconds(startedAt):F0}");
        return payload?.Groups ?? new List<ChurchGroup>();
    }

    public async Task<ChurchGroup> CreateGroupAsync(
        string name,
        string description,
        string groupType,
        string scopeType,
        CancellationToken cancellationToken = default)
    {
        using var request = await CreateRequestAsync(
            HttpMethod.Post,
            "api/community/groups",
            cancellationToken);
        request.Content = JsonContent.Create(
            new CreateGroupRequest(name, description, groupType, scopeType),
            ChurchGroupJsonContext.Default.CreateGroupRequest);

        using var response = await _httpClient.SendAsync(request, cancellationToken);
        await EnsureSuccessAsync(response);
        var group = await response.Content.ReadFromJsonAsync(
            ChurchGroupJsonContext.Default.ChurchGroup,
            cancellationToken);
        return group ?? throw new InvalidOperationException("The group service returned an empty group.");
    }

    public async Task DeleteGroupAsync(
        string groupId,
        CancellationToken cancellationToken = default)
    {
        if (string.IsNullOrWhiteSpace(groupId))
            throw new ArgumentException("A group id is required.", nameof(groupId));

        using var request = await CreateRequestAsync(
            HttpMethod.Delete,
            $"api/community/groups/{Uri.EscapeDataString(groupId.Trim())}",
            cancellationToken);
        using var response = await _httpClient.SendAsync(request, cancellationToken);
        await EnsureSuccessAsync(response);
    }

    public async Task JoinGroupAsync(
        string groupId,
        CancellationToken cancellationToken = default)
    {
        if (string.IsNullOrWhiteSpace(groupId))
            throw new ArgumentException("A group id is required.", nameof(groupId));

        using var request = await CreateRequestAsync(
            HttpMethod.Post,
            $"api/community/groups/{Uri.EscapeDataString(groupId.Trim())}",
            cancellationToken);
        using var response = await _httpClient.SendAsync(request, cancellationToken);
        await EnsureSuccessAsync(response);
    }

    private async Task<HttpRequestMessage> CreateRequestAsync(
        HttpMethod method,
        string relativePath,
        CancellationToken cancellationToken)
    {
        var startedAt = Stopwatch.GetTimestamp();
        System.Diagnostics.Debug.WriteLine(
            $"[CHURCH GROUP] auth_start method={method} path={relativePath}");
        var token = await _authService
            .GetCurrentFirebaseIdTokenAsync()
            .WaitAsync(cancellationToken);
        System.Diagnostics.Debug.WriteLine(
            $"[CHURCH GROUP] auth_ready method={method} path={relativePath} elapsed_ms={ElapsedMilliseconds(startedAt):F0}");
        System.Diagnostics.Debug.WriteLine(
            $"[CHURCH GROUP] {method} {new Uri(new Uri(ApiConfig.BaseUrl.TrimEnd('/') + "/"), relativePath)}");
        var request = new HttpRequestMessage(
            method,
            new Uri(new Uri(ApiConfig.BaseUrl.TrimEnd('/') + "/"), relativePath));
        request.Headers.Authorization = new AuthenticationHeaderValue("Bearer", token);
        request.Headers.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));
        return request;
    }

    private static double ElapsedMilliseconds(long startedAt) =>
        Stopwatch.GetElapsedTime(startedAt).TotalMilliseconds;

    private static async Task EnsureSuccessAsync(HttpResponseMessage response)
    {
        if (response.IsSuccessStatusCode)
            return;

        var body = await response.Content.ReadAsStringAsync();
        var message = body;
        try
        {
            using var document = JsonDocument.Parse(body);
            message = document.RootElement.TryGetProperty("error", out var error)
                ? error.GetString() ?? body
                : body;
        }
        catch (JsonException)
        {
            // Preserve the server response when it is not JSON.
        }

        throw new InvalidOperationException(
            $"Group request failed ({(int)response.StatusCode}): {message}");
    }

    internal sealed class GroupListResponse
    {
        public List<ChurchGroup> Groups { get; set; } = new();
    }

    internal sealed record CreateGroupRequest(
        [property: JsonPropertyName("name")]
        string Name,
        [property: JsonPropertyName("description")]
        string Description,
        [property: JsonPropertyName("groupType")]
        string GroupType,
        [property: JsonPropertyName("scopeType")]
        string ScopeType);
}

[JsonSerializable(typeof(ChurchGroupService.GroupListResponse))]
[JsonSerializable(typeof(ChurchGroupService.CreateGroupRequest))]
[JsonSerializable(typeof(ChurchGroup))]
[JsonSerializable(typeof(List<ChurchGroup>))]
internal partial class ChurchGroupJsonContext : JsonSerializerContext
{
}
