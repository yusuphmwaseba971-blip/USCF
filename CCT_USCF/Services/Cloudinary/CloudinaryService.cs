using System.Net.Http.Headers;
using System.Text.Json;

namespace CCT_USCF.Services.Cloudinary
{
    public sealed class CloudinaryService
    {
        // ============================================================
        // CLOUDINARY CONFIGURATION
        // ============================================================

        private const string CloudName =
            "mjnzgze1";

        // IMPORTANT:
        // This must be an UNSIGNED upload preset.
        //
        // Replace the value below with the exact preset name
        // you create in Cloudinary Console.
        //
        // Example:
        // cct_uscf_mobile
        //
        private const string UploadPreset =
            "REPLACE_WITH_YOUR_UPLOAD_PRESET";

        private readonly HttpClient _httpClient;

        // ============================================================
        // CONSTRUCTOR
        // ============================================================

        public CloudinaryService(
            HttpClient httpClient)
        {
            _httpClient =
                httpClient
                ?? throw new ArgumentNullException(
                    nameof(httpClient));
        }

        // ============================================================
        // UPLOAD IMAGE
        // ============================================================

        public Task<CloudinaryUploadResult>
            UploadImageAsync(
                FileResult file)
        {
            return UploadAsync(
                file,
                resourceType: "image");
        }

        // ============================================================
        // UPLOAD VIDEO
        // ============================================================

        public Task<CloudinaryUploadResult>
            UploadVideoAsync(
                FileResult file)
        {
            return UploadAsync(
                file,
                resourceType: "video");
        }

        // ============================================================
        // UPLOAD AUDIO
        //
        // IMPORTANT:
        // Cloudinary treats audio as resource_type = video.
        // ============================================================

        public Task<CloudinaryUploadResult>
            UploadAudioAsync(
                FileResult file)
        {
            return UploadAsync(
                file,
                resourceType: "video");
        }

        // ============================================================
        // GENERIC UPLOAD
        // ============================================================

        private async Task<CloudinaryUploadResult>
            UploadAsync(
                FileResult file,
                string resourceType)
        {
            if (file == null)
            {
                throw new ArgumentNullException(
                    nameof(file));
            }

            if (string.IsNullOrWhiteSpace(
                    resourceType))
            {
                throw new ArgumentException(
                    "Cloudinary resource type is required.",
                    nameof(resourceType));
            }

            if (string.Equals(
                    UploadPreset,
                    "REPLACE_WITH_YOUR_UPLOAD_PRESET",
                    StringComparison.Ordinal))
            {
                throw new InvalidOperationException(
                    "Cloudinary upload preset has not been configured.");
            }

            if (string.IsNullOrWhiteSpace(
                    CloudName))
            {
                throw new InvalidOperationException(
                    "Cloudinary cloud name is not configured.");
            }

            if (file == null)
            {
                throw new ArgumentNullException(
                    nameof(file));
            }

            // --------------------------------------------------------
            // Validate selected resource type.
            // --------------------------------------------------------

            var normalizedResourceType =
                resourceType.Trim().ToLowerInvariant();

            if (normalizedResourceType != "image" &&
                normalizedResourceType != "video")
            {
                throw new ArgumentException(
                    "Cloudinary resource type must be image or video.",
                    nameof(resourceType));
            }

            // --------------------------------------------------------
            // Open the selected file.
            // --------------------------------------------------------

            await using var stream =
                await file.OpenReadAsync();

            if (stream == null)
            {
                throw new InvalidOperationException(
                    "Unable to open the selected media file.");
            }

            // --------------------------------------------------------
            // Cloudinary REST upload endpoint.
            //
            // Images:
            // /image/upload
            //
            // Videos and audio:
            // /video/upload
            // --------------------------------------------------------

            var uploadUrl =
                $"https://api.cloudinary.com/v1_1/" +
                $"{CloudName}/" +
                $"{normalizedResourceType}/upload";

            using var form =
                new MultipartFormDataContent();

            // --------------------------------------------------------
            // File content.
            // --------------------------------------------------------

            using var fileContent =
                new StreamContent(stream);

            fileContent.Headers.ContentType =
                new MediaTypeHeaderValue(
                    GetContentType(file.FileName));

            form.Add(
                fileContent,
                "file",
                file.FileName);

            // --------------------------------------------------------
            // UNSIGNED UPLOAD PRESET
            // --------------------------------------------------------

            form.Add(
                new StringContent(
                    UploadPreset),
                "upload_preset");

            // --------------------------------------------------------
            // Send upload request.
            // --------------------------------------------------------

            System.Diagnostics.Debug.WriteLine(
                "================================================");

            System.Diagnostics.Debug.WriteLine(
                "[CLOUDINARY] UPLOAD START");

            System.Diagnostics.Debug.WriteLine(
                $"CloudName={CloudName}");

            System.Diagnostics.Debug.WriteLine(
                $"ResourceType={normalizedResourceType}");

            System.Diagnostics.Debug.WriteLine(
                $"FileName={file.FileName}");

            System.Diagnostics.Debug.WriteLine(
                $"UploadUrl={uploadUrl}");

            System.Diagnostics.Debug.WriteLine(
                "================================================");

            using var response =
                await _httpClient.PostAsync(
                    uploadUrl,
                    form);

            var rawJson =
                await response.Content.ReadAsStringAsync();

            if (!response.IsSuccessStatusCode)
            {
                System.Diagnostics.Debug.WriteLine(
                    "[CLOUDINARY] UPLOAD FAILED");

                System.Diagnostics.Debug.WriteLine(
                    $"StatusCode={(int)response.StatusCode}");

                System.Diagnostics.Debug.WriteLine(
                    $"Response={rawJson}");

                throw new InvalidOperationException(
                    "Cloudinary upload failed: " +
                    $"{(int)response.StatusCode} " +
                    $"{rawJson}");
            }

            if (string.IsNullOrWhiteSpace(rawJson))
            {
                throw new InvalidOperationException(
                    "Cloudinary returned an empty upload response.");
            }

            // --------------------------------------------------------
            // Parse Cloudinary response.
            // --------------------------------------------------------

            CloudinaryUploadResponse? responseModel;

            try
            {
                responseModel =
                    JsonSerializer.Deserialize<
                        CloudinaryUploadResponse>(
                        rawJson,
                        new JsonSerializerOptions
                        {
                            PropertyNameCaseInsensitive = true
                        });
            }
            catch (Exception ex)
            {
                throw new InvalidOperationException(
                    "Cloudinary returned an invalid upload response.",
                    ex);
            }

            if (responseModel == null)
            {
                throw new InvalidOperationException(
                    "Cloudinary upload response could not be parsed.");
            }

            if (string.IsNullOrWhiteSpace(
                    responseModel.SecureUrl))
            {
                throw new InvalidOperationException(
                    "Cloudinary did not return a secure media URL.");
            }

            // --------------------------------------------------------
            // Build application result.
            // --------------------------------------------------------

            var result =
                new CloudinaryUploadResult
                {
                    SecureUrl =
                        responseModel.SecureUrl,

                    PublicId =
                        responseModel.PublicId
                        ?? string.Empty,

                    ResourceType =
                        responseModel.ResourceType
                        ?? normalizedResourceType,

                    Format =
                        responseModel.Format
                        ?? string.Empty,

                    OriginalFilename =
                        responseModel.OriginalFilename
                        ?? file.FileName,

                    Bytes =
                        responseModel.Bytes,

                    Duration =
                        responseModel.Duration,

                    Width =
                        responseModel.Width,

                    Height =
                        responseModel.Height,

                    CreatedAt =
                        responseModel.CreatedAt
                };

            System.Diagnostics.Debug.WriteLine(
                "================================================");

            System.Diagnostics.Debug.WriteLine(
                "[CLOUDINARY] UPLOAD SUCCESS");

            System.Diagnostics.Debug.WriteLine(
                $"SecureUrl={result.SecureUrl}");

            System.Diagnostics.Debug.WriteLine(
                $"PublicId={result.PublicId}");

            System.Diagnostics.Debug.WriteLine(
                $"ResourceType={result.ResourceType}");

            System.Diagnostics.Debug.WriteLine(
                $"Format={result.Format}");

            System.Diagnostics.Debug.WriteLine(
                $"Bytes={result.Bytes}");

            System.Diagnostics.Debug.WriteLine(
                $"Duration={result.Duration}");

            System.Diagnostics.Debug.WriteLine(
                "================================================");

            return result;
        }

