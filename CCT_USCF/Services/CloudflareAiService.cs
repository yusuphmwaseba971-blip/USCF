using System.Diagnostics;
using System.Net;
using System.Net.Http.Json;
using System.Text.Json;
using System.Text.Json.Serialization;

namespace CCT_USCF.Services;

public sealed class CloudflareAiService
{
    private const string Endpoint =
        "https://cct-uscf-ai.yusuphmwaseba971.workers.dev/api/ai/chat";

    private readonly HttpClient _http;

    public CloudflareAiService(HttpClient http)
    {
        _http = http;
        _http.Timeout = TimeSpan.FromSeconds(45);
    }

    public async Task<CctAssistantReply> GenerateAsync(
        string prompt,
        CancellationToken cancellationToken)
    {
        if (Connectivity.Current.NetworkAccess != NetworkAccess.Internet)
            return new("USCF Assistance needs an internet connection. Please try again when you are online.");

        var started = Stopwatch.GetTimestamp();
        Log("request_started");

        try
        {
            using var response = await _http.PostAsJsonAsync(
                Endpoint,
                new ChatRequest(prompt),
                cancellationToken);
            var body = await response.Content.ReadAsStringAsync(cancellationToken);
            var elapsedMs = Stopwatch.GetElapsedTime(started).TotalMilliseconds;
            Log($"request_completed status={(int)response.StatusCode} elapsedMs={elapsedMs:0}");

            if (!response.IsSuccessStatusCode)
                return new(MapFailure(response.StatusCode));

            ChatResponse? result;
            try
            {
                result = JsonSerializer.Deserialize<ChatResponse>(body);
            }
            catch (JsonException ex)
            {
                Log($"response_parse_failed exceptionType={ex.GetType().Name}");
                return new("USCF Assistance returned an invalid answer. Please try again.");
            }

            if (result is not { Success: true } ||
                string.IsNullOrWhiteSpace(result.Response))
            {
                Log("response_parse_failed reason=missing_success_or_response");
                return new("USCF Assistance did not return an answer. Please try again.");
            }

            Log("response_parse_success");
            return new(result.Response.Trim());
        }
        catch (OperationCanceledException) when (!cancellationToken.IsCancellationRequested)
        {
            Log("request_failed exceptionType=TimeoutException");
            return new("USCF Assistance took too long to respond. Please try again.");
        }
        catch (OperationCanceledException)
        {
            Log("request_cancelled");
            return new("USCF Assistance request was cancelled.");
        }
        catch (HttpRequestException ex)
        {
            Log($"request_failed exceptionType={ex.GetType().Name} message={ex.Message}");
            return new("USCF Assistance is temporarily unavailable. Please check your connection and try again.");
        }
    }

    private static string MapFailure(HttpStatusCode statusCode) =>
        statusCode switch
        {
            HttpStatusCode.BadRequest =>
                "USCF Assistance could not understand that request. Please try again.",
            HttpStatusCode.Unauthorized or HttpStatusCode.Forbidden =>
                "USCF Assistance is not available for this session. Please try again later.",
            (HttpStatusCode)429 =>
                "USCF Assistance is busy right now. Please try again shortly.",
            >= HttpStatusCode.InternalServerError =>
                "USCF Assistance is temporarily unavailable. Please try again later.",
            _ =>
                "USCF Assistance could not complete that request. Please try again."
        };

    private static void Log(string message)
    {
        Debug.WriteLine($"[CCT-USCF-AI] {message}");
#if ANDROID
        Android.Util.Log.Error("CCT-USCF-AI", message);
#endif
    }

    private sealed record ChatRequest(
        [property: JsonPropertyName("message")] string Message);

    private sealed record ChatResponse(
        [property: JsonPropertyName("success")] bool Success,
        [property: JsonPropertyName("response")] string? Response);
}
