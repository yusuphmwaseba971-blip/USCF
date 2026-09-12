using System.Net.Http.Headers;
using System.Net.Http.Json;
using System.Text.Json;
using Plugin.Firebase.AppCheck;

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
            return new("USCF Assistance needs an internet connection for a live answer. You can continue using CCT-USCF normally.");

        try
        {
            var apiKey = GetFirebaseApiKey();
            if (string.IsNullOrWhiteSpace(apiKey))
                return new("USCF Assistance is not configured for this build. You can continue using CCT-USCF normally.");

            using var request = new HttpRequestMessage(
                HttpMethod.Post,
                $"https://firebasevertexai.googleapis.com/v1beta/projects/{ProjectId}/locations/us-central1/publishers/google/models/{Model}:generateContent");
            request.Headers.TryAddWithoutValidation("x-goog-api-key", apiKey);
            request.Headers.Authorization = new AuthenticationHeaderValue("Bearer", await _auth.GetCurrentFirebaseIdTokenAsync());
            request.Headers.TryAddWithoutValidation(
                "X-Firebase-AppCheck", await CrossFirebaseAppCheck.GetTokenAsync());
            request.Content = JsonContent.Create(new
            {
                contents = new[] { new { role = "user", parts = new[] { new { text = prompt } } } },
                generationConfig = new { temperature = 0.3, maxOutputTokens = 512 }
            });

            using var response = await _http.SendAsync(request, cancellationToken);
            var responseBody = await response.Content.ReadAsStringAsync(cancellationToken);
            LogDiagnostic($"status={(int)response.StatusCode} reason={response.ReasonPhrase} body={Sanitize(responseBody)}");
            if (!response.IsSuccessStatusCode)
                return new(response.StatusCode == System.Net.HttpStatusCode.Unauthorized
                    ? "Please sign in again to use USCF Assistance."
                    : "USCF Assistance is temporarily unavailable. Please try again.");

            using var document = JsonDocument.Parse(responseBody);
            var text = document.RootElement
                .GetProperty("candidates")[0]
                .GetProperty("content")
                .GetProperty("parts")[0]
                .GetProperty("text")
                .GetString();
            return string.IsNullOrWhiteSpace(text)
                ? new("USCF Assistance did not return an answer. Please try again.")
                : new(text.Trim());
        }
        catch (Exception ex) when (ex is HttpRequestException or TaskCanceledException or JsonException or InvalidOperationException)
        {
            LogDiagnostic($"exceptionType={ex.GetType().FullName} message={ex.Message}");
            return new("USCF Assistance is temporarily unavailable. Please try again.");
        }
    }

    private static void LogDiagnostic(string message)
    {
        System.Diagnostics.Debug.WriteLine($"[USCF_ASSISTANCE_AI] {message}");
#if ANDROID
        Android.Util.Log.Error("USCF_ASSISTANCE_AI", message);
#endif
    }

    private static string Sanitize(string body) =>
        body.Length > 800 ? body[..800] : body;

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