        // ============================================================
        // CONTENT TYPE HELPER
        // ============================================================

        private static string
            GetContentType(
                string? fileName)
        {
            if (string.IsNullOrWhiteSpace(fileName))
            {
                return "application/octet-stream";
            }

            var extension =
                Path.GetExtension(
                    fileName)
                .ToLowerInvariant();

            return extension switch
            {
                ".jpg" or ".jpeg" =>
                    "image/jpeg",

                ".png" =>
                    "image/png",

                ".webp" =>
                    "image/webp",

                ".gif" =>
                    "image/gif",

                ".heic" =>
                    "image/heic",

                ".mp4" =>
                    "video/mp4",

                ".mov" =>
                    "video/quicktime",

                ".m4v" =>
                    "video/x-m4v",

                ".webm" =>
                    "video/webm",

                ".mp3" =>
                    "audio/mpeg",

                ".wav" =>
                    "audio/wav",

                ".m4a" =>
                    "audio/mp4",

                ".aac" =>
                    "audio/aac",

                _ =>
                    "application/octet-stream"
            };
        }
    }

    // ================================================================
    // APPLICATION UPLOAD RESULT
    // ================================================================

    public sealed class CloudinaryUploadResult
    {
        public string SecureUrl { get; set; } =
            string.Empty;

        public string PublicId { get; set; } =
            string.Empty;

        public string ResourceType { get; set; } =
            string.Empty;

        public string Format { get; set; } =
            string.Empty;

        public string OriginalFilename { get; set; } =
            string.Empty;

        public long Bytes { get; set; }

        public double Duration { get; set; }

        public int Width { get; set; }

        public int Height { get; set; }

        public string? CreatedAt { get; set; }
    }

    // ================================================================
    // CLOUDINARY API RESPONSE
    // ================================================================

    internal sealed class CloudinaryUploadResponse
    {
        public string? SecureUrl { get; set; }

        public string? PublicId { get; set; }

        public string? ResourceType { get; set; }

        public string? Format { get; set; }

        public string? OriginalFilename { get; set; }

        public long Bytes { get; set; }

        public double Duration { get; set; }

        public int Width { get; set; }

        public int Height { get; set; }

        public string? CreatedAt { get; set; }
    }
}