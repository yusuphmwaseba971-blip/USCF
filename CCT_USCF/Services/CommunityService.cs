using System.Text.Json;
using CCT_USCF.Models;
using CCT_USCF.Services.Appwrite;

namespace CCT_USCF.Services
{
    public class CommunityService
    {
        private const string CommunityMessagesCollectionId = "community_messages";
        private const string PrayerRequestsCollectionId = "cct_prayers";
        private const string BiblePostsCollectionId = "cct_posts";

        private readonly AuthService _authService;
        private readonly AppwriteService _appwriteService;

        public CommunityService(AuthService authService, AppwriteService appwriteService)
        {
            _authService = authService ?? throw new ArgumentNullException(nameof(authService));
            _appwriteService = appwriteService ?? throw new ArgumentNullException(nameof(appwriteService));
        }

        public string GetCommunityMessagesChannel()
        {
            return $"databases.{AppwriteConfig.DatabaseId}.collections.{CommunityMessagesCollectionId}.documents";
        }

        public async Task<CommunityMessage> CreateCommunityMessageAsync(
            string communityId,
            string content,
            string messageType = "text",
            string? branchId = null,
            string? regionId = null,
            string? districtId = null)
        {
            if (string.IsNullOrWhiteSpace(communityId))
                throw new ArgumentException("A community id is required.", nameof(communityId));

            var trimmed = content?.Trim() ?? string.Empty;
            if (string.IsNullOrWhiteSpace(trimmed))
                throw new ArgumentException("Message content is required.", nameof(content));

            var currentUser = await _authService.GetCurrentUserAsync();
            if (currentUser == null)
                throw new InvalidOperationException("You must be signed in to send a community message.");

            var senderUid = _authService.GetCurrentFirebaseUid() ?? currentUser.Email ?? currentUser.Id.ToString();
            var senderName = !string.IsNullOrWhiteSpace(currentUser.FullName)
                ? currentUser.FullName
                : currentUser.Username;

            var messageId = Guid.NewGuid().ToString("N");
            var payload = new Dictionary<string, object?>
            {
                ["message_id"] = messageId,
                ["sender_uid"] = senderUid,
                ["sender_name"] = string.IsNullOrWhiteSpace(senderName) ? "Community member" : senderName,
                ["content"] = trimmed,
                ["community_id"] = communityId,
                ["branch_id"] = string.IsNullOrWhiteSpace(branchId) ? null : branchId,
                ["region_id"] = string.IsNullOrWhiteSpace(regionId) ? null : regionId,
                ["district_id"] = string.IsNullOrWhiteSpace(districtId) ? null : districtId,
                ["message_type"] = string.IsNullOrWhiteSpace(messageType) ? "text" : messageType,
                ["created_at"] = DateTime.UtcNow.ToString("O")
            };

            try
            {
                var document = await _appwriteService.Databases.CreateDocument(
                    databaseId: AppwriteConfig.DatabaseId,
                    collectionId: CommunityMessagesCollectionId,
                    documentId: messageId,
                    data: payload,
                    permissions: null,
                    parentDocumentId: null);

                return MapCommunityDocument(document);
            }
            catch (Exception ex)
            {
                throw new InvalidOperationException("Unable to send message.", ex);
            }
        }

        public async Task<List<CommunityMessage>> GetCommunityMessagesAsync(string communityId, int limit = 50)
        {
            if (string.IsNullOrWhiteSpace(communityId))
                throw new ArgumentException("A community id is required.", nameof(communityId));

            try
            {
                var queries = new List<string>
                {
                    Appwrite.Query.Equal("community_id", communityId),
                    Appwrite.Query.OrderAsc("created_at"),
                    Appwrite.Query.Limit(Math.Clamp(limit, 1, 100))
                };

                var result = await _appwriteService.Databases.ListDocuments(
                    databaseId: AppwriteConfig.DatabaseId,
                    collectionId: CommunityMessagesCollectionId,
                    queries: queries,
                    cursor: null,
                    cursorDirection: null,
                    limit: Math.Clamp(limit, 1, 100));

                return result.Documents.Select(MapCommunityDocument).OrderBy(x => x.CreatedAt).ToList();
            }
            catch (Exception ex)
            {
                throw new InvalidOperationException("Unable to load community messages.", ex);
            }
        }

