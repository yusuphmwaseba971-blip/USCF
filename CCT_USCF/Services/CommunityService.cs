csharp
using System.Net.Http.Headers;
using System.Net.Http.Json;
using System.Text.Json;
using Appwrite;
using CCT_USCF.Models;
using CCT_USCF.Services.Appwrite;

namespace CCT_USCF.Services
{
    public class CommunityService
    {
        private const string MessagesCollectionId =
            AppwriteService.MessagesCollectionId;

        private const string CommunityMessagesCollectionId =
            MessagesCollectionId;

        private const string PrayerRequestsCollectionId =
            "cct_prayers";

        private const string BiblePostsCollectionId =
            "cct_posts";

        private readonly AuthService _authService;
        private readonly AppwriteService _appwriteService;
        private readonly HttpClient _httpClient;

        public CommunityService(
            AuthService authService,
            AppwriteService appwriteService,
            HttpClient httpClient)
        {
            _authService = authService
                ?? throw new ArgumentNullException(nameof(authService));

            _appwriteService = appwriteService
                ?? throw new ArgumentNullException(nameof(appwriteService));

            _httpClient = httpClient
                ?? throw new ArgumentNullException(nameof(httpClient));
        }

        // ============================================================
        // APPWRITE REALTIME CHANNELS
        // ============================================================

        public string GetCommunityMessagesChannel()
        {
            return $"databases.{AppwriteService.DatabaseId}" +
                   $".collections.{CommunityMessagesCollectionId}.documents";
        }

        public string GetMessagesChannel()
        {
            return $"databases.{AppwriteService.DatabaseId}" +
                   $".collections.{MessagesCollectionId}.documents";
        }

        // ============================================================
        // PRIVATE MESSAGE
        // ============================================================

        [Obsolete]
        public async Task<Message> SendMessageAsync(
            string? receiverId,
            string content,
            string? groupId = null,
            string messageType = "text",
            string status = "sent")
        {
            var trimmed =
                content?.Trim() ?? string.Empty;

            if (string.IsNullOrWhiteSpace(trimmed))
            {
                throw new ArgumentException(
                    "Message content is required.",
                    nameof(content));
            }

            var firebaseUid =
                _authService.GetCurrentFirebaseUid();

            if (string.IsNullOrWhiteSpace(firebaseUid))
            {
                throw new InvalidOperationException(
                    "The current Firebase user is not available.");
            }

            var normalizedReceiverId =
                string.IsNullOrWhiteSpace(receiverId)
                    ? null
                    : receiverId.Trim();

            var normalizedGroupId =
                string.IsNullOrWhiteSpace(groupId)
                    ? null
                    : groupId.Trim();

            var messageId =
                Guid.NewGuid().ToString("N");

            var payload =
                new Dictionary<string, object?>
                {
                    ["sender_id"] = firebaseUid,
                    ["content"] = trimmed,
                    ["created_at"] =
                        DateTime.UtcNow.ToString("O"),
                    ["message_type"] =
                        string.IsNullOrWhiteSpace(messageType)
                            ? "text"
                            : messageType,
                    ["status"] =
                        string.IsNullOrWhiteSpace(status)
                            ? "sent"
                            : status
                };

            if (!string.IsNullOrWhiteSpace(normalizedReceiverId))
            {
                payload["receiver_id"] =
                    normalizedReceiverId;

                payload["conversation_id"] =
                    BuildConversationId(
                        firebaseUid,
                        normalizedReceiverId);
            }

            if (!string.IsNullOrWhiteSpace(normalizedGroupId))
            {
                payload["group_id"] =
                    normalizedGroupId;
            }

            var permissions =
                await BuildPrivateMessagePermissionsAsync(
                    firebaseUid,
                    normalizedReceiverId);

            try
            {
                System.Diagnostics.Debug.WriteLine(
                    "[APPWRITE_MESSAGES] Creating private message.");

                System.Diagnostics.Debug.WriteLine(
                    $"Database={AppwriteService.DatabaseId}");

                System.Diagnostics.Debug.WriteLine(
                    $"Collection={MessagesCollectionId}");

                System.Diagnostics.Debug.WriteLine(
                    $"MessageId={messageId}");

                System.Diagnostics.Debug.WriteLine(
                    $"Sender={firebaseUid}");

                System.Diagnostics.Debug.WriteLine(
                    $"Receiver={normalizedReceiverId}");

                System.Diagnostics.Debug.WriteLine(
                    $"Group={normalizedGroupId}");

                System.Diagnostics.Debug.WriteLine(
                    $"PermissionCount={permissions.Count}");

                var document =
                    await _appwriteService.Databases.CreateDocument(
                        databaseId: AppwriteService.DatabaseId,
                        collectionId: MessagesCollectionId,
                        documentId: messageId,
                        data: payload,
                        permissions: permissions);

                return MapMessageDocument(document);
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine(
                    "[APPWRITE_MESSAGES] SendMessageAsync failed.");

                System.Diagnostics.Debug.WriteLine(
                    $"Message={ex.Message}");

                System.Diagnostics.Debug.WriteLine(
                    $"Inner={ex.InnerException?.Message}");

                System.Diagnostics.Debug.WriteLine(
                    $"Details={ex}");

                throw new InvalidOperationException(
                    "Unable to send message. Please try again.",
                    ex);
            }
        }

        // ============================================================
        // LOAD PRIVATE CONVERSATION
        // ============================================================

