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
        public string? RefreshToken { get; set; }
        public DateTime? ExpiresAtUtc { get; set; }
        public string? Error { get; set; }
        public int StatusCode { get; set; }
    }

    public async Task<AuthResult> LoginAsync(string usernameOrEmail, string password)
    {
        var payload = new { UsernameOrEmail = usernameOrEmail, Password = password };
        var content = new StringContent(JsonSerializer.Serialize(payload), Encoding.UTF8, "application/json");

        try
        {
            using var res = await _http.PostAsync($"{_baseUrl}/api/auth/login", content);
            var body = await res.Content.ReadAsStringAsync();

            if (!res.IsSuccessStatusCode)
            {
                string err = body;
                if (string.IsNullOrWhiteSpace(err)) err = res.ReasonPhrase ?? "Login failed";
                System.Diagnostics.Debug.WriteLine($"[AUTH] LoginAsync server returned non-success: {(int)res.StatusCode} - {err}");
                return new AuthResult { Success = false, Error = err, StatusCode = (int)res.StatusCode };
            }

            try
            {
                var j = JsonDocument.Parse(body);
                if (!j.RootElement.TryGetProperty("token", out var tokenEl))
                {
                    Console.WriteLine("[LOGIN] LoginAsync response missing token property");
                    return new AuthResult { Success = false, Error = "Login response missing token.", StatusCode = (int)res.StatusCode };
                }

                var token = tokenEl.GetString();
                if (string.IsNullOrEmpty(token))
                {
                    Console.WriteLine("[LOGIN] LoginAsync received empty token");
                    return new AuthResult { Success = false, Error = "Empty token received from server.", StatusCode = (int)res.StatusCode };
                }

                var refreshToken = j.RootElement.TryGetProperty("refreshToken", out var refreshEl) ? refreshEl.GetString() : null;
                DateTime? expiresAtUtc = null;
                if (j.RootElement.TryGetProperty("expiresAtUtc", out var expiryUtcEl) && DateTime.TryParse(expiryUtcEl.GetString(), out var expiryUtc))
                {
                    expiresAtUtc = expiryUtc;
                }
                else if (j.RootElement.TryGetProperty("expiresAt", out var expiresEl) && DateTime.TryParse(expiresEl.GetString(), out var expires))
                {
                    expiresAtUtc = expires;
                }

                Console.WriteLine("[LOGIN] LoginAsync succeeded, token received");
                return new AuthResult { Success = true, Token = token, RefreshToken = refreshToken, ExpiresAtUtc = expiresAtUtc, StatusCode = (int)res.StatusCode };
            }
            catch (JsonException je)
            {
                Console.WriteLine($"[LOGIN] LoginAsync JSON parse error: {je}");
                return new AuthResult { Success = false, Error = "Invalid response from server.", StatusCode = (int)res.StatusCode };
            }
        }
        catch (HttpRequestException hre)
        {
            Console.WriteLine($"[LOGIN] LoginAsync HTTP request error: {hre.Message}");
            return new AuthResult { Success = false, Error = "Network error while contacting authentication server.", StatusCode = 0 };
        }
        catch (OperationCanceledException oce)
        {
            Console.WriteLine($"[LOGIN] LoginAsync canceled: {oce.Message}");
            return new AuthResult { Success = false, Error = "Login canceled.", StatusCode = 0 };
        }
        catch (Exception ex)
        {
            Console.WriteLine($"[LOGIN] LoginAsync unexpected error: {ex}");
            return new AuthResult { Success = false, Error = "Unexpected error during login.", StatusCode = 0 };
        }
    }

    public async Task<bool> LogoutAsync()
    {
        var token = await TokenStorage.GetTokenAsync();
        if (string.IsNullOrEmpty(token))
        {
            await TokenStorage.ClearSessionAsync();
            return true;
        }

        try
        {
            using var req = new HttpRequestMessage(HttpMethod.Post, $"{_baseUrl}/api/auth/logout");
            req.Headers.Authorization = new AuthenticationHeaderValue("Bearer", token);
            using var res = await _http.SendAsync(req);
            if (res.IsSuccessStatusCode || res.StatusCode == System.Net.HttpStatusCode.Unauthorized)
            {
                await TokenStorage.ClearSessionAsync();
                return true;
            }

            return false;
        }
        catch (HttpRequestException)
        {
            await TokenStorage.ClearSessionAsync();
            return true;
        }
        catch (OperationCanceledException)
        {
            await TokenStorage.ClearSessionAsync();
            return true;
        }
    }

    public async Task<bool> RefreshTokenAsync()
    {
        var refreshToken = await TokenStorage.GetRefreshTokenAsync();
        if (string.IsNullOrWhiteSpace(refreshToken))
        {
            await TokenStorage.ClearSessionAsync();
            return false;
        }

        var payload = new { refreshToken };
        var content = new StringContent(JsonSerializer.Serialize(payload), Encoding.UTF8, "application/json");

        try
        {
            using var res = await _http.PostAsync($"{_baseUrl}/api/auth/refresh", content);
            var body = await res.Content.ReadAsStringAsync();

            if (res.StatusCode == System.Net.HttpStatusCode.Unauthorized)
            {
                await TokenStorage.ClearSessionAsync();
                return false;
            }

            if (!res.IsSuccessStatusCode)
            {
                throw new HttpRequestException($"Refresh failed: {(int)res.StatusCode} - {body}");
            }

            var j = JsonDocument.Parse(body);
            if (!j.RootElement.TryGetProperty("token", out var tokenEl) || !j.RootElement.TryGetProperty("refreshToken", out var refreshedTokenEl))
            {
                return false;
            }

            var newToken = tokenEl.GetString();
            var newRefreshToken = refreshedTokenEl.GetString();
            var expiresAt = j.RootElement.TryGetProperty("expiresAtUtc", out var expiryUtcEl) && DateTime.TryParse(expiryUtcEl.GetString(), out var expiryUtc)
                ? expiryUtc
                : (j.RootElement.TryGetProperty("expiresAt", out var expiryEl) && DateTime.TryParse(expiryEl.GetString(), out var expiry) ? expiry : DateTime.UtcNow.AddHours(8));

            if (string.IsNullOrWhiteSpace(newToken) || string.IsNullOrWhiteSpace(newRefreshToken))
            {
                await TokenStorage.ClearSessionAsync();
                return false;
            }

            await TokenStorage.SaveSessionAsync(newToken, newRefreshToken, expiresAt);
            return true;
        }
        catch (HttpRequestException)
        {
            throw;
        }
        catch (OperationCanceledException)
        {
            throw;
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
        var token = await TokenStorage.GetTokenAsync();
        if (string.IsNullOrEmpty(token)) return null;

        var expiresAtUtc = TokenStorage.GetAccessTokenExpirationUtc();
        if (expiresAtUtc.HasValue && DateTime.UtcNow >= expiresAtUtc.Value)
        {
            var refreshed = false;
            try
            {
                refreshed = await RefreshTokenAsync();
            }
            catch (HttpRequestException)
            {
                throw;
            }
            catch (OperationCanceledException)
            {
                throw;
            }

            if (!refreshed)
            {
                await TokenStorage.ClearSessionAsync();
                return null;
            }

            token = await TokenStorage.GetTokenAsync();
            if (string.IsNullOrEmpty(token)) return null;
        }

        using var req = new HttpRequestMessage(HttpMethod.Get, $"{_baseUrl}/api/auth/me");
        req.Headers.Authorization = new System.Net.Http.Headers.AuthenticationHeaderValue("Bearer", token);

        try
        {
            var res = await _http.SendAsync(req);

            if (res.StatusCode == System.Net.HttpStatusCode.Unauthorized)
            {
                var refreshToken = await TokenStorage.GetRefreshTokenAsync();
                if (!string.IsNullOrWhiteSpace(refreshToken))
                {
                    try
                    {
                        var refreshed = await RefreshTokenAsync();
                        if (refreshed)
                        {
                            token = await TokenStorage.GetTokenAsync();
                            if (string.IsNullOrEmpty(token)) return null;

                            using var retryReq = new HttpRequestMessage(HttpMethod.Get, $"{_baseUrl}/api/auth/me");
                            retryReq.Headers.Authorization = new System.Net.Http.Headers.AuthenticationHeaderValue("Bearer", token);
                            var retryRes = await _http.SendAsync(retryReq);
                            if (retryRes.StatusCode == System.Net.HttpStatusCode.Unauthorized)
                            {
                                await TokenStorage.ClearSessionAsync();
                                return null;
                            }
                            if (!retryRes.IsSuccessStatusCode)
                            {
                                var txt = await retryRes.Content.ReadAsStringAsync();
                                throw new HttpRequestException($"Unexpected status code from /api/auth/me after refresh: {(int)retryRes.StatusCode} - {txt}");
                            }

                            var retryJson = await retryRes.Content.ReadAsStringAsync();
                            var retryUser = JsonSerializer.Deserialize<CCT_USCF.Models.CurrentUser>(retryJson, new JsonSerializerOptions { PropertyNameCaseInsensitive = true });
                            return retryUser;
                        }
                    }
                    catch (HttpRequestException)
                    {
                        throw;
                    }
                    catch (OperationCanceledException)
                    {
                        throw;
                    }
                }

                await TokenStorage.ClearSessionAsync();
                return null;
            }

            if (!res.IsSuccessStatusCode)
            {
                var txt = await res.Content.ReadAsStringAsync();
                throw new HttpRequestException($"Unexpected status code from /api/auth/me: {(int)res.StatusCode} - {txt}");
            }

            var json = await res.Content.ReadAsStringAsync();
            var user = JsonSerializer.Deserialize<CCT_USCF.Models.CurrentUser>(json, new JsonSerializerOptions { PropertyNameCaseInsensitive = true });
            return user;
        }
        catch (HttpRequestException)
        {
            throw;
        }
        catch (OperationCanceledException)
        {
            throw;
        }
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