        public async Task<bool> DeleteCommunityMessageAsync(string messageId)
        {
            if (string.IsNullOrWhiteSpace(messageId))
                throw new ArgumentException("A message id is required.", nameof(messageId));

            try
            {
                await _appwriteService.Databases.DeleteDocument(
                    databaseId: AppwriteConfig.DatabaseId,
                    collectionId: CommunityMessagesCollectionId,
                    documentId: messageId,
                    permissions: null);

                return true;
            }
            catch (Exception ex)
            {
                throw new InvalidOperationException("Unable to delete message.", ex);
            }
        }

        public async Task<PrayerRequestDto?> CreatePrayerRequestAsync(string title, string description)
        {
            if (string.IsNullOrWhiteSpace(title) && string.IsNullOrWhiteSpace(description))
                throw new ArgumentException("Prayer request title or description is required.", nameof(title));

            var currentUser = await _authService.GetCurrentUserAsync();
            if (currentUser == null)
                throw new InvalidOperationException("You must be signed in to submit a prayer request.");

            var documentId = Guid.NewGuid().ToString("N");
            var payload = new Dictionary<string, object?>
            {
                ["user_id"] = _authService.GetCurrentFirebaseUid() ?? currentUser.Email ?? currentUser.Id.ToString(),
                ["content"] = BuildPrayerContent(title, description),
                ["leader_id"] = null,
                ["is_private"] = false,
                ["status"] = "Open"
            };

            try
            {
                var document = await _appwriteService.Databases.CreateDocument(
                    databaseId: AppwriteConfig.DatabaseId,
                    collectionId: PrayerRequestsCollectionId,
                    documentId: documentId,
                    data: payload,
                    permissions: null,
                    parentDocumentId: null);

                return MapPrayerDocument(document);
            }
            catch (Exception ex)
            {
                throw new InvalidOperationException("Unable to create prayer request.", ex);
            }
        }

        public async Task<List<PrayerRequestDto>> GetAllPrayerRequestsAsync()
        {
            try
            {
                var result = await _appwriteService.Databases.ListDocuments(
                    databaseId: AppwriteConfig.DatabaseId,
                    collectionId: PrayerRequestsCollectionId,
                    queries: new List<string> { Appwrite.Query.OrderDesc("$createdAt") },
                    cursor: null,
                    cursorDirection: null,
                    limit: 50);

                return result.Documents.Select(MapPrayerDocument).ToList();
            }
            catch (Exception ex)
            {
                throw new InvalidOperationException("Unable to load prayer requests.", ex);
            }
        }

        public async Task<List<PrayerRequestDto>> GetMyPrayerRequestsAsync()
        {
            var currentUser = await _authService.GetCurrentUserAsync();
            if (currentUser == null)
                return new List<PrayerRequestDto>();

            var userId = _authService.GetCurrentFirebaseUid() ?? currentUser.Email ?? currentUser.Id.ToString();

            try
            {
                var result = await _appwriteService.Databases.ListDocuments(
                    databaseId: AppwriteConfig.DatabaseId,
                    collectionId: PrayerRequestsCollectionId,
                    queries: new List<string>
                    {
                        Appwrite.Query.Equal("user_id", userId),
                        Appwrite.Query.OrderDesc("$createdAt")
                    },
                    cursor: null,
                    cursorDirection: null,
                    limit: 50);

                return result.Documents.Select(MapPrayerDocument).ToList();
            }
            catch (Exception ex)
            {
                throw new InvalidOperationException("Unable to load your prayer requests.", ex);
            }
        }

        public async Task<bool> DeletePrayerRequestAsync(Guid id)
        {
            try
            {
                await _appwriteService.Databases.DeleteDocument(
                    databaseId: AppwriteConfig.DatabaseId,
                    collectionId: PrayerRequestsCollectionId,
                    documentId: id.ToString(),
                    permissions: null);

                return true;
            }
            catch (Exception ex)
            {
                throw new InvalidOperationException("Unable to delete prayer request.", ex);
            }
        }

