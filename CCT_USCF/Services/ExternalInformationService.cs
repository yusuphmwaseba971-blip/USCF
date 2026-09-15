using System.Xml.Linq;

namespace CCT_USCF.Services;

public sealed class ExternalInformationService
{
    private readonly HttpClient _http;

    public ExternalInformationService(HttpClient http)
    {
        _http = http;
        _http.Timeout = TimeSpan.FromSeconds(12);
        _http.DefaultRequestHeaders.UserAgent.ParseAdd("CCT-USCF/1.0");
    }

    public async Task<string> SearchAsync(
        string question,
        CancellationToken cancellationToken = default)
    {
        var query = question.Contains("tcu", StringComparison.OrdinalIgnoreCase)
            ? $"{question} site:tcu.go.tz"
            : question;
        var uri = new Uri(
            $"https://www.bing.com/search?format=rss&q={Uri.EscapeDataString(query)}");

        try
        {
            using var response = await _http.GetAsync(uri, cancellationToken);
            if (!response.IsSuccessStatusCode)
                return "No external sources were available.";

            var xml = await response.Content.ReadAsStringAsync(cancellationToken);
            var document = XDocument.Parse(xml);
            var items = document.Descendants("item")
                .Select(item => new
                {
                    Title = item.Element("title")?.Value.Trim(),
                    Link = item.Element("link")?.Value.Trim(),
                    Description = item.Element("description")?.Value.Trim(),
                    Date = item.Element("pubDate")?.Value.Trim()
                })
                .Where(item =>
                    !string.IsNullOrWhiteSpace(item.Title) &&
                    Uri.TryCreate(item.Link, UriKind.Absolute, out _))
                .Take(5)
                .ToList();

            return items.Count == 0
                ? "No external sources were available."
                : string.Join(
                    Environment.NewLine,
                    items.Select((item, index) =>
                        $"{index + 1}. {item.Title}{Environment.NewLine}" +
                        $"Source: {item.Link}{Environment.NewLine}" +
                        $"Published: {item.Date ?? "date unavailable"}{Environment.NewLine}" +
                        $"Summary: {item.Description ?? "summary unavailable"}"));
        }
        catch (OperationCanceledException)
        {
            throw;
        }
        catch (HttpRequestException ex)
        {
            System.Diagnostics.Debug.WriteLine(
                $"[CCT-USCF-EXTERNAL] search_failed {ex.GetType().Name}");
            return "No external sources were available.";
        }
        catch (InvalidOperationException ex)
        {
            System.Diagnostics.Debug.WriteLine(
                $"[CCT-USCF-EXTERNAL] response_invalid {ex.GetType().Name}");
            return "No external sources were available.";
        }
    }
}
