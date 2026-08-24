using System.Net.Http.Headers;
using System.Text;
using System.Text.Json;
using CCT_USCF.Models;

namespace CCT_USCF.Services
{
    public class CommunityService
    {
        private readonly HttpClient _http;
        private readonly string _baseUrl;

        public CommunityService(HttpClient http)
        {
            _http = http;
            _baseUrl = http.BaseAddress?.ToString().TrimEnd('/') ?? ApiConfig.BaseUrl;
        }

        public async Task<PrayerRequestDto?> CreatePrayerRequestAsync(string title, string description)
        {
            var token = await TokenStorage.GetTokenAsync();
            if (string.IsNullOrEmpty(token)) throw new Exception("Not authenticated");

            var payload = new { Title = title, Description = description };
            var content = new StringContent(JsonSerializer.Serialize(payload), Encoding.UTF8, "application/json");

            using var req = new HttpRequestMessage(HttpMethod.Post, $"{_baseUrl}/api/prayer") { Content = content };
            req.Headers.Authorization = new AuthenticationHeaderValue("Bearer", token);

            using var res = await _http.SendAsync(req);
            var body = await res.Content.ReadAsStringAsync();
            if (!res.IsSuccessStatusCode)
            {
                throw new Exception($"Failed to create prayer request: {(int)res.StatusCode} - {body}");
            }

            var dto = JsonSerializer.Deserialize<PrayerRequestDto>(body, new JsonSerializerOptions { PropertyNameCaseInsensitive = true });
            return dto;
        }

        public async Task<List<PrayerRequestDto>> GetAllPrayerRequestsAsync()
        {
            using var res = await _http.GetAsync($"{_baseUrl}/api/prayer");
            if (!res.IsSuccessStatusCode) return new List<PrayerRequestDto>();
            var json = await res.Content.ReadAsStringAsync();
            return JsonSerializer.Deserialize<List<PrayerRequestDto>>(json, new JsonSerializerOptions { PropertyNameCaseInsensitive = true }) ?? new List<PrayerRequestDto>();
        }

        public async Task<List<PrayerRequestDto>> GetMyPrayerRequestsAsync()
        {
            var token = await TokenStorage.GetTokenAsync();
            if (string.IsNullOrEmpty(token)) return new List<PrayerRequestDto>();
            using var req = new HttpRequestMessage(HttpMethod.Get, $"{_baseUrl}/api/prayer/mine");
            req.Headers.Authorization = new AuthenticationHeaderValue("Bearer", token);
            using var res = await _http.SendAsync(req);
            if (!res.IsSuccessStatusCode)
            {
                if (res.StatusCode == System.Net.HttpStatusCode.Unauthorized)
                    throw new Exception("Unauthorized");
                return new List<PrayerRequestDto>();
            }

            var json = await res.Content.ReadAsStringAsync();
            return JsonSerializer.Deserialize<List<PrayerRequestDto>>(json, new JsonSerializerOptions { PropertyNameCaseInsensitive = true }) ?? new List<PrayerRequestDto>();
        }

        public async Task<bool> DeletePrayerRequestAsync(Guid id)
        {
            var token = await TokenStorage.GetTokenAsync();
            if (string.IsNullOrEmpty(token)) throw new Exception("Not authenticated");
            using var req = new HttpRequestMessage(HttpMethod.Delete, $"{_baseUrl}/api/prayer/{id}");
            req.Headers.Authorization = new AuthenticationHeaderValue("Bearer", token);
            using var res = await _http.SendAsync(req);
            return res.IsSuccessStatusCode;
        }
    }
}