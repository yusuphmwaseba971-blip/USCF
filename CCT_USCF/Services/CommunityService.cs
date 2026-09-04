using System.Net.Http.Headers;
using System.Net.Http.Json;
using System.Text.Json;
using Appwrite;
using CCT_USCF.Models;
using CCT_USCF.Services.Appwrite;
using SQLite;

namespace CCT_USCF.Services
{
    public class CommunityService
    {
        // ============================================================
        // APPWRITE COLLECTIONS
        // ============================================================

        private const string MessagesCollectionId =
            AppwriteService.MessagesCollectionId;

        private const string CommunityMessagesCollectionId =
            MessagesCollectionId;

        private const string PrayerRequestsCollectionId =
            "cct_prayers";

        private const string BiblePostsCollectionId =
            "cct_posts";

        // ============================================================
        // SERVICES
        // ============================================================

        private readonly AuthService _authService;
        private readonly AppwriteService _appwriteService;
        private readonly HttpClient _httpClient;

        // ============================================================
        // LOCAL SQLITE COMMUNITY MESSAGE CACHE
        // ============================================================

        private SQLiteAsyncConnection? _messageCacheDatabase;

        private readonly SemaphoreSlim
            _messageCacheInitializationLock =
                new(1, 1);

        private bool _messageCacheInitialized;

        // ============================================================
        // SQLITE CACHE MODEL
        // ============================================================

        [Table("community_message_cache")]
        private sealed class CachedCommunityMessage
        {
            [PrimaryKey]
            public string MessageId { get; set; } = string.Empty;
            public string ClientMessageId { get; set; } = string.Empty;

            [Indexed]
public string CommunityId { get; set; } = string.Empty;

public string OrganizationalLevel { get; set; } = string.Empty;

public string BranchId { get; set; } = string.Empty;

public string RegionId { get; set; } = string.Empty;

public string DistrictId { get; set; } = string.Empty;

public string SenderUid { get; set; } = string.Empty;
            public string SenderName { get; set; } = string.Empty;

            public string Content { get; set; } = string.Empty;

            public string MessageType { get; set; } = "text";

            public string MediaUrl { get; set; } = string.Empty;

            public string ThumbnailUrl { get; set; } = string.Empty;

            public string FileName { get; set; } = string.Empty;

            public long FileSize { get; set; }

            public double Duration { get; set; }

            [Indexed]
            public DateTime CreatedAt { get; set; }
        }

        // ============================================================
        // SQLITE MIGRATION HELPER
        // ============================================================

        private sealed class SqliteColumnInfo
        {
            public string Name { get; set; } = string.Empty;
        }

        // ============================================================
        // CONSTRUCTOR
        // ============================================================

        public CommunityService(
            AuthService authService,
            AppwriteService appwriteService,
            HttpClient httpClient)
        {
            _authService =
                authService
                ?? throw new ArgumentNullException(
                    nameof(authService));

            _appwriteService =
                appwriteService
                ?? throw new ArgumentNullException(
                    nameof(appwriteService));

            _httpClient =
                httpClient
                ?? throw new ArgumentNullException(
                    nameof(httpClient));
        }

        // ============================================================
        // SQLITE CACHE DATABASE
        // ============================================================

        private async Task<SQLiteAsyncConnection>
            GetMessageCacheDatabaseAsync()
        {
            if (_messageCacheDatabase == null)
            {
                var databasePath =
                    Path.Combine(
                        FileSystem.AppDataDirectory,
                        "cct-uscf-community-cache.db3");

                _messageCacheDatabase =
                    new SQLiteAsyncConnection(databasePath);
            }

            if (!_messageCacheInitialized)
            {
                await _messageCacheInitializationLock.WaitAsync();

                try
                {
                    if (!_messageCacheInitialized)
                    {
                        // ------------------------------------------------
                        // Create table if it does not exist.
                        // ------------------------------------------------

                        await _messageCacheDatabase
                            .CreateTableAsync<CachedCommunityMessage>();

                        // ------------------------------------------------
                        // IMPORTANT:
                        //
                        // CreateTableAsync does NOT automatically add
                        // new columns to an existing SQLite table.
                        //
                        // Therefore we explicitly migrate the old
                        // community_message_cache table.
                        // ------------------------------------------------

                        await MigrateCommunityMessageCacheAsync(
                            _messageCacheDatabase);

                        _messageCacheInitialized = true;

                        System.Diagnostics.Debug.WriteLine(
                            "[COMMUNITY_CACHE] SQLite initialized: " +
                            $"{FileSystem.AppDataDirectory}");
                    }
                }
                finally
                {
                    _messageCacheInitializationLock.Release();
                }
            }

            return _messageCacheDatabase;
        }

        // ============================================================
        // SQLITE CACHE MIGRATION
        // ============================================================

        private static async Task
            MigrateCommunityMessageCacheAsync(
                SQLiteAsyncConnection database)
        {
            try
            {
                var columns =
                    await database.QueryAsync<SqliteColumnInfo>(
                        "PRAGMA table_info('community_message_cache');");

                var existingColumns =
                    columns
                        .Select(x => x.Name)
                        .Where(x =>
                            !string.IsNullOrWhiteSpace(x))
                        .ToHashSet(
                            StringComparer.OrdinalIgnoreCase);

var migrations = new Dictionary<string, string>
{
    ["MediaUrl"] =
        "ALTER TABLE community_message_cache " +
        "ADD COLUMN MediaUrl TEXT NOT NULL DEFAULT '';",

    ["ThumbnailUrl"] =
        "ALTER TABLE community_message_cache " +
        "ADD COLUMN ThumbnailUrl TEXT NOT NULL DEFAULT '';",

    ["FileName"] =
        "ALTER TABLE community_message_cache " +
        "ADD COLUMN FileName TEXT NOT NULL DEFAULT '';",

    ["FileSize"] =
        "ALTER TABLE community_message_cache " +
        "ADD COLUMN FileSize INTEGER NOT NULL DEFAULT 0;",

    ["Duration"] =
        "ALTER TABLE community_message_cache " +
        "ADD COLUMN Duration REAL NOT NULL DEFAULT 0;",

    ["OrganizationalLevel"] =
        "ALTER TABLE community_message_cache " +
        "ADD COLUMN OrganizationalLevel TEXT NOT NULL DEFAULT '';",

    ["BranchId"] =
        "ALTER TABLE community_message_cache " +
        "ADD COLUMN BranchId TEXT NOT NULL DEFAULT '';",

    ["RegionId"] =
        "ALTER TABLE community_message_cache " +
        "ADD COLUMN RegionId TEXT NOT NULL DEFAULT '';",

    ["DistrictId"] =
        "ALTER TABLE community_message_cache " +
        "ADD COLUMN DistrictId TEXT NOT NULL DEFAULT '';",

    ["ClientMessageId"] =
        "ALTER TABLE community_message_cache " +
        "ADD COLUMN ClientMessageId TEXT NOT NULL DEFAULT '';"
};

                foreach (var migration in migrations)
                {
                    if (existingColumns.Contains(
                            migration.Key))
                    {
                        continue;
                    }

                    await database.ExecuteAsync(
                        migration.Value);

                    System.Diagnostics.Debug.WriteLine(
                        "[COMMUNITY_CACHE] Added SQLite column: " +
                        migration.Key);
                }
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine(
                    "[COMMUNITY_CACHE] Migration failed: " +
                    ex);

                throw new InvalidOperationException(
                    "Unable to update the local community message cache.",
                    ex);
            }
        }