        [Obsolete]
        public async Task<List<Message>> GetConversationMessagesAsync(
            string otherUserId,
            int limit = 100)
        {
            var firebaseUid =
                _authService.GetCurrentFirebaseUid();

            if (string.IsNullOrWhiteSpace(firebaseUid))
            {
                throw new InvalidOperationException(
                    "The current Firebase user is not available.");
            }

            if (string.IsNullOrWhiteSpace(otherUserId))
            {
                throw new ArgumentException(
                    "A conversation partner is required.",
                    nameof(otherUserId));
            }

            var normalizedOtherUserId =
                otherUserId.Trim();

            var conversationId =
                BuildConversationId(
                    firebaseUid,
                    normalizedOtherUserId);

            var safeLimit =
                Math.Clamp(limit, 1, 100);

            var queries =
                new List<string>
                {
                    global::Appwrite.Query.Equal(
                        "conversation_id",
                        conversationId),

                    global::Appwrite.Query.OrderAsc(
                        "created_at"),

                    global::Appwrite.Query.Limit(
                        safeLimit)
                };

            try
            {
                var result =
                    await _appwriteService.Databases.ListDocuments(
                        AppwriteService.DatabaseId,
                        MessagesCollectionId,
                        queries,
                        null,
                        null,
                        safeLimit);

                return result.Documents
                    .Select(MapMessageDocument)
                    .OrderBy(x => x.CreatedAt)
                    .ToList();
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine(
                    $"[APPWRITE_MESSAGES] Load conversation failed: {ex}");

                throw new InvalidOperationException(
                    "Unable to load conversation messages.",
                    ex);
            }
        }

        // ============================================================
        // LOAD GROUP MESSAGES
        // ============================================================

        public async Task<List<CommunityMessage>> GetGroupMessagesAsync(
            string groupId,
            int limit = 100)
        {
            var messages =
                await GetCommunityMessagesAsync(
                    communityId: groupId,
                    limit: limit,
                    organizationalLevel: "Branch",
                    branchId: groupId);

            return messages
                .OrderBy(message => message.CreatedAt)
                .ToList();
        }

        // ============================================================
        // AUTHORIZED COMMUNITY API
        // ============================================================

        private async Task<T> SendAuthorizedCommunityApiAsync<T>(
            HttpMethod method,
            string requestUri,
            object? body = null)
        {
            var firebaseIdToken =
                await _authService.GetCurrentFirebaseIdTokenAsync();

            using var request =
                new HttpRequestMessage(
                    method,
                    requestUri);

            request.Headers.Authorization =
                new AuthenticationHeaderValue(
                    "Bearer",
                    firebaseIdToken);

            if (body != null)
            {
                request.Content =
                    JsonContent.Create(body);
            }

            using var response =
                await _httpClient.SendAsync(request);

            if (response.StatusCode ==
                    System.Net.HttpStatusCode.Unauthorized ||
                response.StatusCode ==
                    System.Net.HttpStatusCode.Forbidden)
            {
                throw new UnauthorizedAccessException(
                    "You are not authorized for this community group.");
            }

            if (!response.IsSuccessStatusCode)
            {
                var details =
                    await response.Content.ReadAsStringAsync();

                throw new InvalidOperationException(
                    $"Community API request failed with status " +
                    $"{(int)response.StatusCode}: {details}");
            }

            var rawJson =
                await response.Content.ReadAsStringAsync();

            if (string.IsNullOrWhiteSpace(rawJson))
            {
                throw new InvalidOperationException(
                    "Community API returned an empty response.");
            }

            var options =
                new JsonSerializerOptions
                {
                    PropertyNameCaseInsensitive = true
                };

            if (typeof(T) == typeof(CommunityMessage))
            {
                var message =
                    DeserializeCommunityMessage(
                        rawJson,
                        options);

                return (T)(object)message;
            }

            if (typeof(T) == typeof(List<CommunityMessage>))
            {
                var messages =
                    DeserializeCommunityMessages(
                        rawJson,
                        options);

                return (T)(object)messages;
            }

            var result =
                JsonSerializer.Deserialize<T>(
                    rawJson,
                    options);

            return result
                ?? throw new InvalidOperationException(
                    "Community API returned an empty response.");
        }

        // ============================================================
        // DESERIALIZE COMMUNITY MESSAGE
        // ============================================================

        private static CommunityMessage DeserializeCommunityMessage(
            string json,
            JsonSerializerOptions options)
        {
            try
            {
                var root =
                    JsonDocument.Parse(json).RootElement;

                if (root.ValueKind ==
                    JsonValueKind.Object)
                {
                    if (root.TryGetProperty(
                            "message",
                            out var messageValue) &&
                        messageValue.ValueKind !=
                            JsonValueKind.Null)
                    {
                        return
                            JsonSerializer.Deserialize<CommunityMessage>(
                                messageValue.GetRawText(),
                                options)
                            ?? throw new JsonException(
                                "Community API message payload was empty.");
                    }

                    if (root.TryGetProperty(
                            "data",
                            out var dataValue) &&
                        dataValue.ValueKind !=
                            JsonValueKind.Null)
                    {
                        return
                            JsonSerializer.Deserialize<CommunityMessage>(
                                dataValue.GetRawText(),
                                options)
                            ?? throw new JsonException(
                                "Community API data payload was empty.");
                    }
                }

                return
                    JsonSerializer.Deserialize<CommunityMessage>(
                        json,
                        options)
                    ?? throw new JsonException(
                        "Community API returned an empty message payload.");
            }
            catch (JsonException)
            {
                throw;
            }
        }

        // ============================================================
        // DESERIALIZE COMMUNITY MESSAGES
        // ============================================================

        private static List<CommunityMessage>
            DeserializeCommunityMessages(
                string json,
                JsonSerializerOptions options)
        {
            try
            {
                var root =
                    JsonDocument.Parse(json).RootElement;

                if (root.ValueKind ==
                    JsonValueKind.Array)
                {
                    return
                        JsonSerializer.Deserialize<
                            List<CommunityMessage>>(
                                root.GetRawText(),
                                options)
                        ?? new List<CommunityMessage>();
                }

                if (root.ValueKind ==
                    JsonValueKind.Object)
                {
                    if (root.TryGetProperty(
                            "messages",
                            out var messagesValue) &&
                        messagesValue.ValueKind ==
                            JsonValueKind.Array)
                    {
                        return
                            JsonSerializer.Deserialize<
                                List<CommunityMessage>>(
                                    messagesValue.GetRawText(),
                                    options)
                            ?? new List<CommunityMessage>();
                    }

                    if (root.TryGetProperty(
                            "data",
                            out var dataValue) &&
                        dataValue.ValueKind ==
                            JsonValueKind.Array)
                    {
                        return
                            JsonSerializer.Deserialize<
                                List<CommunityMessage>>(
                                    dataValue.GetRawText(),
                                    options)
                            ?? new List<CommunityMessage>();
                    }
                }

                throw new JsonException(
                    "Community API response did not contain a message list.");
            }
            catch (JsonException)
            {
                throw;
            }
        }

