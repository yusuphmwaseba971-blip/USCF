using System.Net.Http.Headers;
using System.Text;
using System.Text.Json;

namespace CCT_USCF.Services;

public class AuthService
{
    private readonly HttpClient _http;
    private readonly string _baseUrl;

    public AuthService(HttpClient http)
    {
        _http = http;
        // canonical base URL from DI-configured HttpClient or ApiConfig
        _baseUrl = http.BaseAddress?.ToString().TrimEnd('/') ?? CCT_USCF.Services.ApiConfig.BaseUrl;
    }

    public class AuthResult
    {
        public bool Success { get; set; }
        public string? Token { get; set; }
        public string? Error { get; set; }
        public int StatusCode { get; set; }
    }

    public async Task<AuthResult> LoginAsync(string usernameOrEmail, string password)
    {
        var payload = new { UsernameOrEmail = usernameOrEmail, Password = password };
        var content = new StringContent(JsonSerializer.Serialize(payload), Encoding.UTF8, "application/json");

        using var res = await _http.PostAsync($"{_baseUrl}/api/auth/login", content);
        var body = await res.Content.ReadAsStringAsync();

        if (!res.IsSuccessStatusCode)
        {
            // Return structured failure with server message if present
            string err = body;
            if (string.IsNullOrWhiteSpace(err)) err = res.ReasonPhrase ?? "Login failed";
            return new AuthResult { Success = false, Error = err, StatusCode = (int)res.StatusCode };
        }

        try
        {
            var j = JsonDocument.Parse(body);
            if (!j.RootElement.TryGetProperty("token", out var tokenEl))
            {
                return new AuthResult { Success = false, Error = "Login response missing token.", StatusCode = (int)res.StatusCode };
            }

            var token = tokenEl.GetString();
            if (string.IsNullOrEmpty(token))
                return new AuthResult { Success = false, Error = "Empty token received from server.", StatusCode = (int)res.StatusCode };

            return new AuthResult { Success = true, Token = token, StatusCode = (int)res.StatusCode };
        }
        catch (JsonException)
        {
            return new AuthResult { Success = false, Error = "Invalid response from server.", StatusCode = (int)res.StatusCode };
        }
    }

    public async Task RegisterAsync(string fullName, string username, string email, string password, string confirm, string role, int? regionId, int? districtId, int? branchId)
    {
        var payload = new
        {
            FullName = fullName,
            Username = username,
            Email = email,
            Password = password,
            ConfirmPassword = confirm,
            Role = role,
            RegionId = regionId,
            DistrictId = districtId,
            BranchId = branchId
        };

  
        var content = new StringContent(JsonSerializer.Serialize(payload), Encoding.UTF8, "application/json");
        var res = await _http.PostAsync($"{_baseUrl}/api/auth/register", content);
        if (!res.IsSuccessStatusCode)
        {
            var txt = await res.Content.ReadAsStringAsync();
            throw new Exception(txt);
        }
    }

public class LocationItem
{
    public int Id { get; set; }
    public string Name { get; set; } = "";
}

public async Task<List<LocationItem>> GetRegionsAsync()
{
    var response = await _http.GetAsync($"{_baseUrl}/api/locations/regions");

    if (!response.IsSuccessStatusCode)
    {
        throw new Exception("Unable to load regions.");
    }

    var json = await response.Content.ReadAsStringAsync();

    return JsonSerializer.Deserialize<List<LocationItem>>(
        json,
        new JsonSerializerOptions
        {
            PropertyNameCaseInsensitive = true
        }) ?? new List<LocationItem>();
}