        // ============================================================
        // MAP SQLITE CACHE → COMMUNITY MESSAGE
        // ============================================================

        private static CommunityMessage
            MapCachedCommunityMessage(
                CachedCommunityMessage cached)
        {
            return new CommunityMessage
            {
                Id =
                    cached.MessageId,

                MessageId =
                    cached.MessageId,

                ClientMessageId = cached.ClientMessageId,

                SenderUid =
                    cached.SenderUid,

                SenderName =
                    string.IsNullOrWhiteSpace(
                        cached.SenderName)
                        ? "Community member"
                        : cached.SenderName,

                Content =
                    cached.Content,

CommunityId =
    cached.CommunityId,

OrganizationalLevel =
    string.IsNullOrWhiteSpace(
        cached.OrganizationalLevel)
        ? null
        : cached.OrganizationalLevel,

BranchId =
    string.IsNullOrWhiteSpace(
        cached.BranchId)
        ? null
        : cached.BranchId,

RegionId =
    string.IsNullOrWhiteSpace(
        cached.RegionId)
        ? null
        : cached.RegionId,

DistrictId =
    string.IsNullOrWhiteSpace(
        cached.DistrictId)
        ? null
        : cached.DistrictId,

MessageType =
                    string.IsNullOrWhiteSpace(
                        cached.MessageType)
                        ? "text"
                        : cached.MessageType,

                MediaUrl =
                    cached.MediaUrl,

                ThumbnailUrl =
                    cached.ThumbnailUrl,

                FileName =
                    cached.FileName,

                FileSize =
                    cached.FileSize,

                Duration =
                    cached.Duration,

                CreatedAt =
                    EnsureUtc(cached.CreatedAt),

                GroupId =
                    cached.CommunityId,


                Status =
                    "sent",

                UpdatedAt =
                    null,

                ReadAt =
                    null
            };
        }

        // ============================================================
        // MAP COMMUNITY MESSAGE → SQLITE CACHE
        // ============================================================

        private static CachedCommunityMessage
            MapToCachedCommunityMessage(
                CommunityMessage message)
        {
            var messageId =
                string.IsNullOrWhiteSpace(
                    message.MessageId)
                    ? message.Id
                    : message.MessageId;

            var communityId =
                message.CommunityId?.Trim()
                ?? string.Empty;

            var createdAt =
                EnsureUtc(message.CreatedAt);

            return new CachedCommunityMessage
            {
                MessageId =
                    messageId?.Trim()
                    ?? string.Empty,

                ClientMessageId =
                    message.ClientMessageId?.Trim()
                    ?? string.Empty,
CommunityId =
    communityId,

OrganizationalLevel =
    message.OrganizationalLevel
    ?? string.Empty,

BranchId =
    message.BranchId
    ?? string.Empty,

RegionId =
    message.RegionId
    ?? string.Empty,

DistrictId =
    message.DistrictId
    ?? string.Empty,

SenderUid =
                    message.SenderUid
                    ?? string.Empty,

                SenderName =
                    string.IsNullOrWhiteSpace(
                        message.SenderName)
                        ? "Community member"
                        : message.SenderName,

                Content =
                    message.Content
                    ?? string.Empty,

                MessageType =
                    string.IsNullOrWhiteSpace(
                        message.MessageType)
                        ? "text"
                        : message.MessageType,

                MediaUrl =
                    message.MediaUrl
                    ?? string.Empty,

                ThumbnailUrl =
                    message.ThumbnailUrl
                    ?? string.Empty,

                FileName =
                    message.FileName
                    ?? string.Empty,

                FileSize =
                    message.FileSize,

                Duration =
                    message.Duration,

                CreatedAt =
                    createdAt
            };
        }

        // ============================================================
        // CACHE ONE COMMUNITY MESSAGE
        // ============================================================

        public async Task
            CacheCommunityMessageAsync(
                CommunityMessage message)
        {
            if (message == null)
            {
                return;
            }

            var messageId =
                string.IsNullOrWhiteSpace(
                    message.MessageId)
                    ? message.Id
                    : message.MessageId;

            if (string.IsNullOrWhiteSpace(messageId))
            {
                return;
            }

            var communityId =
                message.CommunityId?.Trim()
                ?? string.Empty;

            if (string.IsNullOrWhiteSpace(communityId))
            {
                return;
            }

            var database =
                await GetMessageCacheDatabaseAsync();

            var cachedMessage =
                MapToCachedCommunityMessage(message);

            await database.InsertOrReplaceAsync(
                cachedMessage);

            System.Diagnostics.Debug.WriteLine(
                "[COMMUNITY_CACHE] Message cached: " +
                $"message_id={cachedMessage.MessageId}, " +
                $"community_id={cachedMessage.CommunityId}");
        }

        // ============================================================
        // CACHE MULTIPLE COMMUNITY MESSAGES
        // ============================================================

        public async Task
            CacheCommunityMessagesAsync(
                IEnumerable<CommunityMessage> messages)
        {
            if (messages == null)
            {
                return;
            }

            var database =
                await GetMessageCacheDatabaseAsync();

            var count = 0;

            foreach (var message in messages)
            {
                if (message == null)
                {
                    continue;
                }

                var messageId =
                    string.IsNullOrWhiteSpace(
                        message.MessageId)
                        ? message.Id
                        : message.MessageId;

                if (string.IsNullOrWhiteSpace(messageId))
                {
                    continue;
                }

                var communityId =
                    message.CommunityId?.Trim()
                    ?? string.Empty;

                if (string.IsNullOrWhiteSpace(communityId))
                {
                    continue;
                }

                await database.InsertOrReplaceAsync(
                    MapToCachedCommunityMessage(message));

                count++;
            }

            System.Diagnostics.Debug.WriteLine(
                "[COMMUNITY_CACHE] Batch cache completed: " +
                $"count={count}");
        }

        // ============================================================
        // DELETE MESSAGE FROM LOCAL CACHE
        // ============================================================

        private async Task
            DeleteCachedCommunityMessageAsync(
                string messageId)
        {
            if (string.IsNullOrWhiteSpace(messageId))
            {
                return;
            }

            var database =
                await GetMessageCacheDatabaseAsync();

            await database.DeleteAsync<CachedCommunityMessage>(
                messageId.Trim());

            System.Diagnostics.Debug.WriteLine(
                "[COMMUNITY_CACHE] Message removed: " +
                messageId);
        }

        // ============================================================
        // LOAD CACHED COMMUNITY MESSAGES
        // ============================================================

