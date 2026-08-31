using System.Text.Json;
using CCT_USCF.Models;
using CCT_USCF.Services.Appwrite;

namespace CCT_USCF.Services
{
    public class CommunityService
    {
        private const string CommunityMessagesCollectionId = "community_messages";
        private const string MessagesCollectionId = "messages";
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

        public string GetMessagesChannel()
        {
            return $"databases.{AppwriteConfig.DatabaseId}.collections.{MessagesCollectionId}.documents";
        }

        public async Task<Message> SendMessageAsync(
            string? receiverId,
            string content,
            string? groupId = null,
            string messageType = "text",
            string status = "sent")
        {
            var trimmed = content?.Trim() ?? string.Empty;
            if (string.IsNullOrWhiteSpace(trimmed))
                throw new ArgumentException("Message content is required.", nameof(content));

            var firebaseUid = _authService.GetCurrentFirebaseUid();
            if (string.IsNullOrWhiteSpace(firebaseUid))
                throw new InvalidOperationException("The current Firebase user is not available.");

            var normalizedReceiverId = string.IsNullOrWhiteSpace(receiverId) ? null : receiverId.Trim();
            var normalizedGroupId = string.IsNullOrWhiteSpace(groupId) ? null : groupId.Trim();
            var messageId = Guid.NewGuid().ToString("N");
            var payload = new Dictionary<string, object?>
            {
                ["sender_id"] = firebaseUid,
                ["content"] = trimmed,
                ["created_at"] = DateTime.UtcNow.ToString("O"),
                ["message_type"] = string.IsNullOrWhiteSpace(messageType) ? "text" : messageType,
                ["status"] = string.IsNullOrWhiteSpace(status) ? "sent" : status
            };

            if (!string.IsNullOrWhiteSpace(normalizedReceiverId))
            {
                payload["receiver_id"] = normalizedReceiverId;
                payload["conversation_id"] = BuildConversationId(firebaseUid, normalizedReceiverId);
            }

            if (!string.IsNullOrWhiteSpace(normalizedGroupId))
            {
                payload["group_id"] = normalizedGroupId;
            }

            try
            {
                var document = await _appwriteService.Databases.CreateDocument(
                    databaseId: AppwriteConfig.DatabaseId,
                    collectionId: MessagesCollectionId,
                    documentId: messageId,
                    data: payload,
                    permissions: null);

                return MapMessageDocument(document);
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine($"[APPWRITE_MESSAGES] SendMessageAsync failed. Message={ex.Message}; Inner={ex.InnerException?.Message}; Details={ex}");
                throw new InvalidOperationException("Unable to send message. Please try again.", ex);
            }
        }

        public async Task<List<Message>> GetConversationMessagesAsync(string otherUserId, int limit = 100)
        {
            var firebaseUid = _authService.GetCurrentFirebaseUid();
            if (string.IsNullOrWhiteSpace(firebaseUid))
                throw new InvalidOperationException("The current Firebase user is not available.");

            if (string.IsNullOrWhiteSpace(otherUserId))
                throw new ArgumentException("A conversation partner is required.", nameof(otherUserId));

            var conversationId = BuildConversationId(firebaseUid, otherUserId.Trim());
            var queries = new List<string>
            {
                global::Appwrite.Query.Equal("conversation_id", conversationId),
                global::Appwrite.Query.OrderAsc("created_at"),
                global::Appwrite.Query.Limit(Math.Clamp(limit, 1, 100))
            };

            var result = await _appwriteService.Databases.ListDocuments(
                AppwriteConfig.DatabaseId,
                MessagesCollectionId,
                queries,
                null,
                null,
                Math.Clamp(limit, 1, 100));

            return result.Documents.Select(MapMessageDocument).OrderBy(x => x.CreatedAt).ToList();
        }

        public async Task<List<Message>> GetGroupMessagesAsync(string groupId, int limit = 100)
        {
            if (string.IsNullOrWhiteSpace(groupId))
                throw new ArgumentException("A group id is required.", nameof(groupId));

            var queries = new List<string>
            {
                global::Appwrite.Query.Equal("group_id", groupId.Trim()),
                global::Appwrite.Query.OrderAsc("created_at"),
                global::Appwrite.Query.Limit(Math.Clamp(limit, 1, 100))
            };

            var result = await _appwriteService.Databases.ListDocuments(
                AppwriteConfig.DatabaseId,
                MessagesCollectionId,
                queries,
                null,
                null,
                Math.Clamp(limit, 1, 100));

            return result.Documents.Select(MapMessageDocument).OrderBy(x => x.CreatedAt).ToList();
        }

        public async Task<Message?> MarkMessageAsReadAsync(string messageId)
        {
            if (string.IsNullOrWhiteSpace(messageId))
                throw new ArgumentException("A message id is required.", nameof(messageId));

            var updated = await _appwriteService.Databases.UpdateDocument(
                databaseId: AppwriteConfig.DatabaseId,
                collectionId: MessagesCollectionId,
                documentId: messageId,
                data: new Dictionary<string, object?>
                {
                    ["status"] = "read",
                    ["read_at"] = DateTime.UtcNow.ToString("O")
                },
                permissions: null,
                transactionId: null);

            return MapMessageDocument(updated);
        }