        // ============================================================
        // MARK PRIVATE MESSAGE AS READ
        // ============================================================

        [Obsolete]
        public async Task<Message?> MarkMessageAsReadAsync(
            string messageId)
        {
            if (string.IsNullOrWhiteSpace(messageId))
            {
                throw new ArgumentException(
                    "A message id is required.",
                    nameof(messageId));
            }

            var currentFirebaseUid =
                _authService.GetCurrentFirebaseUid();

            if (string.IsNullOrWhiteSpace(currentFirebaseUid))
            {
                throw new InvalidOperationException(
                    "The current Firebase user is not available.");
            }

            try
            {
                var document =
                    await _appwriteService.Databases.GetDocument(
                        databaseId: AppwriteService.DatabaseId,
                        collectionId: MessagesCollectionId,
                        documentId: messageId);

                var data =
                    document.Data ??
                    new Dictionary<string, object?>();

                var senderId =
                    TryGetString(
                        data,
                        "sender_id",
                        string.Empty);

                var receiverId =
                    TryGetString(
                        data,
                        "receiver_id",
                        null);

                var groupId =
                    TryGetString(
                        data,
                        "group_id",
                        null);

                var isAuthorized =
                    string.Equals(
                        senderId,
                        currentFirebaseUid,
                        StringComparison.Ordinal) ||
                    string.Equals(
                        receiverId,
                        currentFirebaseUid,
                        StringComparison.Ordinal) ||
                    (!string.IsNullOrWhiteSpace(groupId) &&
                     await IsCurrentUserAuthorizedForGroupAsync(
                         currentFirebaseUid,
                         groupId));

                if (!isAuthorized)
                {
                    throw new UnauthorizedAccessException(
                        "You are not authorized to update this message.");
                }

                var updated =
                    await _appwriteService.Databases.UpdateDocument(
                        databaseId: AppwriteService.DatabaseId,
                        collectionId: MessagesCollectionId,
                        documentId: messageId,
                        data:
                            new Dictionary<string, object?>
                            {
                                ["status"] = "read",
                                ["read_at"] =
                                    DateTime.UtcNow.ToString("O")
                            },
                        permissions: null,
                        transactionId: null);

                return MapMessageDocument(updated);
            }
            catch (UnauthorizedAccessException)
            {
                throw;
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine(
                    "========== APPWRITE COMMUNITY MESSAGE ERROR ==========");

                System.Diagnostics.Debug.WriteLine(
                    $"Exception Type: {ex.GetType().FullName}");

                System.Diagnostics.Debug.WriteLine(
                    $"Message: {ex.Message}");

                System.Diagnostics.Debug.WriteLine(
                    $"Inner Exception: {ex.InnerException?.Message}");

                System.Diagnostics.Debug.WriteLine(
                    $"Full Exception: {ex}");

                System.Diagnostics.Debug.WriteLine(
                    "======================================================");

                throw;
            }
        }

        // ============================================================
        // DELETE PRIVATE MESSAGE
        // ============================================================

        [Obsolete]
        public async Task<bool> DeleteMessageAsync(
            string messageId)
        {
            if (string.IsNullOrWhiteSpace(messageId))
            {
                throw new ArgumentException(
                    "A message id is required.",
                    nameof(messageId));
            }

            var currentFirebaseUid =
                _authService.GetCurrentFirebaseUid();

            if (string.IsNullOrWhiteSpace(currentFirebaseUid))
            {
                throw new InvalidOperationException(
                    "The current Firebase user is not available.");
            }

            try
            {
                var document =
                    await _appwriteService.Databases.GetDocument(
                        databaseId: AppwriteService.DatabaseId,
                        collectionId: MessagesCollectionId,
                        documentId: messageId);

                var data =
                    document.Data ??
                    new Dictionary<string, object?>();

                var senderId =
                    TryGetString(
                        data,
                        "sender_id",
                        string.Empty);

                if (!string.Equals(
                        senderId,
                        currentFirebaseUid,
                        StringComparison.Ordinal))
                {
                    throw new UnauthorizedAccessException(
                        "You are not authorized to delete this message.");
                }

                await _appwriteService.Databases.DeleteDocument(
                    databaseId: AppwriteService.DatabaseId,
                    collectionId: MessagesCollectionId,
                    documentId: messageId,
                    transactionId: null);

                return true;
            }
            catch (UnauthorizedAccessException)
            {
                throw;
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine(
                    $"[APPWRITE_MESSAGES] Delete failed: {ex}");

                throw new InvalidOperationException(
                    "Unable to delete message.",
                    ex);
            }
        }

        // ============================================================
        // CREATE COMMUNITY MESSAGE
        // ============================================================