        public async Task<List<BiblePostDto>> GetBiblePostsAsync(int limit = 50)
        {
            try
            {
                var result = await _appwriteService.Databases.ListDocuments(
                    databaseId: AppwriteConfig.DatabaseId,
                    collectionId: BiblePostsCollectionId,
                    queries: new List<string>
                    {
                        Appwrite.Query.Equal("post_type", "BibleVerse"),
                        Appwrite.Query.OrderDesc("$createdAt"),
                        Appwrite.Query.Limit(Math.Clamp(limit, 1, 100))
                    },
                    cursor: null,
                    cursorDirection: null,
                    limit: Math.Clamp(limit, 1, 100));

                return result.Documents.Select(MapBibleDocument).Where(x => x != null).Cast<BiblePostDto>().ToList();
            }
            catch (Exception ex)
            {
                throw new InvalidOperationException("Unable to load Bible posts.", ex);
            }
        }

        public async Task<BiblePostDto?> CreateBiblePostAsync(BiblePostCreateDto dto)
        {
            if (dto == null)
                throw new ArgumentNullException(nameof(dto));

            var currentUser = await _authService.GetCurrentUserAsync();
            if (currentUser == null)
                throw new InvalidOperationException("You must be signed in to publish a Bible post.");

            var payload = new Dictionary<string, object?>
            {
                ["user_id"] = _authService.GetCurrentFirebaseUid() ?? currentUser.Email ?? currentUser.Id.ToString(),
                ["post_type"] = "BibleVerse",
                ["content"] = JsonSerializer.Serialize(new
                {
                    dto.BookId,
                    dto.ChapterNumber,
                    dto.VerseStart,
                    dto.VerseEnd
                })
            };

            try
            {
                var document = await _appwriteService.Databases.CreateDocument(
                    databaseId: AppwriteConfig.DatabaseId,
                    collectionId: BiblePostsCollectionId,
                    documentId: Guid.NewGuid().ToString("N"),
                    data: payload,
                    permissions: null,
                    parentDocumentId: null);

                return MapBibleDocument(document);
            }
            catch (Exception ex)
            {
                throw new InvalidOperationException("Unable to create Bible post.", ex);
            }
        }

        public async Task<List<BiblePostDto>> GetMyBiblePostsAsync()
        {
            var currentUser = await _authService.GetCurrentUserAsync();
            if (currentUser == null)
                return new List<BiblePostDto>();

            var userId = _authService.GetCurrentFirebaseUid() ?? currentUser.Email ?? currentUser.Id.ToString();

            try
            {
                var result = await _appwriteService.Databases.ListDocuments(
                    databaseId: AppwriteConfig.DatabaseId,
                    collectionId: BiblePostsCollectionId,
                    queries: new List<string>
                    {
                        Appwrite.Query.Equal("user_id", userId),
                        Appwrite.Query.OrderDesc("$createdAt")
                    },
                    cursor: null,
                    cursorDirection: null,
                    limit: 50);

                return result.Documents.Select(MapBibleDocument).Where(x => x != null).Cast<BiblePostDto>().ToList();
            }
            catch (Exception ex)
            {
                throw new InvalidOperationException("Unable to load your Bible posts.", ex);
            }
        }

        public async Task<bool> DeleteBiblePostAsync(Guid id)
        {
            try
            {
                await _appwriteService.Databases.DeleteDocument(
                    databaseId: AppwriteConfig.DatabaseId,
                    collectionId: BiblePostsCollectionId,
                    documentId: id.ToString(),
                    permissions: null);

                return true;
            }
            catch (Exception ex)
            {
                throw new InvalidOperationException("Unable to delete Bible post.", ex);
            }
        }

        private static CommunityMessage MapCommunityDocument(global::Appwrite.Models.Document document)
        {
            var data = document.Data ?? new Dictionary<string, object?>();
            var createdAt = TryGetDateTime(data, "created_at", document.CreatedAt);

            return new CommunityMessage
            {
                Id = document.Id,
                MessageId = TryGetString(data, "message_id", document.Id),
                SenderUid = TryGetString(data, "sender_uid", string.Empty),
                SenderName = TryGetString(data, "sender_name", "Community member"),
                Content = TryGetString(data, "content", string.Empty),
                CommunityId = TryGetString(data, "community_id", string.Empty),
                BranchId = TryGetString(data, "branch_id", null),
                RegionId = TryGetString(data, "region_id", null),
                DistrictId = TryGetString(data, "district_id", null),
                MessageType = TryGetString(data, "message_type", "text"),
                CreatedAt = createdAt,
                UpdatedAt = TryGetNullableDateTime(data, "$updatedAt")
            };
        }

