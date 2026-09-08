namespace CCT_USCF.Models;

public sealed class AnnouncementResponse
{
    public List<Announcement> Announcements { get; set; } = new();
}

public sealed class AnnouncementService
{
    private readonly HttpClient _httpClient;

    public AnnouncementService(HttpClient httpClient)
    {
        _httpClient = httpClient;
    }

    public async Task<List<Announcement>> GetAnnouncementsAsync(
        CancellationToken cancellationToken = default)
    {
        using var response = await _httpClient.GetAsync(
            "announcements",
            cancellationToken);

        response.EnsureSuccessStatusCode();

        var result =
            await response.Content.ReadFromJsonAsync<AnnouncementResponse>(
                cancellationToken: cancellationToken);

        return result?.Announcements ?? new List<Announcement>();
    }
}