        [Obsolete]
        public async Task<CommunityMessage>
            CreateCommunityMessageAsync(
                string communityId,
                string content,
                string messageType = "text",
                string? branchId = null,
                string? regionId = null,
                string? districtId = null,
                string? organizationalLevel = null)
        {
            if (string.IsNullOrWhiteSpace(communityId))
            {
                throw new ArgumentException(
                    "A community id is required.",
                    nameof(communityId));
            }

            var trimmed =
                content?.Trim() ?? string.Empty;

            if (string.IsNullOrWhiteSpace(trimmed))
            {
                throw new ArgumentException(
                    "Message content is required.",
                    nameof(content));
            }

            var firebaseUid =
                _authService.GetCurrentFirebaseUid();

            if (string.IsNullOrWhiteSpace(firebaseUid))
            {
                throw new InvalidOperationException(
                    "The current Firebase user is not available.");
            }

            var normalizedCommunityId =
                communityId.Trim();

            var normalizedLevel =
                NormalizeCommunityLevel(
                    organizationalLevel,
                    branchId,
                    districtId,
                    regionId);

            var groupId =
                ResolveCommunityMessageGroupId(
                    normalizedCommunityId,
                    normalizedLevel,
                    branchId,
                    regionId,
                    districtId);

            if (!await IsCurrentUserAuthorizedForGroupAsync(
                    firebaseUid,
                    groupId))
            {
                throw new UnauthorizedAccessException(
                    "You are not authorized for this community group.");
            }

            var createdAt =
                DateTime.UtcNow;

            var normalizedMessageType =
                string.IsNullOrWhiteSpace(messageType)
                    ? "text"
                    : messageType.Trim();

            // The same ID is used for:
            // 1. Appwrite document ID
            // 2. Required message_id attribute
            var messageId =
                Guid.NewGuid().ToString("N");

            var payload =
                new Dictionary<string, object?>
                {
                    ["message_id"] = messageId,
                    ["sender_id"] = firebaseUid,
                    ["receiver_id"] = null,
                    ["group_id"] = groupId,
                    ["conversation_id"] =
                        BuildGroupConversationId(groupId),
                    ["content"] = trimmed,
                    ["created_at"] =
                        createdAt.ToString("O"),
                    ["message_type"] =
                        normalizedMessageType,
                    ["status"] = "sent",
                    ["read_at"] = null
                };

            try
            {
                System.Diagnostics.Debug.WriteLine(
                    "[APPWRITE_COMMUNITY_MESSAGE] Create start:");

                System.Diagnostics.Debug.WriteLine(
                    $"endpoint={AppwriteService.Endpoint}");

                System.Diagnostics.Debug.WriteLine(
                    $"project={AppwriteService.ProjectId}");

                System.Diagnostics.Debug.WriteLine(
                    $"database={AppwriteService.DatabaseId}");

                System.Diagnostics.Debug.WriteLine(
                    $"collection={MessagesCollectionId}");

                System.Diagnostics.Debug.WriteLine(
                    $"communityId={normalizedCommunityId}");

                System.Diagnostics.Debug.WriteLine(
                    $"resolvedGroupId={groupId}");

                System.Diagnostics.Debug.WriteLine(
                    $"organizationalLevel={normalizedLevel}");

                System.Diagnostics.Debug.WriteLine(
                    $"branchId={branchId}");

                System.Diagnostics.Debug.WriteLine(
                    $"regionId={regionId}");

                System.Diagnostics.Debug.WriteLine(
                    $"districtId={districtId}");

                System.Diagnostics.Debug.WriteLine(
                    $"senderUid={firebaseUid}");

                System.Diagnostics.Debug.WriteLine(
                    $"messageId={messageId}");

                System.Diagnostics.Debug.WriteLine(
                    $"messageType={normalizedMessageType}");

                var document =
                    await _appwriteService.Databases.CreateDocument(
                        databaseId: AppwriteService.DatabaseId,
                        collectionId: MessagesCollectionId,
                        documentId: messageId,
                        data: payload,
                        permissions: null);

                return MapCommunityDocument(document);
            }
            catch (UnauthorizedAccessException)
            {
                throw;
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine(
                    $"[APPWRITE_COMMUNITY_MESSAGE] Create failed: {ex}");

                throw new InvalidOperationException(
                    "Unable to send message.",
                    ex);
            }
        }

        // ============================================================
        // LOAD COMMUNITY MESSAGES
        // ============================================================

        [Obsolete]
        public async Task<List<CommunityMessage>>
            GetCommunityMessagesAsync(
                string communityId,
                int limit = 50,
                string? organizationalLevel = null,
                string? branchId = null,
                string? regionId = null,
                string? districtId = null)
        {
            if (string.IsNullOrWhiteSpace(communityId))
            {
                throw new ArgumentException(
                    "A community id is required.",
                    nameof(communityId));
            }

            var normalizedLevel =
                NormalizeCommunityLevel(
                    organizationalLevel,
                    branchId,
                    districtId,
                    regionId);

            var groupId =
                ResolveCommunityMessageGroupId(
                    communityId.Trim(),
                    normalizedLevel,
                    branchId,
                    regionId,
                    districtId);

            var safeLimit =
                Math.Clamp(limit, 1, 100);

            try
            {
                var result =
                    await _appwriteService.Databases.ListDocuments(
                        AppwriteService.DatabaseId,
                        MessagesCollectionId,
                        new List<string>
                        {
                            global::Appwrite.Query.Equal(
                                "group_id",
                                groupId),

                            global::Appwrite.Query.OrderAsc(
                                "created_at"),

                            global::Appwrite.Query.Limit(
                                safeLimit)
                        },
                        null,
                        null,
                        safeLimit);

                return result.Documents
                    .Select(MapCommunityDocument)
                    .OrderBy(message => message.CreatedAt)
                    .ToList();
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine(
                    $"[APPWRITE_COMMUNITY_MESSAGE] Load failed: {ex}");

                throw new InvalidOperationException(
                    "Unable to load community messages.",
                    ex);
            }
        }

        // ============================================================
        // RESOLVE COMMUNITY GROUP ID
        // ============================================================

