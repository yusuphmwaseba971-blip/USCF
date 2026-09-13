using CCT_USCF.Pages;

namespace CCT_USCF.Services;

public sealed class MediaViewerService
{
    public Task OpenMediaAsync(
        string? url,
        string? mediaType = null,
        string? fileName = null)
    {
        if (!TryValidateMediaUrl(url, out var validatedUrl))
            return ShowInvalidMediaAsync();

        var resolvedType = DetectMediaType(validatedUrl, mediaType, fileName);
        var route =
            $"{nameof(MediaViewerPage)}?url={Uri.EscapeDataString(validatedUrl)}" +
            $"&mediaType={Uri.EscapeDataString(resolvedType)}" +
            $"&fileName={Uri.EscapeDataString(fileName ?? string.Empty)}";

        return Shell.Current.GoToAsync(route);
    }

    public static bool TryValidateMediaUrl(string? value, out string validatedUrl)
    {
        validatedUrl = string.Empty;
        if (!Uri.TryCreate(value?.Trim(), UriKind.Absolute, out var uri) ||
            uri.Scheme != Uri.UriSchemeHttps ||
            string.IsNullOrWhiteSpace(uri.Host))
            return false;

        validatedUrl = uri.AbsoluteUri;
        return true;
    }

    public static string DetectMediaType(
        string url,
        string? explicitType = null,
        string? fileName = null)
    {
        var type = explicitType?.Trim().ToLowerInvariant();
        if (!string.IsNullOrWhiteSpace(type))
        {
            if (type.StartsWith("image/", StringComparison.Ordinal)) return "image";
            if (type.StartsWith("video/", StringComparison.Ordinal)) return "video";
            if (type.StartsWith("audio/", StringComparison.Ordinal)) return "audio";
            if (type.Equals("application/pdf", StringComparison.Ordinal)) return "pdf";
        }

        var candidate = fileName;
        if (string.IsNullOrWhiteSpace(candidate))
            candidate = new Uri(url).AbsolutePath;

        var extension = Path.GetExtension(candidate).ToLowerInvariant();
        return extension switch
        {
            ".jpg" or ".jpeg" or ".png" or ".webp" or ".gif" or ".bmp" => "image",
            ".mp4" or ".webm" or ".mov" or ".m4v" => "video",
            ".mp3" or ".m4a" or ".aac" or ".wav" or ".ogg" => "audio",
            ".pdf" => "pdf",
            _ => "unsupported"
        };
    }

    private static async Task ShowInvalidMediaAsync()
    {
        if (Shell.Current?.CurrentPage is ContentPage page)
            await page.DisplayAlert("Media unavailable", "This media link is invalid or cannot be opened safely.", "OK");
    }
}