        public async Task<List<CommunityMessage>>
            GetCachedCommunityMessagesAsync(
                string communityId,
                int limit = 100)
        {
            if (string.IsNullOrWhiteSpace(communityId))
            {
                throw new ArgumentException(
                    "A community id is required.",
                    nameof(communityId));
            }

            var normalizedCommunityId =
                communityId.Trim();

            var safeLimit =
                Math.Clamp(limit, 1, 100);

            var database =
                await GetMessageCacheDatabaseAsync();

            var cachedRows =
                await database
                    .Table<CachedCommunityMessage>()
                    .Where(row =>
                        row.CommunityId ==
                        normalizedCommunityId)
                    .OrderByDescending(row =>
                        row.CreatedAt)
                    .Take(safeLimit)
                    .ToListAsync();

            return cachedRows
                .OrderBy(row => row.CreatedAt)
                .Select(MapCachedCommunityMessage)
                .ToList();
        }

        // ============================================================
        // LOAD GROUP MESSAGES WITH CACHE
        // ============================================================

        public async Task<List<CommunityMessage>>
            LoadGroupMessagesWithCacheAsync(
                string groupId,
                int limit = 100)
        {
            if (string.IsNullOrWhiteSpace(groupId))
            {
                throw new ArgumentException(
                    "A group id is required.",
                    nameof(groupId));
            }

            var normalizedGroupId =
                groupId.Trim();

            var safeLimit =
                Math.Clamp(limit, 1, 100);

            var cachedMessages =
                await GetCachedCommunityMessagesAsync(
                    normalizedGroupId,
                    safeLimit);

            try
            {
                var remoteMessages = await GetGroupMessagesAsync(normalizedGroupId, safeLimit);
                if (remoteMessages.Count > 0)
                    await CacheCommunityMessagesAsync(remoteMessages);
                return remoteMessages.Count > 0 ? remoteMessages : cachedMessages;
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine(
                    $"[COMMUNITY_CACHE] Remote load failed; using {cachedMessages.Count} cached messages: {ex.Message}");
                if (cachedMessages.Count > 0)
                    return cachedMessages;
                throw;
            }
        }

        // ============================================================
        // INCREMENTAL GROUP MESSAGE SYNC
        // ============================================================

        public async Task<List<CommunityMessage>>
            SyncNewerGroupMessagesAsync(
                string groupId,
                int limit = 100)
        {
            if (string.IsNullOrWhiteSpace(groupId))
            {
                throw new ArgumentException(
                    "A group id is required.",
                    nameof(groupId));
            }

            var normalizedGroupId =
                groupId.Trim();

            var safeLimit =
                Math.Clamp(limit, 1, 100);

            var database =
                await GetMessageCacheDatabaseAsync();

            var newestCached =
                await database
                    .Table<CachedCommunityMessage>()
                    .Where(row =>
                        row.CommunityId ==
                        normalizedGroupId)
                    .OrderByDescending(row =>
                        row.CreatedAt)
                    .FirstOrDefaultAsync();

            if (newestCached == null)
            {
                System.Diagnostics.Debug.WriteLine(
                    "[COMMUNITY_CACHE] Incremental sync found " +
                    "empty cache. Performing initial load for " +
                    $"{normalizedGroupId}.");

                var initialMessages =
                    await GetGroupMessagesAsync(
                        normalizedGroupId,
                        safeLimit);

                if (initialMessages.Count > 0)
                {
                    await CacheCommunityMessagesAsync(
                        initialMessages);
                }

                return initialMessages;
            }

            var newestCreatedAt =
                EnsureUtc(newestCached.CreatedAt);

            System.Diagnostics.Debug.WriteLine(
                "[COMMUNITY_CACHE] Incremental sync: " +
                $"community_id={normalizedGroupId}, " +
                $"newestCachedCreatedAt={newestCreatedAt:O}");

            var newMessages =
                await GetGroupMessagesAsync(
                    normalizedGroupId,
                    safeLimit,
                    newestCreatedAt);

            if (newMessages.Count == 0)
            {
                System.Diagnostics.Debug.WriteLine(
                    "[COMMUNITY_CACHE] No newer messages found for " +
                    $"community_id={normalizedGroupId}");

                return new List<CommunityMessage>();
            }

            await CacheCommunityMessagesAsync(
                newMessages);

            System.Diagnostics.Debug.WriteLine(
                "[COMMUNITY_CACHE] Incremental sync received " +
                $"{newMessages.Count} new messages.");

            return newMessages;
        }

        // ============================================================
        // APPWRITE REALTIME CHANNELS
        // ============================================================

        public string GetCommunityMessagesChannel()
        {
            return
                $"databases.{AppwriteService.DatabaseId}" +
                $".collections.{CommunityMessagesCollectionId}" +
                ".documents";
        }

        public string GetMessagesChannel()
        {
            return
                $"databases.{AppwriteService.DatabaseId}" +
                $".collections.{MessagesCollectionId}" +
                ".documents";
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

            var normalizedMessageType =
                string.IsNullOrWhiteSpace(messageType)
                    ? "text"
                    : messageType.Trim();

            if (normalizedMessageType == "text" &&
                string.IsNullOrWhiteSpace(trimmed))
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
                    ["sender_id"] =
                        firebaseUid,

                    ["content"] =
                        trimmed,

                    ["created_at"] =
                        DateTime.UtcNow.ToString("O"),

                    ["message_type"] =
                        normalizedMessageType,

                    ["status"] =
                        string.IsNullOrWhiteSpace(status)
                            ? "sent"
                            : status.Trim()
                };

            if (!string.IsNullOrWhiteSpace(
                    normalizedReceiverId))
            {
                payload["receiver_id"] =
                    normalizedReceiverId;

                payload["conversation_id"] =
                    BuildConversationId(
                        firebaseUid,
                        normalizedReceiverId);
            }

            if (!string.IsNullOrWhiteSpace(
                    normalizedGroupId))
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