        private static string ResolveCommunityMessageGroupId(
            string communityId,
            string organizationalLevel,
            string? branchId,
            string? regionId,
            string? districtId)
        {
            if (string.Equals(
                    organizationalLevel,
                    "Branch",
                    StringComparison.OrdinalIgnoreCase) &&
                !string.IsNullOrWhiteSpace(branchId))
            {
                return branchId.Trim();
            }

            if (string.Equals(
                    organizationalLevel,
                    "District",
                    StringComparison.OrdinalIgnoreCase) &&
                !string.IsNullOrWhiteSpace(districtId))
            {
                return districtId.Trim();
            }

            if ((string.Equals(
                     organizationalLevel,
                     "Region",
                     StringComparison.OrdinalIgnoreCase) ||
                 string.Equals(
                     organizationalLevel,
                     "Regional",
                     StringComparison.OrdinalIgnoreCase)) &&
                !string.IsNullOrWhiteSpace(regionId))
            {
                return regionId.Trim();
            }

            return communityId.Trim();
        }

        // ============================================================
        // PARSE POSITIVE INTEGER
        // ============================================================

        private static int? TryParsePositiveInt(
            string? value)
        {
            return int.TryParse(
                       value,
                       out var parsed) &&
                   parsed > 0
                ? parsed
                : null;
        }

        // ============================================================
        // NORMALIZE COMMUNITY LEVEL
        // ============================================================

        private static string NormalizeCommunityLevel(
            string? organizationalLevel,
            string? branchId,
            string? districtId,
            string? regionId)
        {
            if (!string.IsNullOrWhiteSpace(
                    organizationalLevel))
            {
                return organizationalLevel.Trim() switch
                {
                    "Regional" =>
                        "Region",

                    "Regional Group" =>
                        "Region",

                    "Region" =>
                        "Region",

                    "District Group" =>
                        "District",

                    "District" =>
                        "District",

                    "Branch Group" =>
                        "Branch",

                    "Branch" =>
                        "Branch",

                    var value =>
                        value
                };
            }

            if (!string.IsNullOrWhiteSpace(regionId))
            {
                return "Region";
            }

            if (!string.IsNullOrWhiteSpace(districtId))
            {
                return "District";
            }

            return "Branch";
        }

        // ============================================================
        // DELETE COMMUNITY MESSAGE
        // ============================================================

        public Task<bool> DeleteCommunityMessageAsync(
            string messageId)
        {
            throw new UnauthorizedAccessException(
                "Community message deletion is not available until a server-side deletion authority is defined.");
        }

        // ============================================================
        // CONVERSATION IDs
        // ============================================================

        private static string BuildGroupConversationId(
            string groupId)
        {
            return $"branch:{groupId.Trim()}";
        }

        private static string BuildConversationId(
            string senderId,
            string receiverId)
        {
            var participants =
                new[]
                {
                    senderId.Trim(),
                    receiverId.Trim()
                }
                .Where(value =>
                    !string.IsNullOrWhiteSpace(value))
                .Distinct(StringComparer.Ordinal)
                .OrderBy(
                    value => value,
                    StringComparer.Ordinal)
                .ToArray();

            return participants.Length == 0
                ? string.Empty
                : string.Join(
                    "_",
                    participants);
        }

        // ============================================================
        // GROUP AUTHORIZATION
        // ============================================================

        private static bool IsCurrentUserAuthorizedForGroup(
            CCT_USCF.Models.CurrentUser currentUser,
            string groupId)
        {
            if (string.IsNullOrWhiteSpace(groupId))
            {
                return false;
            }

            var normalizedGroupId =
                groupId.Trim();

            if (currentUser.BranchId.HasValue &&
                string.Equals(
                    currentUser.BranchId.Value.ToString(),
                    normalizedGroupId,
                    StringComparison.Ordinal))
            {
                return true;
            }

            if (currentUser.DistrictId.HasValue &&
                string.Equals(
                    currentUser.DistrictId.Value.ToString(),
                    normalizedGroupId,
                    StringComparison.Ordinal))
            {
                return true;
            }

            if (currentUser.RegionId.HasValue &&
                string.Equals(
                    currentUser.RegionId.Value.ToString(),
                    normalizedGroupId,
                    StringComparison.Ordinal))
            {
                return true;
            }

            return false;
        }

        private async Task<bool>
            IsCurrentUserAuthorizedForGroupAsync(
                string currentFirebaseUid,
                string? groupId)
        {
            if (string.IsNullOrWhiteSpace(
                    currentFirebaseUid) ||
                string.IsNullOrWhiteSpace(groupId))
            {
                return false;
            }

            var currentUser =
                await _authService.GetCurrentUserAsync();

            if (currentUser == null)
            {
                return false;
            }

            return IsCurrentUserAuthorizedForGroup(
                currentUser,
                groupId);
        }

        // ============================================================
        // PRIVATE MESSAGE PERMISSIONS
        // ============================================================

        private async Task<List<string>>
            BuildPrivateMessagePermissionsAsync(
                string senderUid,
                string? receiverUid)
        {
            var appwriteUserId =
                await RequireAppwriteUserIdAsync();

            var permissions =
                new List<string>
                {
                    Permission.Read(
                        Role.User(appwriteUserId)),

                    Permission.Update(
                        Role.User(appwriteUserId)),

                    Permission.Delete(
                        Role.User(appwriteUserId))
                };

            if (!string.IsNullOrWhiteSpace(
                    receiverUid))
            {
                var receiverAppwriteUserId =
                    await TryResolveAppwriteUserIdAsync(
                        receiverUid);

                if (string.IsNullOrWhiteSpace(
                        receiverAppwriteUserId))
                {
                    throw new InvalidOperationException(
                        "Appwrite document permissions cannot be created for a private message because this project does not have a valid Appwrite user/session mapping for Firebase UIDs.");
                }

                permissions.Add(
                    Permission.Read(
                        Role.User(
                            receiverAppwriteUserId)));
            }

            return permissions;
        }

        // ============================================================
        // COMMUNITY MESSAGE PERMISSIONS
        // ============================================================

