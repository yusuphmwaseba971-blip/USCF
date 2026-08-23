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
        _baseUrl = http.BaseAddress?.ToString().TrimEnd('/') ?? "http://192.168.139.213:5140";
    }

    public async Task<string> LoginAsync(string usernameOrEmail, string password)
    {
        var payload = new { UsernameOrEmail = usernameOrEmail, Password = password };
        var content = new StringContent(JsonSerializer.Serialize(payload), Encoding.UTF8, "application/json");
        var res = await _http.PostAsync($"{_baseUrl}/api/auth/login", content);
        if (!res.IsSuccessStatusCode)
        {
            var txt = await res.Content.ReadAsStringAsync();
            throw new Exception(txt);
        }

        var j = JsonDocument.Parse(await res.Content.ReadAsStringAsync());
        return j.RootElement.GetProperty("token").GetString()!;
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

}