    // New: Get current authenticated user
    public async Task<CCT_USCF.Models.CurrentUser?> GetCurrentUserAsync()
    {
        // Use token storage wrapper which throws on secure storage failures
        var token = await TokenStorage.GetTokenAsync();
        if (string.IsNullOrEmpty(token)) return null;

        using var req = new HttpRequestMessage(HttpMethod.Get, $"{_baseUrl}/api/auth/me");
        req.Headers.Authorization = new System.Net.Http.Headers.AuthenticationHeaderValue("Bearer", token);

        var res = await _http.SendAsync(req);
        if (res.StatusCode == System.Net.HttpStatusCode.Unauthorized)
        {
            // token invalid
            return null;
        }

        if (!res.IsSuccessStatusCode)
        {
            // network/server issue - throw so caller can distinguish
            var txt = await res.Content.ReadAsStringAsync();
            throw new HttpRequestException($"Unexpected status code from /api/auth/me: {(int)res.StatusCode} - {txt}");
        }

        var json = await res.Content.ReadAsStringAsync();
        var user = JsonSerializer.Deserialize<CCT_USCF.Models.CurrentUser>(json, new JsonSerializerOptions { PropertyNameCaseInsensitive = true });
        return user;
    }
public async Task<List<LocationItem>> GetDistrictsAsync(int regionId)
{
    var response = await _http.GetAsync(
        $"{_baseUrl}/api/locations/districts/{regionId}");

    if (!response.IsSuccessStatusCode)
    {
        throw new Exception("Unable to load districts.");
    }

    var json = await response.Content.ReadAsStringAsync();

    return JsonSerializer.Deserialize<List<LocationItem>>(
        json,
        new JsonSerializerOptions
        {
            PropertyNameCaseInsensitive = true
        }) ?? new List<LocationItem>();
}
public async Task<List<LocationItem>> GetBranchesAsync(int districtId)
{
    var response = await _http.GetAsync(
        $"{_baseUrl}/api/locations/branches/{districtId}");

    if (!response.IsSuccessStatusCode)
    {
        throw new Exception("Unable to load branches.");
    }

    var json = await response.Content.ReadAsStringAsync();

    return JsonSerializer.Deserialize<List<LocationItem>>(
        json,
        new JsonSerializerOptions
        {
            PropertyNameCaseInsensitive = true
        }) ?? new List<LocationItem>();
}

// Update current user's profile (FullName, Username, Email, optional password change)
public async Task<CCT_USCF.Models.CurrentUser?> UpdateProfileAsync(string? fullName, string? username, string? email, string? currentPassword, string? newPassword, string? confirmNewPassword)
{
    var token = await TokenStorage.GetTokenAsync();
    if (string.IsNullOrEmpty(token)) throw new Exception("Not authenticated");

    var payload = new
    {
        FullName = fullName,
        Username = username,
        Email = email,
        CurrentPassword = currentPassword,
        NewPassword = newPassword,
        ConfirmNewPassword = confirmNewPassword
    };

    var content = new StringContent(JsonSerializer.Serialize(payload), Encoding.UTF8, "application/json");
    using var req = new HttpRequestMessage(HttpMethod.Put, $"{_baseUrl}/api/auth/update") { Content = content };
    req.Headers.Authorization = new AuthenticationHeaderValue("Bearer", token);

    var res = await _http.SendAsync(req);
    if (res.StatusCode == System.Net.HttpStatusCode.Unauthorized)
        throw new Exception("Unauthorized");

    var txt = await res.Content.ReadAsStringAsync();
    if (!res.IsSuccessStatusCode)
    {
        throw new Exception(txt);
    }

    var user = JsonSerializer.Deserialize<CCT_USCF.Models.CurrentUser>(txt, new JsonSerializerOptions { PropertyNameCaseInsensitive = true });
    return user;
}

// Create a Holy Word post (content required). Optional audio file path and trims.
public async Task<bool> PostHolyWordAsync(string content, string? caption, string? audioFilePath, double? trimStart, double? trimEnd)
{
    var token = await TokenStorage.GetTokenAsync();
    if (string.IsNullOrEmpty(token)) throw new Exception("Not authenticated");

    using var form = new MultipartFormDataContent();
    form.Add(new StringContent(content), "content");
    if (!string.IsNullOrEmpty(caption)) form.Add(new StringContent(caption), "caption");
    if (trimStart.HasValue) form.Add(new StringContent(trimStart.Value.ToString(System.Globalization.CultureInfo.InvariantCulture)), "trimStart");
    if (trimEnd.HasValue) form.Add(new StringContent(trimEnd.Value.ToString(System.Globalization.CultureInfo.InvariantCulture)), "trimEnd");

    if (!string.IsNullOrEmpty(audioFilePath) && System.IO.File.Exists(audioFilePath))
    {
        var stream = System.IO.File.OpenRead(audioFilePath);
        var fileContent = new StreamContent(stream);
        fileContent.Headers.ContentType = new System.Net.Http.Headers.MediaTypeHeaderValue("application/octet-stream");
        form.Add(fileContent, "file", Path.GetFileName(audioFilePath));
    }

    using var req = new HttpRequestMessage(HttpMethod.Post, $"{_baseUrl}/api/posts") { Content = form };
    req.Headers.Authorization = new AuthenticationHeaderValue("Bearer", token);

    var res = await _http.SendAsync(req);
    var txt = await res.Content.ReadAsStringAsync();
    if (!res.IsSuccessStatusCode)
    {
        throw new Exception(txt);
    }

    return true;
}

}