        private async Task<List<string>>
            BuildCommunityMessagePermissionsAsync(
                string senderUid,
                string groupId,
                string? branchId = null,
                string? regionId = null,
                string? districtId = null)
        {
            var appwriteUserId =
                await RequireAppwriteUserIdAsync();

            if (string.IsNullOrWhiteSpace(
                    appwriteUserId))
            {
                throw new InvalidOperationException(
                    "Appwrite community message permissions require a valid Appwrite user/session identity.");
            }

            if (string.IsNullOrWhiteSpace(
                    groupId))
            {
                throw new InvalidOperationException(
                    "A group/community identifier is required for Appwrite document permissions.");
            }

            throw new InvalidOperationException(
                "Community/group messaging requires an Appwrite team/role membership model for branch members. The current project only authenticates through Firebase and has no Appwrite team mapping configured for authorized branch members.");
        }

        // ============================================================
        // APPWRITE USER ID
        // ============================================================

        private Task<string> RequireAppwriteUserIdAsync()
        {
            return Task.FromResult(
                string.Empty);
        }

        private Task<string> TryResolveAppwriteUserIdAsync(
            string firebaseUid)
        {
            return Task.FromResult(
                string.Empty);
        }

        // ============================================================
        // MAP PRIVATE MESSAGE
        // ============================================================

        private static Message MapMessageDocument(
            global::Appwrite.Models.Document document)
        {
            var data =
                document.Data ??
                new Dictionary<string, object?>();

            return new Message
            {
                Id =
                    document.Id,

                SenderId =
                    TryGetString(
                        data,
                        "sender_id",
                        string.Empty),

                ReceiverId =
                    TryGetString(
                        data,
                        "receiver_id",
                        null),

                GroupId =
                    TryGetString(
                        data,
                        "group_id",
                        null),

                ConversationId =
                    TryGetString(
                        data,
                        "conversation_id",
                        string.Empty),

                Content =
                    TryGetString(
                        data,
                        "content",
                        string.Empty),

                MessageType =
                    TryGetString(
                        data,
                        "message_type",
                        "text"),

                Status =
                    TryGetString(
                        data,
                        "status",
                        "sent"),

                CreatedAt =
                    TryGetDateTime(
                        data,
                        "created_at",
                        document.CreatedAt),

                ReadAt =
                    TryGetNullableDateTime(
                        data,
                        "read_at")
            };
        }

        // ============================================================
        // CREATE PRAYER REQUEST
        // ============================================================

        [Obsolete]
        public async Task<PrayerRequestDto?>
            CreatePrayerRequestAsync(
                string title,
                string description)
        {
            if (string.IsNullOrWhiteSpace(title) &&
                string.IsNullOrWhiteSpace(description))
            {
                throw new ArgumentException(
                    "Prayer request title or description is required.",
                    nameof(title));
            }

            var currentUser =
                await _authService.GetCurrentUserAsync();

            if (currentUser == null)
            {
                throw new InvalidOperationException(
                    "You must be signed in to submit a prayer request.");
            }

            var documentId =
                Guid.NewGuid().ToString("N");

            var userId =
                _authService.GetCurrentFirebaseUid()
                ?? currentUser.Email
                ?? currentUser.Id.ToString();

            var payload =
                new Dictionary<string, object?>
                {
                    ["user_id"] = userId,
                    ["content"] =
                        BuildPrayerContent(
                            title,
                            description),
                    ["leader_id"] = null,
                    ["is_private"] = false,
                    ["status"] = "Open"
                };

            try
            {
                var document =
                    await _appwriteService.Databases.CreateDocument(
                        databaseId: AppwriteConfig.DatabaseId,
                        collectionId: PrayerRequestsCollectionId,
                        documentId: documentId,
                        data: payload,
                        permissions: null);

                return MapPrayerDocument(document);
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine(
                    $"[PRAYER] Create failed: {ex}");

                throw new InvalidOperationException(
                    "Unable to create prayer request.",
                    ex);
            }
        }

        // ============================================================
        // GET ALL PRAYER REQUESTS
        // ============================================================

        [Obsolete]
        public async Task<List<PrayerRequestDto>>
            GetAllPrayerRequestsAsync()
        {
            try
            {
                var result =
                    await _appwriteService.Databases.ListDocuments(
                        AppwriteConfig.DatabaseId,
                        PrayerRequestsCollectionId,
                        new List<string>
                        {
                            global::Appwrite.Query.OrderDesc(
                                "$createdAt")
                        },
                        null,
                        null,
                        50);

                return result.Documents
                    .Select(MapPrayerDocument)
                    .ToList();
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine(
                    $"[PRAYER] Load all failed: {ex}");

                throw new InvalidOperationException(
                    "Unable to load prayer requests.",
                    ex);
            }
        }

        // ============================================================
        // GET MY PRAYER REQUESTS
        // ============================================================

        [Obsolete]
        public async Task<List<PrayerRequestDto>>
            GetMyPrayerRequestsAsync()
        {
            var currentUser =
                await _authService.GetCurrentUserAsync();

            if (currentUser == null)
            {
                return new List<PrayerRequestDto>();
            }

            var userId =
                _authService.GetCurrentFirebaseUid()
                ?? currentUser.Email
                ?? currentUser.Id.ToString();

            try
            {
                var result =
                    await _appwriteService.Databases.ListDocuments(
                        AppwriteConfig.DatabaseId,
                        PrayerRequestsCollectionId,
                        new List<string>
                        {
                            global::Appwrite.Query.Equal(
                                "user_id",
                                userId),

                            global::Appwrite.Query.OrderDesc(
                                "$createdAt")
                        },
                        null,
                        null,
                        50);

                return result.Documents
                    .Select(MapPrayerDocument)
                    .ToList();
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine(
                    $"[PRAYER] Load mine failed: {ex}");

                throw new InvalidOperationException(
                    "Unable to load your prayer requests.",
                    ex);
            }
        }

        // ============================================================
        // DELETE PRAYER REQUEST
        // ============================================================

        [Obsolete]
        public async Task<bool>
            DeletePrayerRequestAsync(Guid id)
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
                System.Diagnostics.Debug.WriteLine(
                    $"[PRAYER] Delete failed: {ex}");

