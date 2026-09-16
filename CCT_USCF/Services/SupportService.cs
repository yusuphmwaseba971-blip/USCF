using System.Net.Http.Headers;
using System.Net.Http.Json;
using System.Text.Json;

namespace CCT_USCF.Services;

public static class SupportConfig
{
    public static string SupportEmail =>
        Environment.GetEnvironmentVariable("CCT_USCF_SUPPORT_EMAIL") ?? string.Empty;

    public static string SupportUrl =>
        Environment.GetEnvironmentVariable("CCT_USCF_SUPPORT_URL") ?? string.Empty;
}

public sealed class SupportService
{
    private readonly AuthService _authService;
    private readonly HttpClient _httpClient;

    public SupportService(AuthService authService, HttpClient httpClient)
    {
        _authService = authService ?? throw new ArgumentNullException(nameof(authService));
        _httpClient = httpClient ?? throw new ArgumentNullException(nameof(httpClient));
    }

    public async Task SubmitFeedbackAsync(
        string category,
        string subject,
        string message)
    {
        if (string.IsNullOrWhiteSpace(category))
            throw new InvalidOperationException("Please choose a support category.");

        if (string.IsNullOrWhiteSpace(subject))
            throw new InvalidOperationException("Please add a subject.");

        if (string.IsNullOrWhiteSpace(message))
            throw new InvalidOperationException("Please add a message.");

        var user = MauiProgram.CurrentUser ?? await _authService.GetCurrentUserAsync();
        if (user == null)
            throw new InvalidOperationException("You must be signed in to send feedback.");

        var token = await _authService.GetCurrentFirebaseIdTokenAsync(forceRefresh: true);
        var endpoint = new Uri(_httpClient.BaseAddress!, "/api/support/feedback");

        using var request = new HttpRequestMessage(HttpMethod.Post, endpoint);
        request.Headers.Authorization = new AuthenticationHeaderValue("Bearer", token);
        request.Headers.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));

        var payload = new
        {
            category = category.Trim(),
            subject = subject.Trim(),
            message = message.Trim(),
            userEmail = user.Email,
            userId = _authService.GetCurrentFirebaseUid(),
            appVersion = AppInfo.VersionString,
            platform = "Android",
            userName = user.FullName
        };

        request.Content = JsonContent.Create(payload);
        using var response = await _httpClient.SendAsync(request);
        var responseText = await response.Content.ReadAsStringAsync();

        if (!response.IsSuccessStatusCode)
        {
            var errorMessage = "Support request could not be sent right now. Please try again later.";
            if (!string.IsNullOrWhiteSpace(responseText))
            {
                try
                {
                    using var document = JsonDocument.Parse(responseText);
                    if (document.RootElement.TryGetProperty("error", out var errorElement) &&
                        !string.IsNullOrWhiteSpace(errorElement.GetString()))
                    {
                        errorMessage = errorElement.GetString()!;
                    }
                }
                catch
                {
                    // Ignore JSON parsing issues for a safe fallback.
                }
            }

            throw new InvalidOperationException(errorMessage);
        }

        if (!string.IsNullOrWhiteSpace(responseText))
        {
            try
            {
                using var document = JsonDocument.Parse(responseText);
                if (document.RootElement.TryGetProperty("success", out var successElement) &&
                    successElement.ValueKind == JsonValueKind.False)
                {
                    throw new InvalidOperationException(
                        document.RootElement.TryGetProperty("error", out var errorElement)
                            && !string.IsNullOrWhiteSpace(errorElement.GetString())
                            ? errorElement.GetString()!
                            : "Support request could not be sent right now.");
                }
            }
            catch (JsonException)
            {
                // The server may return non-JSON data for non-error conditions; ignore and treat as success.
            }
        }
    }
}