        public async Task<bool> DeleteMessageAsync(string messageId)
        {
            if (string.IsNullOrWhiteSpace(messageId))
                throw new ArgumentException("A message id is required.", nameof(messageId));

            await _appwriteService.Databases.DeleteDocument(
                databaseId: AppwriteConfig.DatabaseId,
                collectionId: MessagesCollectionId,
                documentId: messageId,
                transactionId: null);

            return true;
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
                ["message_type"] = string.IsNullOrWhiteSpace(messageType) ? "text" : messageType,
                ["created_at"] = DateTime.UtcNow.ToString("O")
            };

            if (!string.IsNullOrWhiteSpace(branchId))
                payload["branch_id"] = branchId;

            if (!string.IsNullOrWhiteSpace(regionId))
                payload["region_id"] = regionId;

            if (!string.IsNullOrWhiteSpace(districtId))
                payload["district_id"] = districtId;

            try
            {
                System.Diagnostics.Debug.WriteLine($"[COMMUNITY_MESSAGE] Sending Appwrite create: database={AppwriteConfig.DatabaseId}, collection={CommunityMessagesCollectionId}, messageId={messageId}, communityId={communityId}, senderUid={senderUid}");

                var document = await _appwriteService.Databases.CreateDocument(
                    databaseId: AppwriteConfig.DatabaseId,
                    collectionId: CommunityMessagesCollectionId,
                    documentId: messageId,
                    data: payload,
                    permissions: null);

                return MapCommunityDocument(document);
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine($"[COMMUNITY_MESSAGE] CreateDocument failed. Message={ex.Message}; Inner={ex.InnerException?.Message}; Details={ex}");
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
                    global::Appwrite.Query.Equal("community_id", communityId),
                    global::Appwrite.Query.OrderAsc("created_at"),
                    global::Appwrite.Query.Limit(Math.Clamp(limit, 1, 100))
                };

                var result = await _appwriteService.Databases.ListDocuments(
                    AppwriteConfig.DatabaseId,
                    CommunityMessagesCollectionId,
                    queries,
                    null,
                    null,
                    Math.Clamp(limit, 1, 100));

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
                    documentId: messageId);

                return true;
            }
            catch (Exception ex)
            {
                throw new InvalidOperationException("Unable to delete message.", ex);
            }
        }

        private static string BuildConversationId(string senderId, string receiverId)
        {
            var participants = new[] { senderId.Trim(), receiverId.Trim() }
                .Where(value => !string.IsNullOrWhiteSpace(value))
                .Distinct(StringComparer.Ordinal)
                .OrderBy(value => value, StringComparer.Ordinal)
                .ToArray();

            return participants.Length == 0 ? string.Empty : string.Join("_", participants);
        }

        private static Message MapMessageDocument(global::Appwrite.Models.Document document)
        {
            var data = document.Data ?? new Dictionary<string, object?>();
            return new Message
            {
                Id = document.Id,
                SenderId = TryGetString(data, "sender_id", string.Empty),
                ReceiverId = TryGetString(data, "receiver_id", null),
                GroupId = TryGetString(data, "group_id", null),
                ConversationId = TryGetString(data, "conversation_id", string.Empty),
                Content = TryGetString(data, "content", string.Empty),
                MessageType = TryGetString(data, "message_type", "text"),
                Status = TryGetString(data, "status", "sent"),
                CreatedAt = TryGetDateTime(data, "created_at", document.CreatedAt),
                ReadAt = TryGetNullableDateTime(data, "read_at")
            };
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
                    permissions: null);

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
                    AppwriteConfig.DatabaseId,
                    PrayerRequestsCollectionId,
                    new List<string> { global::Appwrite.Query.OrderDesc("$createdAt") },
                    null,
                    null,
                    50);

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
                    AppwriteConfig.DatabaseId,
                    PrayerRequestsCollectionId,
                    new List<string>
                    {
                        global::Appwrite.Query.Equal("user_id", userId),
                        global::Appwrite.Query.OrderDesc("$createdAt")
                    },
                    null,
                    null,
                    50);

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
                    documentId: id.ToString());

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
                    AppwriteConfig.DatabaseId,
                    BiblePostsCollectionId,
                    new List<string>
                    {
                        global::Appwrite.Query.Equal("post_type", "BibleVerse"),
                        global::Appwrite.Query.OrderDesc("$createdAt"),
                        global::Appwrite.Query.Limit(Math.Clamp(limit, 1, 100))
                    },
                    null,
                    null,
                    Math.Clamp(limit, 1, 100));

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
                    permissions: null);

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
                    AppwriteConfig.DatabaseId,
                    BiblePostsCollectionId,
                    new List<string>
                    {
                        global::Appwrite.Query.Equal("user_id", userId),
                        global::Appwrite.Query.OrderDesc("$createdAt")
                    },
                    null,
                    null,
                    50);

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
                    documentId: id.ToString());

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