                throw new InvalidOperationException(
                    "Unable to delete prayer request.",
                    ex);
            }
        }

        // ============================================================
        // GET BIBLE POSTS
        // ============================================================

        [Obsolete]
        public async Task<List<BiblePostDto>>
            GetBiblePostsAsync(int limit = 50)
        {
            var safeLimit =
                Math.Clamp(limit, 1, 100);

            try
            {
                var result =
                    await _appwriteService.Databases.ListDocuments(
                        AppwriteConfig.DatabaseId,
                        BiblePostsCollectionId,
                        new List<string>
                        {
                            global::Appwrite.Query.Equal(
                                "post_type",
                                "BibleVerse"),

                            global::Appwrite.Query.OrderDesc(
                                "$createdAt"),

                            global::Appwrite.Query.Limit(
                                safeLimit)
                        },
                        null,
                        null,
                        safeLimit);

                return result.Documents
                    .Select(MapBibleDocument)
                    .Where(x => x != null)
                    .Cast<BiblePostDto>()
                    .ToList();
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine(
                    $"[BIBLE] Load failed: {ex}");

                throw new InvalidOperationException(
                    "Unable to load Bible posts.",
                    ex);
            }
        }

        // ============================================================
        // CREATE BIBLE POST
        // ============================================================

        [Obsolete]
        public async Task<BiblePostDto?>
            CreateBiblePostAsync(
                BiblePostCreateDto dto)
        {
            if (dto == null)
            {
                throw new ArgumentNullException(
                    nameof(dto));
            }

            var currentUser =
                await _authService.GetCurrentUserAsync();

            if (currentUser == null)
            {
                throw new InvalidOperationException(
                    "You must be signed in to publish a Bible post.");
            }

            var userId =
                _authService.GetCurrentFirebaseUid()
                ?? currentUser.Email
                ?? currentUser.Id.ToString();

            var documentId =
                Guid.NewGuid().ToString("N");

            var payload =
                new Dictionary<string, object?>
                {
                    ["user_id"] = userId,
                    ["post_type"] = "BibleVerse",
                    ["content"] =
                        JsonSerializer.Serialize(
                            new
                            {
                                dto.BookId,
                                dto.ChapterNumber,
                                dto.VerseStart,
                                dto.VerseEnd
                            })
                };

            try
            {
                var document =
                    await _appwriteService.Databases.CreateDocument(
                        databaseId: AppwriteConfig.DatabaseId,
                        collectionId: BiblePostsCollectionId,
                        documentId: documentId,
                        data: payload,
                        permissions: null);

                return MapBibleDocument(document);
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine(
                    $"[BIBLE] Create failed: {ex}");

                throw new InvalidOperationException(
                    "Unable to create Bible post.",
                    ex);
            }
        }

        // ============================================================
        // GET MY BIBLE POSTS
        // ============================================================

        [Obsolete]
        public async Task<List<BiblePostDto>>
            GetMyBiblePostsAsync()
        {
            var currentUser =
                await _authService.GetCurrentUserAsync();

            if (currentUser == null)
            {
                return new List<BiblePostDto>();
            }

            var userId =
                _authService.GetCurrentFirebaseUid()
                ?? currentUser.Email
                ?? currentUser.Id.ToString();

            try
            {
                var result =
                    await _appwriteService.Databases.ListDocuments(
                        AppwriteConfig.DatabaseId,
                        BiblePostsCollectionId,
                        new List<string>
                        {
                            global::Appwrite.Query.Equal(
                                "user_id",
                                userId),

                            global::Appwrite.Query.OrderDesc(
                                "$createdAt")
                        },
                        null,
                        null,
                        50);

                return result.Documents
                    .Select(MapBibleDocument)
                    .Where(x => x != null)
                    .Cast<BiblePostDto>()
                    .ToList();
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine(
                    $"[BIBLE] Load mine failed: {ex}");

                throw new InvalidOperationException(
                    "Unable to load your Bible posts.",
                    ex);
            }
        }

        // ============================================================
        // DELETE BIBLE POST
        // ============================================================

        [Obsolete]
        public async Task<bool>
            DeleteBiblePostAsync(Guid id)
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
                System.Diagnostics.Debug.WriteLine(
                    $"[BIBLE] Delete failed: {ex}");

                throw new InvalidOperationException(
                    "Unable to delete Bible post.",
                    ex);
            }
        }

        // ============================================================
        // MAP COMMUNITY MESSAGE
        // ============================================================

        private static CommunityMessage
            MapCommunityDocument(
                global::Appwrite.Models.Document document)
        {
            var data =
                document.Data ??
                new Dictionary<string, object?>();

            var createdAt =
                TryGetDateTime(
                    data,
                    "created_at",
                    document.CreatedAt);

            var groupId =
                TryGetString(
                    data,
                    "group_id",
                    string.Empty)
                ?? string.Empty;

            return new CommunityMessage
            {
                Id =
                    document.Id,

                MessageId =
                    TryGetString(
                        data,
                        "message_id",
                        document.Id)
                    ?? document.Id,

                SenderUid =
                    TryGetString(
                        data,
                        "sender_id",
                        string.Empty)
                    ?? string.Empty,

                ReceiverId =
                    TryGetString(
                        data,
                        "receiver_id",
                        null),

                GroupId =
                    groupId,

                ConversationId =
                    TryGetString(
                        data,
                        "conversation_id",
                        string.Empty)
                    ?? string.Empty,

                SenderName =
                    TryGetString(
                        data,
                        "sender_name",
                        "Community member")
                    ?? "Community member",

                Content =
                    TryGetString(
                        data,
                        "content",
                        string.Empty)
                    ?? string.Empty,

                CommunityId =
                    groupId,

                BranchId =
                    groupId,

                RegionId =
                    TryGetString(
                        data,
                        "region_id",
                        null),

                DistrictId =
                    TryGetString(
                        data,
                        "district_id",
                        null),

                MessageType =
                    TryGetString(
                        data,
                        "message_type",
                        "text")
                    ?? "text",

                Status =
                    TryGetString(
                        data,
                        "status",
                        "sent")
                    ?? "sent",

                CreatedAt =
                    createdAt,

                UpdatedAt =
                    TryGetNullableDateTime(
                        data,
                        "$updatedAt"),

                ReadAt =
                    TryGetNullableDateTime(
                        data,
                        "read_at")
            };
        }

        // ============================================================
        // MAP PRAYER DOCUMENT
        // ============================================================

        private static PrayerRequestDto
            MapPrayerDocument(
                global::Appwrite.Models.Document document)
        {
            var data =
                document.Data ??
                new Dictionary<string, object?>();

            var content =
                TryGetString(
                    data,
                    "content",
                    string.Empty);

            var title =
                string.Empty;

            var description =
                string.Empty;

            if (!string.IsNullOrWhiteSpace(content))
            {
                var lines =
                    content.Split(
                        new[]
                        {
                            "\r\n",
                            "\n"
                        },
                        StringSplitOptions.RemoveEmptyEntries);

                if (lines.Length > 0)
                {
                    title =
                        lines[0].Trim();

                    description =
                        string.Join(
                            Environment.NewLine,
                            lines.Skip(1))
                        .Trim();
                }
                else
                {
                    title =
                        content.Trim();
                }
            }

            return new PrayerRequestDto
            {
                Id =
                    Guid.TryParse(
                        document.Id,
                        out var id)
                        ? id
                        : Guid.NewGuid(),

                UserId =
                    Guid.TryParse(
                        TryGetString(
                            data,
                            "user_id",
                            string.Empty),
                        out var userId)
                        ? userId
                        : Guid.Empty,

                Title =
                    title,

                Description =
                    description,

                Status =
                    TryGetString(
                        data,
                        "status",
                        "Open"),

                CreatedAtUtc =
                    TryGetDateTime(
                        data,
                        "$createdAt",
                        document.CreatedAt),

                UpdatedAtUtc =
                    TryGetDateTime(
                        data,
                        "$updatedAt",
                        document.CreatedAt),

                IsDeleted =
                    false
            };
        }

        // ============================================================
        // MAP BIBLE DOCUMENT
        // ============================================================

        private static BiblePostDto?
            MapBibleDocument(
                global::Appwrite.Models.Document document)
        {
            var data =
                document.Data ??
                new Dictionary<string, object?>();

            var content =
                TryGetString(
                    data,
                    "content",
                    string.Empty);

            var payload =
                new BiblePostPayload();

            if (!string.IsNullOrWhiteSpace(content))
            {
                try
                {
                    payload =
                        JsonSerializer.Deserialize<BiblePostPayload>(
                            content)
                        ?? payload;
                }
                catch
                {
                    payload =
                        new BiblePostPayload();
                }
            }

            return new BiblePostDto
            {
                Id =
                    Guid.TryParse(
                        document.Id,
                        out var id)
                        ? id
                        : Guid.NewGuid(),

                UserId =
                    Guid.TryParse(
                        TryGetString(
                            data,
                            "user_id",
                            string.Empty),
                        out var userId)
                        ? userId
                        : Guid.Empty,

                PostType =
                    TryGetString(
                        data,
                        "post_type",
                        "BibleVerse"),

                BookId =
                    payload.BookId,

                ChapterNumber =
                    payload.ChapterNumber,

                VerseStart =
                    payload.VerseStart,

                VerseEnd =
                    payload.VerseEnd,

                CreatedAtUtc =
                    TryGetDateTime(
                        data,
                        "$createdAt",
                        document.CreatedAt)
            };
        }

        // ============================================================
        // STRING HELPER
        // ============================================================

        private static string? TryGetString(
            Dictionary<string, object?> data,
            string key,
            string? fallback)
        {
            if (data.TryGetValue(
                    key,
                    out var value) &&
                value is not null)
            {
                return Convert.ToString(value);
            }

            return fallback;
        }

        // ============================================================
        // DATE HELPER
        // ============================================================

        private static DateTime TryGetDateTime(
            Dictionary<string, object?> data,
            string key,
            string fallback)
        {
            if (data.TryGetValue(
                    key,
                    out var value) &&
                value is not null)
            {
                return DateTime.TryParse(
                           Convert.ToString(value),
                           out var dt)
                    ? dt
                    : DateTime.TryParse(
                          fallback,
                          out var fallbackDate)
                        ? fallbackDate
                        : DateTime.UtcNow;
            }

            return DateTime.TryParse(
                       fallback,
                       out var parsedFallback)
                ? parsedFallback
                : DateTime.UtcNow;
        }

        // ============================================================
        // NULLABLE DATE HELPER
        // ============================================================

        private static DateTime?
            TryGetNullableDateTime(
                Dictionary<string, object?> data,
                string key)
        {
            if (data.TryGetValue(
                    key,
                    out var value) &&
                value is not null)
            {
                return DateTime.TryParse(
                    Convert.ToString(value),
                    out var dt)
                    ? dt
                    : null;
            }

            return null;
        }

        // ============================================================
        // PRAYER CONTENT
        // ============================================================

        private static string BuildPrayerContent(
            string title,
            string description)
        {
            var parts =
                new List<string>();

            if (!string.IsNullOrWhiteSpace(title))
            {
                parts.Add(
                    title.Trim());
            }

            if (!string.IsNullOrWhiteSpace(description))
            {
                parts.Add(
                    description.Trim());
            }

            return string.Join(
                Environment.NewLine,
                parts);
        }

        // ============================================================
        // BIBLE POST PAYLOAD
        // ============================================================

        private sealed class BiblePostPayload
        {
            public string BookId { get; set; } =
                string.Empty;

            public int ChapterNumber { get; set; }

            public int VerseStart { get; set; }

            public int VerseEnd { get; set; }
        }
    }
}
