using System.Net.Http.Headers;
using System.Net.Http.Json;
using System.Text.Json;
using CCT_USCF.Models;

namespace CCT_USCF.Services;

public sealed class ChurchGroupService
{
    private const string ApiBaseUrl = "https://6a9ade0a003b6bd60240.sgp.appwrite.run/";
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
        using var request = await CreateRequestAsync(
            HttpMethod.Get,
            $"api/community/groups?scopeType={Uri.EscapeDataString(scopeType)}",
            cancellationToken);
        using var response = await _httpClient.SendAsync(request, cancellationToken);
        await EnsureSuccessAsync(response);

        var payload = await response.Content.ReadFromJsonAsync<GroupListResponse>(
            cancellationToken: cancellationToken);
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
        request.Content = JsonContent.Create(new
        {
            name,
            description,
            groupType,
            scopeType
        });

        using var response = await _httpClient.SendAsync(request, cancellationToken);
        await EnsureSuccessAsync(response);
        var group = await response.Content.ReadFromJsonAsync<ChurchGroup>(
            cancellationToken: cancellationToken);
        return group ?? throw new InvalidOperationException("The group service returned an empty group.");
    }

    private async Task<HttpRequestMessage> CreateRequestAsync(
        HttpMethod method,
        string relativePath,
        CancellationToken cancellationToken)
    {
        var token = await _authService.GetCurrentFirebaseIdTokenAsync();
        var request = new HttpRequestMessage(method, new Uri(new Uri(ApiBaseUrl), relativePath));
        request.Headers.Authorization = new AuthenticationHeaderValue("Bearer", token);
        request.Headers.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));
        return request;
    }

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

    private sealed class GroupListResponse
    {
        public List<ChurchGroup> Groups { get; set; } = new();
    }
}
