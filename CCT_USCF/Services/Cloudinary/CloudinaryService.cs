
using System.Net.Http.Headers;
using System.Text.Json;
using System.Text.Json.Serialization;
using Microsoft.Maui.Storage;

namespace CCT_USCF.Services.Cloudinary
{
    public sealed class CloudinaryService
    {
        // ============================================================
        // CLOUDINARY CONFIGURATION
        // ============================================================

        private const string CloudName =
            "mjnzgze1";

        // This is the UNSIGNED upload preset created
        // in the Cloudinary Console.
        private const string UploadPreset =
            "cct_uscf_mobile";

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
                "image");
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
                "video");
        }

        // ============================================================
        // UPLOAD AUDIO
        //
        // Cloudinary uses the "video" resource type
        // for audio uploads.
        // ============================================================

        public Task<CloudinaryUploadResult>
            UploadAudioAsync(
                FileResult file)
        {
            return UploadAsync(
                file,
                "video");
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

            var normalizedResourceType =
                resourceType?
                    .Trim()
                    .ToLowerInvariant()
                ?? string.Empty;

            if (normalizedResourceType != "image" &&
                normalizedResourceType != "video")
            {
                throw new ArgumentException(
                    "Cloudinary resource type must be image or video.",
                    nameof(resourceType));
            }

            if (string.IsNullOrWhiteSpace(
                    CloudName))
            {
                throw new InvalidOperationException(
                    "Cloudinary cloud name is not configured.");
            }

            if (string.IsNullOrWhiteSpace(
                    UploadPreset))
            {
                throw new InvalidOperationException(
                    "Cloudinary upload preset is not configured.");
            }

            // --------------------------------------------------------
            // OPEN FILE
            // --------------------------------------------------------

            await using var stream =
                await file.OpenReadAsync();

            if (stream == null)
            {
                throw new InvalidOperationException(
                    "Unable to open the selected media file.");
            }

            // --------------------------------------------------------
            // CLOUDINARY UPLOAD ENDPOINT
            //
            // image:
            // https://api.cloudinary.com/v1_1/<cloud>/image/upload
            //
            // video/audio:
            // https://api.cloudinary.com/v1_1/<cloud>/video/upload
            // --------------------------------------------------------

            var uploadUrl =
                $"https://api.cloudinary.com/v1_1/" +
                $"{CloudName}/" +
                $"{normalizedResourceType}/upload";

            using var form =
                new MultipartFormDataContent();

            // --------------------------------------------------------
            // FILE
            // --------------------------------------------------------

            using var fileContent =
                new StreamContent(stream);

            fileContent.Headers.ContentType =
                new MediaTypeHeaderValue(
                    GetContentType(
                        file.FileName));

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
            // DEBUG
            // --------------------------------------------------------

            System.Diagnostics.Debug.WriteLine(
                "================================================");

            System.Diagnostics.Debug.WriteLine(
                "[CLOUDINARY] UPLOAD START");

            System.Diagnostics.Debug.WriteLine(
                $"CloudName={CloudName}");

            System.Diagnostics.Debug.WriteLine(
                $"UploadPreset={UploadPreset}");

            System.Diagnostics.Debug.WriteLine(
                $"ResourceType={normalizedResourceType}");

            System.Diagnostics.Debug.WriteLine(
                $"FileName={file.FileName}");

            System.Diagnostics.Debug.WriteLine(
                $"UploadUrl={uploadUrl}");

            System.Diagnostics.Debug.WriteLine(
                "================================================");

            // --------------------------------------------------------
            // SEND
            // --------------------------------------------------------

            using var response =
                await _httpClient.PostAsync(
                    uploadUrl,
                    form);

            var rawJson =
                await response.Content
                    .ReadAsStringAsync();

            // --------------------------------------------------------
            // ERROR RESPONSE
            // --------------------------------------------------------

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

            if (string.IsNullOrWhiteSpace(
                    rawJson))
            {
                throw new InvalidOperationException(
                    "Cloudinary returned an empty upload response.");
            }

            // --------------------------------------------------------
            // DESERIALIZE CLOUDINARY RESPONSE
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
                            PropertyNameCaseInsensitive =
                                true
                        });
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine(
                    $"[CLOUDINARY] Response parsing failed: {ex}");

                throw new InvalidOperationException(
                    "Cloudinary returned an invalid upload response.",
                    ex);
            }

            if (responseModel == null)
            {
                throw new InvalidOperationException(
                    "Cloudinary upload response could not be parsed.");
            }

            // --------------------------------------------------------
            // SECURE URL IS REQUIRED
            // --------------------------------------------------------

            if (string.IsNullOrWhiteSpace(
                    responseModel.SecureUrl))
            {
                System.Diagnostics.Debug.WriteLine(
                    $"[CLOUDINARY] Raw response: {rawJson}");

                throw new InvalidOperationException(
                    "Cloudinary did not return a secure media URL.");
            }

            // --------------------------------------------------------
            // BUILD APPLICATION RESULT
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

            // --------------------------------------------------------
            // SUCCESS LOG
            // --------------------------------------------------------

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
                $"Width={result.Width}");

            System.Diagnostics.Debug.WriteLine(
                $"Height={result.Height}");

            System.Diagnostics.Debug.WriteLine(
                "================================================");

            return result;
        }

        // ============================================================
        // CONTENT TYPE
        // ============================================================

        private static string
            GetContentType(
                string? fileName)
        {
            if (string.IsNullOrWhiteSpace(
                    fileName))
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

                ".ogg" =>
                    "audio/ogg",

                _ =>
                    "application/octet-stream"
            };
        }
    }

    // ================================================================
    // APPLICATION RESULT
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
    //
    // JsonPropertyName is important because Cloudinary returns
    // snake_case property names.
    // ================================================================

    internal sealed class CloudinaryUploadResponse
    {
        [JsonPropertyName("secure_url")]
        public string? SecureUrl { get; set; }

        [JsonPropertyName("public_id")]
        public string? PublicId { get; set; }

        [JsonPropertyName("resource_type")]
        public string? ResourceType { get; set; }

        [JsonPropertyName("format")]
        public string? Format { get; set; }

        [JsonPropertyName("original_filename")]
        public string? OriginalFilename { get; set; }

        [JsonPropertyName("bytes")]
        public long Bytes { get; set; }

        [JsonPropertyName("duration")]
        public double Duration { get; set; }

        [JsonPropertyName("width")]
        public int Width { get; set; }

        [JsonPropertyName("height")]
        public int Height { get; set; }

        [JsonPropertyName("created_at")]
        public string? CreatedAt { get; set; }
    }
}