                var document =
                    await _appwriteService.Databases.CreateDocument(
                        databaseId:
                            AppwriteService.DatabaseId,

                        collectionId:
                            MessagesCollectionId,

                        documentId:
                            messageId,

                        data:
                            payload,

                        permissions:
                            permissions);

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
        public async Task<List<Message>>
            GetConversationMessagesAsync(
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

        public async Task<List<CommunityMessage>>
            GetGroupMessagesAsync(
                string groupId,
                int limit = 100,
                DateTime? newerThan = null)
        {
            if (string.IsNullOrWhiteSpace(groupId))
            {
                throw new ArgumentException(
                    "A group id is required.",
                    nameof(groupId));
            }

            return await GetCommunityMessagesAsync(
                communityId:
                    groupId.Trim(),

                limit:
                    limit,

                newerThan:
                    newerThan,

                organizationalLevel:
                    "Branch",

                branchId:
                    groupId.Trim());
        }

        // ============================================================
        // CREATE COMMUNITY MESSAGE
        //
        // Supports:
        // text
        // image
        // video
        // audio
        //
        // Media itself is stored externally.
        // This document stores the media URL and metadata.
        // ============================================================

        public async Task<CommunityMessage>
            CreateCommunityMessageAsync(
                string communityId,
                string content,
                string messageType = "text",
                string? branchId = null,
                string? regionId = null,
                string? districtId = null,
                string? organizationalLevel = null,
                string? mediaUrl = null,
                string? thumbnailUrl = null,
                string? fileName = null,
                long fileSize = 0,
                double duration = 0,
                string? clientMessageId = null)
        {
            if (string.IsNullOrWhiteSpace(communityId))
            {
                throw new ArgumentException(
                    "A community id is required.",
                    nameof(communityId));
            }

            var normalizedCommunityId =
                communityId.Trim();

            var trimmed =
                content?.Trim() ?? string.Empty;

            var normalizedMessageType =
                string.IsNullOrWhiteSpace(messageType)
                    ? "text"
                    : messageType.Trim().ToLowerInvariant();

            // --------------------------------------------------------
            // VALID MESSAGE TYPES
            // --------------------------------------------------------

            var allowedTypes =
                new HashSet<string>(
                    StringComparer.OrdinalIgnoreCase)
                {
                    "text",
                    "image",
                    "video",
                    "audio"
                };

            if (!allowedTypes.Contains(
                    normalizedMessageType))
            {
                throw new ArgumentException(
                    "Unsupported community message type. " +
                    "Allowed types are text, image, video, and audio.",
                    nameof(messageType));
            }

            // --------------------------------------------------------
            // TEXT VALIDATION
            // --------------------------------------------------------

            if (normalizedMessageType == "text" &&
                string.IsNullOrWhiteSpace(trimmed))
            {
                throw new ArgumentException(
                    "Message content is required.",
                    nameof(content));
            }

            // --------------------------------------------------------
            // MEDIA VALIDATION
            // --------------------------------------------------------

            if (normalizedMessageType != "text" &&
                string.IsNullOrWhiteSpace(mediaUrl))
            {
                throw new ArgumentException(
                    "Media URL is required for media messages.",
                    nameof(mediaUrl));
            }

            var firebaseUid =
                _authService.GetCurrentFirebaseUid();

            if (string.IsNullOrWhiteSpace(firebaseUid))
            {
                throw new InvalidOperationException(
                    "The current Firebase user is not available.");
            }

            var currentUser =
                await _authService.GetCurrentUserAsync();

            if (currentUser == null)
            {
                throw new InvalidOperationException(
                    "The current user profile is not available.");
            }

            var senderName =
                currentUser.FullName?.Trim();

            if (string.IsNullOrWhiteSpace(senderName))
            {
                senderName =
                    "Community member";
            }

            var messageId =
                Guid.NewGuid().ToString("N");

            var createdAt =
                DateTime.UtcNow;

            try
            {
                System.Diagnostics.Debug.WriteLine(
                    "================================================");

                System.Diagnostics.Debug.WriteLine(
                    "[APPWRITE_COMMUNITY_MESSAGE] CREATE START");

                System.Diagnostics.Debug.WriteLine(
                    $"Database={AppwriteService.DatabaseId}");

                System.Diagnostics.Debug.WriteLine(
                    $"Collection={CommunityMessagesCollectionId}");

                System.Diagnostics.Debug.WriteLine(
                    $"DocumentId={messageId}");

                System.Diagnostics.Debug.WriteLine(
                    $"sender_uid={firebaseUid}");

                System.Diagnostics.Debug.WriteLine(
                    $"sender_name={senderName}");

                System.Diagnostics.Debug.WriteLine(
                    $"community_id={normalizedCommunityId}");

                System.Diagnostics.Debug.WriteLine(
                    $"message_type={normalizedMessageType}");

                System.Diagnostics.Debug.WriteLine(
                    $"media_url={mediaUrl}");

                System.Diagnostics.Debug.WriteLine(
                    $"file_name={fileName}");

                System.Diagnostics.Debug.WriteLine(
                    $"file_size={fileSize}");

                System.Diagnostics.Debug.WriteLine(
                    $"duration={duration}");

                System.Diagnostics.Debug.WriteLine(
                    $"created_at={createdAt:O}");

                System.Diagnostics.Debug.WriteLine(
                    "================================================");

                var createdMessage =
                    await SendAuthorizedCommunityApiAsync<CommunityMessage>(
                        HttpMethod.Post,
                        "api/community/messages/group",
                        new
                        {
                            communityId = normalizedCommunityId,
                            clientMessageId = clientMessageId?.Trim(),
                            organizationalLevel = organizationalLevel ?? "Branch",
                            branchId = ParseOptionalInt(branchId),
                            regionId = ParseOptionalInt(regionId),
                            districtId = ParseOptionalInt(districtId),
                            content = trimmed,
                            messageType = normalizedMessageType,
                            mediaUrl = mediaUrl?.Trim(),
                            thumbnailUrl = thumbnailUrl?.Trim(),
                            fileName = fileName?.Trim(),
                            fileSize = Math.Max(0, fileSize),
                            duration = Math.Max(0, duration)
                        });

                System.Diagnostics.Debug.WriteLine(
                    "[APPWRITE_COMMUNITY_MESSAGE] CREATE SUCCESS");

                if (createdMessage == null ||
                    string.IsNullOrWhiteSpace(createdMessage.MessageId))
                {
                    throw new InvalidOperationException(
                        "Community API returned an invalid created message.");
                }

                return createdMessage;
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine(
                    "================================================");

                System.Diagnostics.Debug.WriteLine(
                    "[APPWRITE_COMMUNITY_MESSAGE] CREATE FAILED");

                System.Diagnostics.Debug.WriteLine(
                    $"ExceptionType={ex.GetType().FullName}");

                System.Diagnostics.Debug.WriteLine(
                    $"Message={ex.Message}");

                System.Diagnostics.Debug.WriteLine(
                    $"InnerException={ex.InnerException?.Message}");

                System.Diagnostics.Debug.WriteLine(
                    $"FullException={ex}");

                System.Diagnostics.Debug.WriteLine(
                    "================================================");

                throw;
            }
        }

        // ============================================================
        public Task<BranchInvitationResponse> CreateBranchInvitationAsync(int branchId)
        {
            return SendAuthorizedCommunityApiAsync<BranchInvitationResponse>(
                HttpMethod.Post,
                "api/community/branch-invitations",
                new { branchId });
        }

        public Task AcceptBranchInvitationAsync(string token)
        {
            if (string.IsNullOrWhiteSpace(token))
                throw new ArgumentException("Invitation token is required.", nameof(token));

            return SendAuthorizedCommunityApiAsync<object>(
                HttpMethod.Post,
                "api/community/branch-invitations/accept",
                new { token = token.Trim() });
        }

        public sealed class BranchInvitationResponse
        {
            public string Url { get; set; } = string.Empty;
            public string BranchName { get; set; } = string.Empty;
            public DateTime ExpiresAtUtc { get; set; }
        }

        // UPDATE COMMUNITY MESSAGE
        //
        // IMPORTANT:
        // Only the original sender may edit the message.
        //
        // For text messages:
        // content is updated.
        //
        // For media messages:
        // the existing media remains unchanged and only content
        // can be changed.
        // ============================================================

        public async Task<CommunityMessage>
            UpdateCommunityMessageAsync(
                string messageId,
                string content)
        {
            if (string.IsNullOrWhiteSpace(messageId))
            {
                throw new ArgumentException(
                    "A message id is required.",
                    nameof(messageId));
            }

            var normalizedMessageId =
                messageId.Trim();

            var trimmedContent =
                content?.Trim() ?? string.Empty;

            if (string.IsNullOrWhiteSpace(trimmedContent))
            {
                throw new ArgumentException(
                    "Message content is required.",
                    nameof(content));
            }

            var currentFirebaseUid =
                _authService.GetCurrentFirebaseUid();

            if (string.IsNullOrWhiteSpace(
                    currentFirebaseUid))
            {
                throw new InvalidOperationException(
                    "The current Firebase user is not available.");
            }

            try
            {
                var document =
                    await _appwriteService.Databases.GetDocument(
                        databaseId:
                            AppwriteService.DatabaseId,

                        collectionId:
                            CommunityMessagesCollectionId,

                        documentId:
                            normalizedMessageId);

                var data =
                    document.Data ??
                    new Dictionary<string, object?>();

                var senderUid =
                    TryGetString(
                        data,
                        "sender_uid",
                        string.Empty)
                    ?? string.Empty;

                if (!string.Equals(
                        senderUid,
                        currentFirebaseUid,
                        StringComparison.Ordinal))
                {
                    throw new UnauthorizedAccessException(
                        "You are not authorized to edit this message.");
                }

                var updatedAt =
                    DateTime.UtcNow;

                var updated =
                    await _appwriteService.Databases.UpdateDocument(
                        databaseId:
                            AppwriteService.DatabaseId,

                        collectionId:
                            CommunityMessagesCollectionId,

                        documentId:
                            normalizedMessageId,

                        data:
                            new Dictionary<string, object?>
                            {
                                ["content"] =
                                    trimmedContent,

                                ["updated_at"] =
                                    updatedAt.ToString("O")
                            },

                        permissions:
                            null,

                        transactionId:
                            null);

                var result =
                    MapCommunityDocument(updated);

                // ----------------------------------------------------
                // Update local cache immediately.
                // ----------------------------------------------------

                await CacheCommunityMessageAsync(
                    result);

                System.Diagnostics.Debug.WriteLine(
                    "[APPWRITE_COMMUNITY_MESSAGE] UPDATE SUCCESS: " +
                    normalizedMessageId);

                return result;
            }
            catch (UnauthorizedAccessException)
            {
                throw;
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine(
                    "[APPWRITE_COMMUNITY_MESSAGE] UPDATE FAILED");

                System.Diagnostics.Debug.WriteLine(
                    $"Message={ex.Message}");

                System.Diagnostics.Debug.WriteLine(
                    $"Inner={ex.InnerException?.Message}");

                throw new InvalidOperationException(
                    "Unable to edit message.",
                    ex);
            }
        }

        // ============================================================
        // DELETE COMMUNITY MESSAGE
        //
        // IMPORTANT:
        // Only the original sender may delete the message.
        // ============================================================

        public async Task<bool>
            DeleteCommunityMessageAsync(
                string messageId)
        {
            if (string.IsNullOrWhiteSpace(messageId))
            {
                throw new ArgumentException(
                    "A message id is required.",
                    nameof(messageId));
            }

            var normalizedMessageId =
                messageId.Trim();

            var currentFirebaseUid =
                _authService.GetCurrentFirebaseUid();

            if (string.IsNullOrWhiteSpace(
                    currentFirebaseUid))
            {
                throw new InvalidOperationException(
                    "The current Firebase user is not available.");
            }

            try
            {
                var document =
                    await _appwriteService.Databases.GetDocument(
                        databaseId:
                            AppwriteService.DatabaseId,

                        collectionId:
                            CommunityMessagesCollectionId,

                        documentId:
                            normalizedMessageId);

                var data =
                    document.Data ??
                    new Dictionary<string, object?>();

                var senderUid =
                    TryGetString(
                        data,
                        "sender_uid",
                        string.Empty)
                    ?? string.Empty;

                if (!string.Equals(
                        senderUid,
                        currentFirebaseUid,
                        StringComparison.Ordinal))
                {
                    throw new UnauthorizedAccessException(
                        "You are not authorized to delete this message.");
                }

                await _appwriteService.Databases.DeleteDocument(
                    databaseId:
                        AppwriteService.DatabaseId,

                    collectionId:
                        CommunityMessagesCollectionId,

                    documentId:
                        normalizedMessageId,

                    transactionId:
                        null);

                // ----------------------------------------------------
                // Remove from local cache.
                // ----------------------------------------------------

                await DeleteCachedCommunityMessageAsync(
                    normalizedMessageId);

                System.Diagnostics.Debug.WriteLine(
                    "[APPWRITE_COMMUNITY_MESSAGE] DELETE SUCCESS: " +
                    normalizedMessageId);

                return true;
            }
            catch (UnauthorizedAccessException)
            {
                throw;
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine(
                    "[APPWRITE_COMMUNITY_MESSAGE] DELETE FAILED");

                System.Diagnostics.Debug.WriteLine(
                    $"Message={ex.Message}");

                System.Diagnostics.Debug.WriteLine(
                    $"Inner={ex.InnerException?.Message}");

                throw new InvalidOperationException(
                    "Unable to delete message.",
                    ex);
            }
        }

        // ============================================================
        // LOAD COMMUNITY MESSAGES
        // ============================================================

        public async Task<List<CommunityMessage>>
            GetCommunityMessagesAsync(
                string communityId,
                int limit = 50,
                DateTime? newerThan = null,
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

            var normalizedCommunityId =
                communityId.Trim();

            var safeLimit =
                Math.Clamp(limit, 1, 100);

            try
            {
                System.Diagnostics.Debug.WriteLine(
                    "================================================");

                System.Diagnostics.Debug.WriteLine(
                    "[APPWRITE_COMMUNITY_MESSAGE] LOAD START");

                System.Diagnostics.Debug.WriteLine(
                    $"Database={AppwriteService.DatabaseId}");

                System.Diagnostics.Debug.WriteLine(
                    $"Collection={CommunityMessagesCollectionId}");

                System.Diagnostics.Debug.WriteLine(
                    $"community_id={normalizedCommunityId}");

                System.Diagnostics.Debug.WriteLine(
                    $"limit={safeLimit}");

                System.Diagnostics.Debug.WriteLine(
                    $"newerThan={newerThan:O}");

                var requestUri =
                    "api/community/messages/group" +
                    $"?communityId={Uri.EscapeDataString(normalizedCommunityId)}" +
                    $"&organizationalLevel={Uri.EscapeDataString(organizationalLevel ?? "Branch")}" +
                    BuildOptionalQuery("branchId", branchId) +
                    BuildOptionalQuery("regionId", regionId) +
                    BuildOptionalQuery("districtId", districtId) +
                    $"&limit={safeLimit}";

                var messages =
                    await SendAuthorizedCommunityApiAsync<List<CommunityMessage>>(
                        HttpMethod.Get,
                        requestUri);

                messages =
                    messages
                        .Where(message =>
                            string.Equals(
                                message.CommunityId,
                                normalizedCommunityId,
                                StringComparison.Ordinal))
                        .OrderBy(message =>
                            message.CreatedAt)
                        .ToList();

                System.Diagnostics.Debug.WriteLine(
                    "[APPWRITE_COMMUNITY_MESSAGE] LOAD SUCCESS");

                System.Diagnostics.Debug.WriteLine(
                    $"MessageCount={messages.Count}");

                System.Diagnostics.Debug.WriteLine(
                    "================================================");

                return messages;
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine(
                    "================================================");

                System.Diagnostics.Debug.WriteLine(
                    "[APPWRITE_COMMUNITY_MESSAGE] LOAD FAILED");

                System.Diagnostics.Debug.WriteLine(
                    $"ExceptionType={ex.GetType().FullName}");

                System.Diagnostics.Debug.WriteLine(
                    $"Message={ex.Message}");

                System.Diagnostics.Debug.WriteLine(
                    $"InnerException={ex.InnerException?.Message}");

                System.Diagnostics.Debug.WriteLine(
                    $"FullException={ex}");

                System.Diagnostics.Debug.WriteLine(
                    "================================================");

                throw;
            }
        }

        // ============================================================
        // AUTHORIZED COMMUNITY API
        // ============================================================

        private async Task<T>
            SendAuthorizedCommunityApiAsync<T>(
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

            var rawJson =
                await response.Content.ReadAsStringAsync();

            System.Diagnostics.Debug.WriteLine(
                $"[APPWRITE_COMMUNITY] RESPONSE STATUS: {(int)response.StatusCode} {response.StatusCode}");
            System.Diagnostics.Debug.WriteLine(
                $"[APPWRITE_COMMUNITY] RESPONSE URI: {request.RequestUri}");
            System.Diagnostics.Debug.WriteLine(
                $"[APPWRITE_COMMUNITY] RESPONSE CONTENT-TYPE: {response.Content.Headers.ContentType}");
            System.Diagnostics.Debug.WriteLine(
                $"[APPWRITE_COMMUNITY] RAW RESPONSE: {rawJson}");

            if (response.StatusCode ==
                    System.Net.HttpStatusCode.Unauthorized ||
                response.StatusCode ==
                    System.Net.HttpStatusCode.Forbidden)
            {
                System.Diagnostics.Debug.WriteLine(
                    $"[APPWRITE_COMMUNITY] API authorization failed: " +
                    $"status={(int)response.StatusCode}, uri={requestUri}");

                throw new UnauthorizedAccessException(
                    "You are not authorized for this community group.");
            }

            if (!response.IsSuccessStatusCode)
            {
                System.Diagnostics.Debug.WriteLine(
                    $"[APPWRITE_COMMUNITY] API request failed: " +
                    $"status={(int)response.StatusCode}, uri={requestUri}, " +
                    $"response={rawJson}");

                throw new InvalidOperationException(
                    $"Community API request failed with status " +
                    $"{(int)response.StatusCode}: {rawJson}");
            }

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

            if (typeof(T) ==
                typeof(List<CommunityMessage>))
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

        private static int? ParseOptionalInt(string? value)
        {
            return int.TryParse(value, out var parsed) && parsed > 0
                ? parsed
                : null;
        }

        private static string BuildOptionalQuery(string name, string? value)
        {
            return int.TryParse(value, out var parsed) && parsed > 0
                ? $"&{name}={parsed}"
                : string.Empty;
        }

        // ============================================================
        // DESERIALIZE COMMUNITY MESSAGE
        // ============================================================

        private static CommunityMessage
            DeserializeCommunityMessage(
                string json,
                JsonSerializerOptions options)
        {
            using var document = JsonDocument.Parse(json);
            var root = document.RootElement;

            if (root.ValueKind ==
                JsonValueKind.Object)
            {
                if (TryGetPropertyIgnoreCase(root, "message", out var messageValue) &&
                    messageValue.ValueKind == JsonValueKind.Object)
                {
                    return DeserializeMessageObject(messageValue, options);
                }

                if (TryGetPropertyIgnoreCase(root, "data", out var dataValue) &&
                    dataValue.ValueKind == JsonValueKind.Object)
                {
                    return DeserializeMessageObject(dataValue, options);
                }

                return DeserializeMessageObject(root, options);
            }

            throw new JsonException(
                "Community API response did not contain a message object.");
        }

        // ============================================================
        // DESERIALIZE COMMUNITY MESSAGES
        // ============================================================

        private static List<CommunityMessage>
            DeserializeCommunityMessages(
                string json,
                JsonSerializerOptions options)
        {
            using var document = JsonDocument.Parse(json);
            var root = document.RootElement;

            if (root.ValueKind ==
                JsonValueKind.Array)
            {
                return DeserializeMessageArray(root, options);
            }

            if (root.ValueKind ==
                JsonValueKind.Object)
            {
                foreach (var propertyName in new[] { "messages", "data", "items", "results" })
                {
                    if (TryGetPropertyIgnoreCase(root, propertyName, out var value) &&
                        value.ValueKind == JsonValueKind.Array)
                    {
                        return DeserializeMessageArray(value, options);
                    }
                }
            }

            throw new JsonException(
                "Community API response did not contain a message list.");
        }

        private static CommunityMessage DeserializeMessageObject(
            JsonElement value,
            JsonSerializerOptions options)
        {
            var message = JsonSerializer.Deserialize<CommunityMessage>(
                value.GetRawText(),
                options);

            if (message is null ||
                (string.IsNullOrWhiteSpace(message.MessageId) &&
                 string.IsNullOrWhiteSpace(message.ClientMessageId) &&
                 string.IsNullOrWhiteSpace(message.Id)))
            {
                throw new JsonException(
                    "Community API message payload did not contain a message identifier.");
            }

            return message;
        }

        private static List<CommunityMessage> DeserializeMessageArray(
            JsonElement value,
            JsonSerializerOptions options)
        {
            return JsonSerializer.Deserialize<List<CommunityMessage>>(
                       value.GetRawText(),
                       options)
                   ?? throw new JsonException(
                       "Community API message list payload was empty.");
        }

        private static bool TryGetPropertyIgnoreCase(
            JsonElement objectElement,
            string propertyName,
            out JsonElement value)
        {
            foreach (var property in objectElement.EnumerateObject())
            {
                if (string.Equals(
                        property.Name,
                        propertyName,
                        StringComparison.OrdinalIgnoreCase))
                {
                    value = property.Value;
                    return true;
                }
            }

            value = default;
            return false;
        }

        // ============================================================
        // MARK PRIVATE MESSAGE AS READ
        // ============================================================

        [Obsolete]
        public async Task<Message?>
            MarkMessageAsReadAsync(
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

            if (string.IsNullOrWhiteSpace(
                    currentFirebaseUid))
            {
                throw new InvalidOperationException(
                    "The current Firebase user is not available.");
            }

            try
            {
                var document =
                    await _appwriteService.Databases.GetDocument(
                        databaseId:
                            AppwriteService.DatabaseId,

                        collectionId:
                            MessagesCollectionId,

                        documentId:
                            messageId);

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
                        databaseId:
                            AppwriteService.DatabaseId,

                        collectionId:
                            MessagesCollectionId,

                        documentId:
                            messageId,

                        data:
                            new Dictionary<string, object?>
                            {
                                ["status"] =
                                    "read",

                                ["read_at"] =
                                    DateTime.UtcNow.ToString("O")
                            },

                        permissions:
                            null,

                        transactionId:
                            null);

                return MapMessageDocument(updated);
            }
            catch (UnauthorizedAccessException)
            {
                throw;
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine(
                    "========== APPWRITE PRIVATE MESSAGE READ ERROR ==========");

                System.Diagnostics.Debug.WriteLine(
                    $"Exception Type: {ex.GetType().FullName}");

                System.Diagnostics.Debug.WriteLine(
                    $"Message: {ex.Message}");

                System.Diagnostics.Debug.WriteLine(
                    $"Inner Exception: {ex.InnerException?.Message}");

                System.Diagnostics.Debug.WriteLine(
                    $"Full Exception: {ex}");

                System.Diagnostics.Debug.WriteLine(
                    "==========================================================");

                throw;
            }
        }

        // ============================================================
        // DELETE PRIVATE MESSAGE
        // ============================================================

        [Obsolete]
        public async Task<bool>
            DeleteMessageAsync(
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

            if (string.IsNullOrWhiteSpace(
                    currentFirebaseUid))
            {
                throw new InvalidOperationException(
                    "The current Firebase user is not available.");
            }

            try
            {
                var document =
                    await _appwriteService.Databases.GetDocument(
                        databaseId:
                            AppwriteService.DatabaseId,

                        collectionId:
                            MessagesCollectionId,

                        documentId:
                            messageId);

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
                    databaseId:
                        AppwriteService.DatabaseId,

                    collectionId:
                        MessagesCollectionId,

                    documentId:
                        messageId,

                    transactionId:
                        null);

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
        // CONVERSATION IDS
        // ============================================================

        private static string
            BuildGroupConversationId(
                string groupId)
        {
            return
                $"branch:{groupId.Trim()}";
        }

        private static string
            BuildConversationId(
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
                .Distinct(
                    StringComparer.Ordinal)
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

        private static bool
            IsCurrentUserAuthorizedForGroup(
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

            if (!string.IsNullOrWhiteSpace(receiverUid))
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
        // APPWRITE USER ID
        // ============================================================

        private Task<string>
            RequireAppwriteUserIdAsync()
        {
            return Task.FromResult(
                string.Empty);
        }

        private Task<string>
            TryResolveAppwriteUserIdAsync(
                string firebaseUid)
        {
            return Task.FromResult(
                string.Empty);
        }

        // ============================================================
        // MAP PRIVATE MESSAGE
        // ============================================================

        private static Message
            MapMessageDocument(
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
        // MAP COMMUNITY MESSAGE
        // ============================================================

        private static CommunityMessage
            MapCommunityDocument(
                global::Appwrite.Models.Document document)
        {
            var data =
                document.Data ??
                new Dictionary<string, object?>();

            var messageId =
                TryGetString(
                    data,
                    "message_id",
                    document.Id)
                ?? document.Id;

            var senderUid =
                TryGetString(
                    data,
                    "sender_uid",
                    string.Empty)
                ?? string.Empty;

            var senderName =
                TryGetString(
                    data,
                    "sender_name",
                    "Community member")
                ?? "Community member";

            var content =
                TryGetString(
                    data,
                    "content",
                    string.Empty)
                ?? string.Empty;

var communityId =
    TryGetString(
        data,
        "community_id",
        string.Empty)
    ?? string.Empty;

var organizationalLevel =
    TryGetString(
        data,
        "organizational_level",
        null)
    ?? TryGetString(
        data,
        "organization_type",
        null);

var branchId =
    TryGetString(
        data,
        "branch_id",
        null);

var regionId =
    TryGetString(
        data,
        "region_id",
        null);

var districtId =
    TryGetString(
        data,
        "district_id",
        null);

var messageType =
    TryGetString(
        data,
        "message_type",
        "text")
    ?? "text";
            var mediaUrl =
                TryGetString(
                    data,
                    "media_url",
                    string.Empty)
                ?? string.Empty;

            var thumbnailUrl =
                TryGetString(
                    data,
                    "thumbnail_url",
                    string.Empty)
                ?? string.Empty;

            var fileName =
                TryGetString(
                    data,
                    "file_name",
                    string.Empty)
                ?? string.Empty;

            var fileSize =
                TryGetLong(
                    data,
                    "file_size");

            var duration =
                TryGetDouble(
                    data,
                    "duration");

            var createdAt =
                TryGetDateTime(
                    data,
                    "created_at",
                    document.CreatedAt);

            var updatedAt =
                TryGetNullableDateTime(
                    data,
                    "updated_at");

            // --------------------------------------------------------
            // Some Appwrite responses may expose the system
            // updatedAt field as $updatedAt.
            // --------------------------------------------------------

            if (!updatedAt.HasValue)
            {
                updatedAt =
                    TryGetNullableDateTime(
                        data,
                        "$updatedAt");
            }

            return new CommunityMessage
            {
                Id =
                    document.Id,

                MessageId =
                    messageId,

                SenderUid =
                    senderUid,

                SenderName =
                    senderName,

                Content =
                    content,

CommunityId =
    communityId,

OrganizationalLevel =
    organizationalLevel,

BranchId =
    branchId,

RegionId =
    regionId,

DistrictId =
    districtId,

MessageType =
    messageType,

MediaUrl =
    mediaUrl,
                ThumbnailUrl =
                    thumbnailUrl,

                FileName =
                    fileName,

                FileSize =
                    fileSize,

                Duration =
                    duration,

                CreatedAt =
                    createdAt,

                UpdatedAt =
                    updatedAt,

 GroupId =
    communityId,

ReceiverId =
    null,

ConversationId =
    string.Empty,

                Status =
                    "sent",

                ReadAt =
                    null
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
                    ["user_id"] =
                        userId,

                    ["content"] =
                        BuildPrayerContent(
                            title,
                            description),

                    ["leader_id"] =
                        null,

                    ["is_private"] =
                        false,

                    ["status"] =
                        "Open"
                };

            try
            {
                var document =
                    await _appwriteService.Databases.CreateDocument(
                        databaseId:
                            AppwriteConfig.DatabaseId,

                        collectionId:
                            PrayerRequestsCollectionId,

                        documentId:
                            documentId,

                        data:
                            payload,

                        permissions:
                            null);

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
            DeletePrayerRequestAsync(
                Guid id)
        {
            try
            {
                await _appwriteService.Databases.DeleteDocument(
                    databaseId:
                        AppwriteConfig.DatabaseId,

                    collectionId:
                        PrayerRequestsCollectionId,

                    documentId:
                        id.ToString());

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
            GetBiblePostsAsync(
                int limit = 50)
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
                    ["user_id"] =
                        userId,

                    ["post_type"] =
                        "BibleVerse",

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
                        databaseId:
                            AppwriteConfig.DatabaseId,

                        collectionId:
                            BiblePostsCollectionId,

                        documentId:
                            documentId,

                        data:
                            payload,

                        permissions:
                            null);

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
            DeleteBiblePostAsync(
                Guid id)
        {
            try
            {
                await _appwriteService.Databases.DeleteDocument(
                    databaseId:
                        AppwriteConfig.DatabaseId,

                    collectionId:
                        BiblePostsCollectionId,

                    documentId:
                        id.ToString());

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
                        JsonSerializer.Deserialize<
                            BiblePostPayload>(
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

        private static string?
            TryGetString(
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
        // LONG HELPER
        // ============================================================

        private static long
            TryGetLong(
                Dictionary<string, object?> data,
                string key)
        {
            if (!data.TryGetValue(
                    key,
                    out var value) ||
                value is null)
            {
                return 0;
            }

            try
            {
                if (value is long longValue)
                {
                    return longValue;
                }

                if (value is int intValue)
                {
                    return intValue;
                }

                if (value is double doubleValue)
                {
                    return Convert.ToInt64(doubleValue);
                }

                if (value is decimal decimalValue)
                {
                    return Convert.ToInt64(decimalValue);
                }

                if (long.TryParse(
                        Convert.ToString(value),
                        out var parsed))
                {
                    return parsed;
                }
            }
            catch
            {
                // Ignore malformed values.
            }

            return 0;
        }

        // ============================================================
        // DOUBLE HELPER
        // ============================================================

        private static double
            TryGetDouble(
                Dictionary<string, object?> data,
                string key)
        {
            if (!data.TryGetValue(
                    key,
                    out var value) ||
                value is null)
            {
                return 0;
            }

            try
            {
                if (value is double doubleValue)
                {
                    return doubleValue;
                }

                if (value is float floatValue)
                {
                    return floatValue;
                }

                if (value is decimal decimalValue)
                {
                    return Convert.ToDouble(decimalValue);
                }

                if (double.TryParse(
                        Convert.ToString(value),
                        out var parsed))
                {
                    return parsed;
                }
            }
            catch
            {
                // Ignore malformed values.
            }

            return 0;
        }

        // ============================================================
        // DATE HELPER
        // ============================================================

        private static DateTime
            TryGetDateTime(
                Dictionary<string, object?> data,
                string key,
                string fallback)
        {
            if (data.TryGetValue(
                    key,
                    out var value) &&
                value is not null)
            {
                if (value is DateTime dateTime)
                {
                    return EnsureUtc(dateTime);
                }

                if (DateTime.TryParse(
                        Convert.ToString(value),
                        out var parsed))
                {
                    return EnsureUtc(parsed);
                }
            }

            if (DateTime.TryParse(
                    fallback,
                    out var fallbackDate))
            {
                return EnsureUtc(fallbackDate);
            }

            return DateTime.UtcNow;
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
                if (value is DateTime dateTime)
                {
                    return EnsureUtc(dateTime);
                }

                if (DateTime.TryParse(
                        Convert.ToString(value),
                        out var parsed))
                {
                    return EnsureUtc(parsed);
                }
            }

            return null;
        }

        // ============================================================
        // UTC NORMALIZATION
        // ============================================================

        private static DateTime
            EnsureUtc(DateTime value)
        {
            return value.Kind switch
            {
                DateTimeKind.Utc =>
                    value,

                DateTimeKind.Local =>
                    value.ToUniversalTime(),

                _ =>
                    DateTime.SpecifyKind(
                        value,
                        DateTimeKind.Utc)
            };
        }

        // ============================================================
        // PRAYER CONTENT
        // ============================================================

        private static string
            BuildPrayerContent(
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

        public async Task<List<NationalCommunityPost>> GetNationalPostsAsync(int limit = 20)
        {
            using var request = new HttpRequestMessage(HttpMethod.Get, $"api/community/national?limit={Math.Clamp(limit, 1, 50)}");
            await AddFirebaseAuthorizationAsync(request);
            using var response = await _httpClient.SendAsync(request);
            response.EnsureSuccessStatusCode();
            return await response.Content.ReadFromJsonAsync<List<NationalCommunityPost>>() ?? new();
        }

        public async Task<NationalCommunityPost> CreateNationalPostAsync(NationalCommunityCreateRequest requestDto)
        {
            using var request = new HttpRequestMessage(HttpMethod.Post, "api/community/national")
            {
                Content = JsonContent.Create(requestDto)
            };
            await AddFirebaseAuthorizationAsync(request);
            using var response = await _httpClient.SendAsync(request);
            var body = await response.Content.ReadAsStringAsync();
            if (!response.IsSuccessStatusCode)
                throw new InvalidOperationException(body);
            return JsonSerializer.Deserialize<NationalCommunityPost>(
                body,
                new JsonSerializerOptions(JsonSerializerDefaults.Web))
                ?? throw new InvalidOperationException("The server returned no post.");
        }

        public async Task<(bool Liked, int Count)> ToggleNationalLikeAsync(Guid postId, bool liked)
        {
            using var request = new HttpRequestMessage(liked ? HttpMethod.Delete : HttpMethod.Post, $"api/community/national/{postId}/like");
            await AddFirebaseAuthorizationAsync(request);
            using var response = await _httpClient.SendAsync(request);
            response.EnsureSuccessStatusCode();
            var result = await response.Content.ReadFromJsonAsync<LikeResponse>() ?? new LikeResponse();
            return (result.Liked, result.Count);
        }

        public async Task<List<NationalCommunityComment>> GetNationalCommentsAsync(Guid postId)
        {
            using var request = new HttpRequestMessage(HttpMethod.Get, $"api/community/national/{postId}/comments");
            await AddFirebaseAuthorizationAsync(request);
            using var response = await _httpClient.SendAsync(request);
            response.EnsureSuccessStatusCode();
            return await response.Content.ReadFromJsonAsync<List<NationalCommunityComment>>() ?? new();
        }

        public async Task AddNationalCommentAsync(Guid postId, string content)
        {
            using var request = new HttpRequestMessage(HttpMethod.Post, $"api/community/national/{postId}/comments")
            { Content = JsonContent.Create(new { content }) };
            await AddFirebaseAuthorizationAsync(request);
            using var response = await _httpClient.SendAsync(request);
            response.EnsureSuccessStatusCode();
        }

        public async Task<List<NationalCommunityEvent>> GetNationalEventsAsync()
        {
            using var request = new HttpRequestMessage(HttpMethod.Get, "api/community/national/events");
            await AddFirebaseAuthorizationAsync(request);
            using var response = await _httpClient.SendAsync(request);
            response.EnsureSuccessStatusCode();
            return await response.Content.ReadFromJsonAsync<List<NationalCommunityEvent>>() ?? new();
        }

        private async Task AddFirebaseAuthorizationAsync(HttpRequestMessage request)
        {
            request.Headers.Authorization = new AuthenticationHeaderValue("Bearer", await _authService.GetCurrentFirebaseIdTokenAsync());
        }

        private sealed class LikeResponse
        {
            public bool Liked { get; set; }
            public int Count { get; set; }
        }
    }
}