        private static PrayerRequestDto MapPrayerDocument(global::Appwrite.Models.Document document)
        {
            var data = document.Data ?? new Dictionary<string, object?>();
            var content = TryGetString(data, "content", string.Empty);
            var title = string.Empty;
            var description = string.Empty;

            if (!string.IsNullOrWhiteSpace(content))
            {
                var lines = content.Split(new[] { "\r\n", "\n" }, StringSplitOptions.RemoveEmptyEntries);
                if (lines.Length > 0)
                {
                    title = lines[0].Trim();
                    description = string.Join(Environment.NewLine, lines.Skip(1)).Trim();
                }
                else
                {
                    title = content.Trim();
                }
            }

            return new PrayerRequestDto
            {
                Id = Guid.TryParse(document.Id, out var id) ? id : Guid.NewGuid(),
                UserId = Guid.TryParse(TryGetString(data, "user_id", string.Empty), out var userId) ? userId : Guid.Empty,
                Title = title,
                Description = description,
                Status = TryGetString(data, "status", "Open"),
                CreatedAtUtc = TryGetDateTime(data, "$createdAt", document.CreatedAt),
                UpdatedAtUtc = TryGetDateTime(data, "$updatedAt", document.CreatedAt),
                IsDeleted = false
            };
        }

        private static BiblePostDto? MapBibleDocument(global::Appwrite.Models.Document document)
        {
            var data = document.Data ?? new Dictionary<string, object?>();
            var content = TryGetString(data, "content", string.Empty);
            var payload = new BiblePostPayload();

            if (!string.IsNullOrWhiteSpace(content))
            {
                try
                {
                    payload = JsonSerializer.Deserialize<BiblePostPayload>(content) ?? payload;
                }
                catch
                {
                    payload = new BiblePostPayload();
                }
            }

            return new BiblePostDto
            {
                Id = Guid.TryParse(document.Id, out var id) ? id : Guid.NewGuid(),
                UserId = Guid.TryParse(TryGetString(data, "user_id", string.Empty), out var userId) ? userId : Guid.Empty,
                PostType = TryGetString(data, "post_type", "BibleVerse"),
                BookId = payload.BookId,
                ChapterNumber = payload.ChapterNumber,
                VerseStart = payload.VerseStart,
                VerseEnd = payload.VerseEnd,
                CreatedAtUtc = TryGetDateTime(data, "$createdAt", document.CreatedAt)
            };
        }

        private static string? TryGetString(Dictionary<string, object?> data, string key, string? fallback)
        {
            if (data.TryGetValue(key, out var value) && value is not null)
                return Convert.ToString(value);

            return fallback;
        }

        private static DateTime TryGetDateTime(Dictionary<string, object?> data, string key, string fallback)
        {
            if (data.TryGetValue(key, out var value) && value is not null)
            {
                return DateTime.TryParse(Convert.ToString(value), out var dt)
                    ? dt
                    : DateTime.TryParse(fallback, out var parsedFallback)
                        ? parsedFallback
                        : DateTime.UtcNow;
            }

            return DateTime.TryParse(fallback, out var fallbackParsed)
                ? fallbackParsed
                : DateTime.UtcNow;
        }

        private static DateTime? TryGetNullableDateTime(Dictionary<string, object?> data, string key)
        {
            if (data.TryGetValue(key, out var value) && value is not null)
            {
                return DateTime.TryParse(Convert.ToString(value), out var dt) ? dt : null;
            }

            return null;
        }

        private static string BuildPrayerContent(string title, string description)
        {
            var parts = new List<string>();
            if (!string.IsNullOrWhiteSpace(title)) parts.Add(title.Trim());
            if (!string.IsNullOrWhiteSpace(description)) parts.Add(description.Trim());
            return string.Join(Environment.NewLine, parts);
        }

        private sealed class BiblePostPayload
        {
            public string BookId { get; set; } = string.Empty;
            public int ChapterNumber { get; set; }
            public int VerseStart { get; set; }
            public int VerseEnd { get; set; }
        }
    }
}