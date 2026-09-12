using System.Net.Http.Headers;
using System.Net.Http.Json;
using System.Text.Json;

namespace CCT_USCF.Services;

public sealed class FirebaseAiLogicService
{
    private const string ProjectId = "cct-uscf";
    private const string Model = "gemini-2.0-flash";
    private readonly HttpClient _http;
    private readonly AuthService _auth;

    public FirebaseAiLogicService(HttpClient http, AuthService auth) => (_http, _auth) = (http, auth);

    public async Task<CctAssistantReply> GenerateAsync(string prompt, CancellationToken cancellationToken)
    {
        if (Connectivity.Current.NetworkAccess != NetworkAccess.Internet)
            return new("CCT Assistant needs an internet connection for a live answer. You can continue using CCT-USCF normally.");

        try
        {
            var apiKey = GetFirebaseApiKey();
            if (string.IsNullOrWhiteSpace(apiKey))
                return new("CCT Assistant is not configured for this build. You can continue using CCT-USCF normally.");

            using var request = new HttpRequestMessage(
                HttpMethod.Post,
                $"https://firebasevertexai.googleapis.com/v1beta/projects/{ProjectId}/locations/us-central1/publishers/google/models/{Model}:generateContent?key={Uri.EscapeDataString(apiKey)}");
            request.Headers.Authorization = new AuthenticationHeaderValue("Bearer", await _auth.GetCurrentFirebaseIdTokenAsync());
            request.Content = JsonContent.Create(new
            {
                contents = new[] { new { role = "user", parts = new[] { new { text = prompt } } } },
                generationConfig = new { temperature = 0.3, maxOutputTokens = 512 }
            });

            using var response = await _http.SendAsync(request, cancellationToken);
            if (!response.IsSuccessStatusCode)
                return new("CCT Assistant is temporarily unavailable. You can continue using CCT-USCF normally.");

            using var document = JsonDocument.Parse(await response.Content.ReadAsStringAsync(cancellationToken));
            var text = document.RootElement
                .GetProperty("candidates")[0]
                .GetProperty("content")
                .GetProperty("parts")[0]
                .GetProperty("text")
                .GetString();
            return string.IsNullOrWhiteSpace(text)
                ? new("CCT Assistant did not return an answer. Please try again.")
                : new(text.Trim());
        }
        catch (Exception ex) when (ex is HttpRequestException or TaskCanceledException or JsonException or InvalidOperationException)
        {
            System.Diagnostics.Debug.WriteLine($"[CCT_ASSISTANT_AI_ERROR] {ex}");
            return new("CCT Assistant is temporarily unavailable. You can continue using CCT-USCF normally.");
        }
    }

    private static string? GetFirebaseApiKey()
    {
#if ANDROID
        var context = Android.App.Application.Context;
        var resourceId = context.Resources?.GetIdentifier(
            "google_api_key", "string", context.PackageName) ?? 0;
        return resourceId > 0 ? context.GetString(resourceId) : null;
#else
        return null;
#endif
    }
}
