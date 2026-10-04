using System.Net.Http.Headers;
using System.Net.Http.Json;
using System.Text.Json;
using Appwrite;
using CCT_USCF.Models;
using CCT_USCF.Services.Appwrite;
using SQLite;
using System.Diagnostics;

namespace CCT_USCF.Services
{
    public class CommunityService
    {
        public static event EventHandler? CctPostCreated;
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

            [Indexed]
            public string UserUid { get; set; } = string.Empty;

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

            public bool IsDeleted { get; set; }
            public DateTime? DeletedAt { get; set; }
            public bool IsEdited { get; set; }
            public string ReplyToMessageId { get; set; } = string.Empty;
            public string ReplyToSenderName { get; set; } = string.Empty;
            public string ReplyToPreview { get; set; } = string.Empty;
        }

        [Table("community_message_local_deletions")]
        private sealed class LocalDeletedCommunityMessage
        {
            [PrimaryKey]
            public string Id { get; set; } = string.Empty;
            [Indexed]
            public string UserUid { get; set; } = string.Empty;
            [Indexed]
            public string CommunityId { get; set; } = string.Empty;
            [Indexed]
            public string MessageId { get; set; } = string.Empty;
            public DateTime DeletedAt { get; set; }
        }

        [Table("cct_post_cache")]
        private sealed class CachedCctPost
        {
            [PrimaryKey]
            public string Id { get; set; } = string.Empty;
            public string UserId { get; set; } = string.Empty;
            public string Content { get; set; } = string.Empty;
            public string PostType { get; set; } = string.Empty;
            public string MediaType { get; set; } = "none";
            public string MediaUrl { get; set; } = string.Empty;
            public string SiaObjectId { get; set; } = string.Empty;
            public long? MediaSize { get; set; }
            public string Status { get; set; } = string.Empty;
            public bool IsPublished { get; set; }
            public DateTime CreatedAtUtc { get; set; }
            public DateTime UpdatedAtUtc { get; set; }
        }

        [Table("cct_post_cache_state")]
        private sealed class CachedCctPostState
        {
            [PrimaryKey]
            public string Key { get; set; } = string.Empty;
            public DateTime LastSyncUtc { get; set; }
        }

        [Table("community_chat_history_state")]
        private sealed class CommunityChatHistoryState
        {
            [PrimaryKey]
            public string Key { get; set; } = string.Empty;
            [Indexed]
            public string UserUid { get; set; } = string.Empty;
            [Indexed]
            public string GroupId { get; set; } = string.Empty;
            public bool Enrolled { get; set; }
            public bool HistoryCleared { get; set; }
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

        public async Task PrepareCacheAsync()
        {
            await GetMessageCacheDatabaseAsync();
        }

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
                        await _messageCacheDatabase
                            .CreateTableAsync<LocalDeletedCommunityMessage>();
                        await _messageCacheDatabase
                            .CreateTableAsync<CommunityChatHistoryState>();
                        await _messageCacheDatabase
                            .CreateTableAsync<CachedCctPost>();
                        await _messageCacheDatabase
                            .CreateTableAsync<CachedCctPostState>();

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
        "ADD COLUMN ClientMessageId TEXT NOT NULL DEFAULT '';",

    ["UserUid"] =
        "ALTER TABLE community_message_cache " +
        "ADD COLUMN UserUid TEXT NOT NULL DEFAULT '';",

    ["IsDeleted"] =
        "ALTER TABLE community_message_cache " +
        "ADD COLUMN IsDeleted INTEGER NOT NULL DEFAULT 0;",

    ["DeletedAt"] =
        "ALTER TABLE community_message_cache " +
        "ADD COLUMN DeletedAt TEXT NULL;",

    ["IsEdited"] =
        "ALTER TABLE community_message_cache " +
        "ADD COLUMN IsEdited INTEGER NOT NULL DEFAULT 0;",

    ["ReplyToMessageId"] =
        "ALTER TABLE community_message_cache " +
        "ADD COLUMN ReplyToMessageId TEXT NOT NULL DEFAULT '';",

    ["ReplyToSenderName"] =
        "ALTER TABLE community_message_cache " +
        "ADD COLUMN ReplyToSenderName TEXT NOT NULL DEFAULT '';",

    ["ReplyToPreview"] =
        "ALTER TABLE community_message_cache " +
        "ADD COLUMN ReplyToPreview TEXT NOT NULL DEFAULT '';"
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

                IsDeleted = cached.IsDeleted,
                DeletedAt = cached.DeletedAt,
                IsEdited = cached.IsEdited,
                ReplyToMessageId = cached.ReplyToMessageId,
                ReplyToSenderName = cached.ReplyToSenderName,
                ReplyToPreview = cached.ReplyToPreview,

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
                (string.IsNullOrWhiteSpace(message.CommunityId)
                    ? message.GroupId
                    : message.CommunityId)?.Trim()
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
                    createdAt,

                IsDeleted = message.IsDeleted,
                DeletedAt = message.DeletedAt,
                IsEdited = message.IsEdited,
                ReplyToMessageId = message.ReplyToMessageId ?? string.Empty,
                ReplyToSenderName = message.ReplyToSenderName ?? string.Empty,
                ReplyToPreview = message.ReplyToPreview ?? string.Empty
            };
        }

        private string GetCacheUserUid()
        {
            return _authService.GetCurrentFirebaseUid()?.Trim()
                ?? throw new InvalidOperationException(
                    "An authenticated Firebase user is required for the community cache.");
        }

        private static string BuildLocalDeletionId(
            string userUid,
            string communityId,
            string messageId) =>
            $"{userUid}|{communityId}|{messageId}";

        public async Task MarkCommunityMessageLocallyDeletedAsync(
            string communityId,
            string messageId)
        {
            var normalizedCommunityId = communityId?.Trim() ?? string.Empty;
            var normalizedMessageId = messageId?.Trim() ?? string.Empty;
            if (string.IsNullOrWhiteSpace(normalizedCommunityId) ||
                string.IsNullOrWhiteSpace(normalizedMessageId))
            {
                return;
            }

            var userUid = GetCacheUserUid();
            var database = await GetMessageCacheDatabaseAsync();
            await database.InsertOrReplaceAsync(
                new LocalDeletedCommunityMessage
                {
                    Id = BuildLocalDeletionId(
                        userUid,
                        normalizedCommunityId,
                        normalizedMessageId),
                    UserUid = userUid,
                    CommunityId = normalizedCommunityId,
                    MessageId = normalizedMessageId,
                    DeletedAt = DateTime.UtcNow
                });
        }

        private async Task<HashSet<string>> GetLocalDeletedMessageIdsAsync(
            string communityId)
        {
            var userUid = GetCacheUserUid();
            var database = await GetMessageCacheDatabaseAsync();
            return (await database
                    .Table<LocalDeletedCommunityMessage>()
                    .Where(row =>
                        row.UserUid == userUid &&
                        row.CommunityId == communityId)
                    .ToListAsync())
                .Select(row => row.MessageId)
                .ToHashSet(StringComparer.Ordinal);
        }

        private async Task<List<CommunityMessage>>
            FilterLocallyDeletedMessagesAsync(
                string communityId,
                IEnumerable<CommunityMessage> messages)
        {
            var deletedIds =
                await GetLocalDeletedMessageIdsAsync(communityId);
            return messages
                .Where(message =>
                {
                    var messageId =
                        string.IsNullOrWhiteSpace(message.MessageId)
                            ? message.Id
                            : message.MessageId;
                    return !deletedIds.Contains(messageId);
                })
                .ToList();
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
                (string.IsNullOrWhiteSpace(message.CommunityId)
                    ? message.GroupId
                    : message.CommunityId)?.Trim()
                ?? string.Empty;

            if (string.IsNullOrWhiteSpace(communityId))
            {
                return;
            }

            var database =
                await GetMessageCacheDatabaseAsync();

            if ((await GetLocalDeletedMessageIdsAsync(communityId))
                .Contains(messageId))
            {
                return;
            }

            var cachedMessage =
                MapToCachedCommunityMessage(message);
            cachedMessage.UserUid = GetCacheUserUid();

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
                    (string.IsNullOrWhiteSpace(message.CommunityId)
                        ? message.GroupId
                        : message.CommunityId)?.Trim()
                    ?? string.Empty;

                if (string.IsNullOrWhiteSpace(communityId))
                {
                    continue;
                }

                if ((await GetLocalDeletedMessageIdsAsync(communityId))
                    .Contains(messageId))
                {
                    continue;
                }

                var cachedMessage =
                    MapToCachedCommunityMessage(message);
                cachedMessage.UserUid = GetCacheUserUid();

                await database.InsertOrReplaceAsync(cachedMessage);

                count++;
            }

            System.Diagnostics.Debug.WriteLine(
                "[COMMUNITY_CACHE] Batch cache completed: " +
                $"count={count}");
        }

        public async Task ClearCurrentUserCommunityCacheAsync()
        {
            var uid = GetCacheUserUid();
            var database = await GetMessageCacheDatabaseAsync();

            await database.ExecuteAsync(
                "DELETE FROM community_message_cache WHERE UserUid = ?",
                uid);

            Debug.WriteLine(
                $"[COMMUNITY_LOGOUT_CACHE_CLEAR_RESULT] userUid={uid}, cleared=true");
        }

        private static string BuildChatHistoryStateKey(string userUid, string groupId) =>
            $"{userUid.Trim()}|{groupId.Trim()}";

        public async Task<bool> GetChatHistoryEnrolledAsync(string groupId)
        {
            var uid = GetCacheUserUid();
            var normalizedGroupId = groupId.Trim();
            var database = await GetMessageCacheDatabaseAsync();
            var state = await database.FindAsync<CommunityChatHistoryState>(
                BuildChatHistoryStateKey(uid, normalizedGroupId));

            if (state != null)
                return state.Enrolled;

            var hasCachedMessages = await database.Table<CachedCommunityMessage>()
                .Where(row => row.UserUid == uid && row.CommunityId == normalizedGroupId)
                .CountAsync() > 0;

            if (hasCachedMessages)
            {
                await SetChatHistoryEnrolledAsync(normalizedGroupId);
                return true;
            }

            return false;
        }

        public async Task<bool> IsLocalGroupHistoryClearedAsync(string groupId)
        {
            var uid = GetCacheUserUid();
            var database = await GetMessageCacheDatabaseAsync();
            var state = await database.FindAsync<CommunityChatHistoryState>(
                BuildChatHistoryStateKey(uid, groupId.Trim()));
            return state?.HistoryCleared == true;
        }

        public async Task SetChatHistoryEnrolledAsync(string groupId)
        {
            var uid = GetCacheUserUid();
            var normalizedGroupId = groupId.Trim();
            var database = await GetMessageCacheDatabaseAsync();
            await database.InsertOrReplaceAsync(new CommunityChatHistoryState
            {
                Key = BuildChatHistoryStateKey(uid, normalizedGroupId),
                UserUid = uid,
                GroupId = normalizedGroupId,
                Enrolled = true,
                HistoryCleared = false
            });
            Debug.WriteLine($"[COMMUNITY_CHAT_STATE] UserUid={uid} GroupId={normalizedGroupId} Enrolled=true");
        }

        public async Task ClearLocalGroupChatAsync(string groupId)
        {
            var uid = GetCacheUserUid();
            var normalizedGroupId = groupId.Trim();
            var database = await GetMessageCacheDatabaseAsync();
            await database.ExecuteAsync(
                "DELETE FROM community_message_cache WHERE UserUid = ? AND CommunityId = ?",
                uid, normalizedGroupId);
            var state = new CommunityChatHistoryState
            {
                Key = BuildChatHistoryStateKey(uid, normalizedGroupId),
                UserUid = uid,
                GroupId = normalizedGroupId,
                Enrolled = true,
                HistoryCleared = true
            };
            await database.InsertOrReplaceAsync(state);
            Debug.WriteLine($"[COMMUNITY_CHAT_STATE] UserUid={uid} GroupId={normalizedGroupId} LocalHistoryCleared=true");
        }

        public async Task RemoveLocalGroupCacheAsync(string groupId)
        {
            var uid = GetCacheUserUid();
            var normalizedGroupId = groupId.Trim();
            var database = await GetMessageCacheDatabaseAsync();
            await database.ExecuteAsync(
                "DELETE FROM community_message_cache WHERE UserUid = ? AND CommunityId = ?",
                uid, normalizedGroupId);
            await database.ExecuteAsync(
                "DELETE FROM community_chat_history_state WHERE UserUid = ? AND GroupId = ?",
                uid, normalizedGroupId);
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

            var cacheUserUid =
                GetCacheUserUid();

            var cachedRows =
                await database
                    .Table<CachedCommunityMessage>()
                    .Where(row =>
                        row.CommunityId ==
                        normalizedCommunityId &&
                        row.UserUid == cacheUserUid)
                    .OrderByDescending(row =>
                        row.CreatedAt)
                    .Take(safeLimit)
                    .ToListAsync();

            var deletedIds =
                await GetLocalDeletedMessageIdsAsync(normalizedCommunityId);

            return cachedRows
            .Where(row =>
                !row.IsDeleted &&
                !deletedIds.Contains(row.MessageId))
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
                int limit = 100,
                string? organizationalLevel = null,
                string? branchId = null,
                string? regionId = null,
                string? districtId = null)
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
                if (await IsLocalGroupHistoryClearedAsync(normalizedGroupId))
                {
                    Debug.WriteLine($"[COMMUNITY_CHAT_STATE] GroupId={normalizedGroupId} LocalHistoryCleared=true HistoricalFetch=SKIPPED");
                    return new List<CommunityMessage>();
                }

                System.Diagnostics.Debug.WriteLine(
                    "[BRANCH_CHAT_DIAGNOSTIC] " +
                    $"CacheReturnedCount={cachedMessages.Count}, " +
                    $"CommunityId={normalizedGroupId}");

                var remoteMessages = await GetGroupMessagesAsync(
                    normalizedGroupId, safeLimit, null,
                    organizationalLevel, branchId, regionId, districtId);
                remoteMessages = remoteMessages
                    .Where(message => !message.IsDeleted)
                    .ToList();

                System.Diagnostics.Debug.WriteLine(
                    "[BRANCH_CHAT_DIAGNOSTIC] " +
                    $"RemoteReturnedCount={remoteMessages.Count}, " +
                    $"CommunityId={normalizedGroupId}");

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
                int limit = 100,
                string? organizationalLevel = null,
                string? branchId = null,
                string? regionId = null,
                string? districtId = null)
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

            if (await IsLocalGroupHistoryClearedAsync(normalizedGroupId))
            {
                Debug.WriteLine($"[COMMUNITY_CHAT_STATE] GroupId={normalizedGroupId} IncrementalSync=SKIPPED LocalHistoryCleared=true");
                return new List<CommunityMessage>();
            }

            var database =
                await GetMessageCacheDatabaseAsync();

            var cacheUserUid =
                GetCacheUserUid();

            var newestCached =
                await database
                    .Table<CachedCommunityMessage>()
                    .Where(row =>
                        row.CommunityId ==
                        normalizedGroupId &&
                        row.UserUid == cacheUserUid)
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
                        safeLimit,
                        null,
                        organizationalLevel,
                        branchId,
                        regionId,
                        districtId);
                initialMessages =
                    await FilterLocallyDeletedMessagesAsync(
                        normalizedGroupId,
                        initialMessages.Where(message => !message.IsDeleted));

                if (initialMessages.Count > 0)
                {
                    await CacheCommunityMessagesAsync(
                        initialMessages);
                }

                return initialMessages;
            }

            var newestCreatedAt =
                EnsureUtc(newestCached.CreatedAt);
            var inclusiveSyncBoundary =
                newestCreatedAt.AddMilliseconds(-1);

            System.Diagnostics.Debug.WriteLine(
                "[COMMUNITY_CACHE] Incremental sync: " +
                $"community_id={normalizedGroupId}, " +
                $"newestCachedCreatedAt={newestCreatedAt:O}");

            System.Diagnostics.Debug.WriteLine(
                "[BRANCH_CHAT_DIAGNOSTIC] " +
                $"SyncCommunityId={normalizedGroupId}, " +
                $"NewestCachedCreatedAt={newestCreatedAt:O}, " +
                $"NewerThan={inclusiveSyncBoundary:O}");

            var newMessages =
                await GetGroupMessagesAsync(
                    normalizedGroupId,
                    safeLimit,
                    inclusiveSyncBoundary,
                    organizationalLevel,
                    branchId,
                    regionId,
                    districtId);
            newMessages =
                await FilterLocallyDeletedMessagesAsync(
                    normalizedGroupId,
                    newMessages.Where(message => !message.IsDeleted));

            var cachedMessageIds =
                (await database
                    .Table<CachedCommunityMessage>()
                    .Where(row =>
                        row.CommunityId ==
                        normalizedGroupId &&
                        row.UserUid == cacheUserUid)
                    .ToListAsync())
                .Select(row => row.MessageId)
                .Where(id => !string.IsNullOrWhiteSpace(id))
                .ToHashSet(StringComparer.Ordinal);

            newMessages =
                newMessages
                    .Where(message =>
                    {
                        var messageId =
                            string.IsNullOrWhiteSpace(message.MessageId)
                                ? message.Id
                                : message.MessageId;

                        return !cachedMessageIds.Contains(messageId) &&
                            EnsureUtc(message.CreatedAt) >= newestCreatedAt;
                    })
                    .ToList();

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

            System.Diagnostics.Debug.WriteLine(
                "[BRANCH_CHAT_DIAGNOSTIC] " +
                $"NewMessagesReturned={newMessages.Count}, " +
                $"SyncCommunityId={normalizedGroupId}");

            return newMessages;
        }

        // ============================================================
        // APPWRITE REALTIME CHANNELS
        // ============================================================

        public string GetCommunityMessagesChannel()
        {
            return
                $"databases.{AppwriteService.DatabaseId}" +
                $".tables.{CommunityMessagesCollectionId}" +
                ".rows";
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
                DateTime? newerThan = null,
                string? organizationalLevel = null,
                string? branchId = null,
                string? regionId = null,
                string? districtId = null)
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
                    organizationalLevel ?? "Branch",

                branchId:
                    branchId ?? (organizationalLevel == null ? groupId.Trim() : null),

                regionId:
                    regionId,

                districtId:
                    districtId);
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
                string? clientMessageId = null,
                string? replyToMessageId = null,
                string? replyToSenderName = null,
                string? replyToPreview = null)
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

            branchId ??= currentUser.BranchId?.ToString();
            regionId ??= currentUser.RegionId?.ToString();
            districtId ??= currentUser.DistrictId?.ToString();

            var normalizedClientMessageId =
                string.IsNullOrWhiteSpace(clientMessageId)
                    ? null
                    : clientMessageId.Trim();

            var requestStartedAt =
                DateTimeOffset.UtcNow;

            try
            {
                System.Diagnostics.Debug.WriteLine(
                    "[APPWRITE_COMMUNITY_MESSAGE] CREATE START " +
                    $"database={AppwriteService.DatabaseId} " +
                    $"table={CommunityMessagesCollectionId} " +
                    $"groupId={normalizedCommunityId} senderUid={firebaseUid} " +
                    $"clientMessageId={normalizedClientMessageId ?? "server-generated"} " +
                    $"textLength={(normalizedMessageType == "text" ? trimmed.Length : 0)} " +
                    $"replyToMessageId={replyToMessageId ?? "none"} " +
                    $"requestStartedAtUtc={requestStartedAt:O}");

                var requestBody = JsonSerializer.SerializeToElement(
                    new CreateGroupMessageRequest(
                        normalizedCommunityId,
                        normalizedClientMessageId,
                        organizationalLevel ?? "Branch",
                        ParseOptionalInt(branchId),
                        ParseOptionalInt(regionId),
                        ParseOptionalInt(districtId),
                        trimmed,
                        normalizedMessageType,
                        mediaUrl?.Trim(),
                        thumbnailUrl?.Trim(),
                        fileName?.Trim(),
                        Math.Max(0, fileSize),
                        Math.Max(0, duration),
                        replyToMessageId,
                        replyToSenderName,
                        replyToPreview),
                    CommunityMessageApiJsonContext.Default.CreateGroupMessageRequest);

                var createdMessage =
                    await SendAuthorizedCommunityApiAsync<CommunityMessage>(
                        HttpMethod.Post,
                        "api/community/messages/group",
                        requestBody);

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
                var updated =
                    await SendAuthorizedCommunityApiAsync<CommunityMessage>(
                        HttpMethod.Patch,
                        $"api/community/messages/group/{Uri.EscapeDataString(normalizedMessageId)}",
                        JsonSerializer.SerializeToElement(
                            new UpdateGroupMessageRequest(trimmedContent),
                            CommunityMessageApiJsonContext.Default.UpdateGroupMessageRequest));

                await CacheCommunityMessageAsync(updated);

                System.Diagnostics.Debug.WriteLine(
                    "[APPWRITE_COMMUNITY_MESSAGE] UPDATE SUCCESS: " +
                    normalizedMessageId);

                return updated;
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
                var deleted =
                    await SendAuthorizedCommunityApiAsync<CommunityMessage>(
                        HttpMethod.Delete,
                        $"api/community/messages/group/{Uri.EscapeDataString(normalizedMessageId)}");

                await MarkCommunityMessageLocallyDeletedAsync(
                    deleted.CommunityId,
                    normalizedMessageId);
                await CacheCommunityMessageAsync(deleted);

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
                    BuildOptionalDateQuery("newerThan", newerThan) +
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

           Debug.WriteLine(
               "[APPWRITE_COMMUNITY] Firebase user authenticated: YES");
           Debug.WriteLine(
               "[APPWRITE_COMMUNITY] Authorization header attached: YES " +
               "scheme=Bearer token_present=YES");

           async Task<HttpResponseMessage> SendAsync(string token)
           {
               using var request =
                   new HttpRequestMessage(
                       method,
                       requestUri);

               request.Headers.Authorization =
                   new AuthenticationHeaderValue(
                       "Bearer",
                       token);

               if (body != null)
               {
                   request.Content =
                       body is JsonElement jsonElement
                           ? JsonContent.Create(
                               jsonElement,
                               CommunityMessageApiJsonContext.Default.JsonElement)
                           : JsonContent.Create(body);
               }

               return await _httpClient.SendAsync(request);
           }

           var firstResponse =
               await SendAsync(firebaseIdToken);

           HttpResponseMessage response;
           if (firstResponse.StatusCode ==
               System.Net.HttpStatusCode.Unauthorized)
           {
               Debug.WriteLine(
                   "[APPWRITE_COMMUNITY] Firebase token rejected; " +
                   "refreshing once.");

               var refreshedToken =
                   await _authService.GetCurrentFirebaseIdTokenAsync(
                       forceRefresh: true);

               firstResponse.Dispose();
               response =
                   await SendAsync(refreshedToken);
           }
           else
           {
               response = firstResponse;
           }

           using (response)
           {
               var rawJson =
                   await response.Content.ReadAsStringAsync();

               System.Diagnostics.Debug.WriteLine(
                   $"[APPWRITE_COMMUNITY] RESPONSE STATUS: " +
                   $"{(int)response.StatusCode} {response.StatusCode}");
               System.Diagnostics.Debug.WriteLine(
                   $"[APPWRITE_COMMUNITY] RESPONSE URI: {requestUri}");
               System.Diagnostics.Debug.WriteLine(
                   $"[APPWRITE_COMMUNITY] RESPONSE CONTENT-TYPE: " +
                   $"{response.Content.Headers.ContentType}");

               if (!response.IsSuccessStatusCode)
               {
                   System.Diagnostics.Debug.WriteLine(
                       $"[APPWRITE_COMMUNITY] ERROR RESPONSE: {rawJson}");
               }

               if (response.StatusCode ==
                   System.Net.HttpStatusCode.Unauthorized)
               {
                   System.Diagnostics.Debug.WriteLine(
                       $"[APPWRITE_COMMUNITY] Firebase authentication failed: " +
                       $"status={(int)response.StatusCode}, uri={requestUri}");

                   throw new UnauthorizedAccessException(
                       "Firebase authentication was rejected by the Community service.");
               }

               if (response.StatusCode ==
                   System.Net.HttpStatusCode.Forbidden)
               {
                   throw new UnauthorizedAccessException(
                       $"Community authorization failed: {rawJson}");
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
                           rawJson);

                   return (T)(object)message;
               }

               if (typeof(T) ==
                   typeof(List<CommunityMessage>))
               {
                   var messages =
                       DeserializeCommunityMessages(
                           rawJson);

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

        private static string BuildOptionalDateQuery(
            string name,
            DateTime? value)
        {
            return value.HasValue
                ? $"&{name}={Uri.EscapeDataString(EnsureUtc(value.Value).ToString("O"))}"
                : string.Empty;
        }

        // ============================================================
        // DESERIALIZE COMMUNITY MESSAGE
        // ============================================================

        private static CommunityMessage
            DeserializeCommunityMessage(
                string json)
        {
            using var document = JsonDocument.Parse(json);
            var root = document.RootElement;

            if (root.ValueKind ==
                JsonValueKind.Object)
            {
                if (TryGetPropertyIgnoreCase(root, "message", out var messageValue) &&
                    messageValue.ValueKind == JsonValueKind.Object)
                {
                    return DeserializeMessageObject(messageValue);
                }

                if (TryGetPropertyIgnoreCase(root, "data", out var dataValue) &&
                    dataValue.ValueKind == JsonValueKind.Object)
                {
                    return DeserializeMessageObject(dataValue);
                }

                return DeserializeMessageObject(root);
            }

            throw new JsonException(
                "Community API response did not contain a message object.");
        }

        // ============================================================
        // DESERIALIZE COMMUNITY MESSAGES
        // ============================================================

        private static List<CommunityMessage>
            DeserializeCommunityMessages(
                string json)
        {
            using var document = JsonDocument.Parse(json);
            var root = document.RootElement;

            if (root.ValueKind ==
                JsonValueKind.Array)
            {
                return DeserializeMessageArray(root);
            }

            if (root.ValueKind ==
                JsonValueKind.Object)
            {
                foreach (var propertyName in new[] { "messages", "data", "items", "results" })
                {
                    if (TryGetPropertyIgnoreCase(root, propertyName, out var value) &&
                        value.ValueKind == JsonValueKind.Array)
                    {
                        return DeserializeMessageArray(value);
                    }
                }
            }

            throw new JsonException(
                "Community API response did not contain a message list.");
        }

        private static CommunityMessage DeserializeMessageObject(
            JsonElement value)
        {
            var message = JsonSerializer.Deserialize(
                value,
                CommunityMessageApiJsonContext.Default.CommunityMessage);

            if (message is null ||
                (string.IsNullOrWhiteSpace(message.MessageId) &&
                 string.IsNullOrWhiteSpace(message.ClientMessageId)))
            {
                throw new JsonException(
                    "Community API message payload did not contain a message identifier.");
            }

            return message;
        }

        private static List<CommunityMessage> DeserializeMessageArray(
            JsonElement value)
        {
            var messages = new List<CommunityMessage>();

            foreach (var item in value.EnumerateArray())
            {
                if (item.ValueKind != JsonValueKind.Object)
                {
                    throw new JsonException(
                        "Community API message list contained a non-object item.");
                }

                messages.Add(
                    DeserializeMessageObject(
                        item));
            }

            return messages;
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

            var clientMessageId =
                TryGetString(
                    data,
                    "client_message_id",
                    messageId)
                ?? messageId;

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
            if (string.IsNullOrWhiteSpace(content))
            {
                content =
                    TryGetString(data, "text", string.Empty)
                    ?? TryGetString(data, "message", string.Empty)
                    ?? string.Empty;
            }

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

var appwriteTeamId =
    TryGetString(
        data,
        "appwrite_team_id",
        null);

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

            var isDeleted =
                TryGetBool(data, "is_deleted");
            var deletedAt =
                TryGetNullableDateTime(data, "deleted_at");
            var isEdited =
                TryGetBool(data, "is_edited");

            return new CommunityMessage
            {
                Id =
                    document.Id,

                MessageId =
                    messageId,

                ClientMessageId =
                    clientMessageId,

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

AppwriteTeamId =
    appwriteTeamId,

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
                    null,

                IsDeleted = isDeleted,
                DeletedAt = deletedAt,
                IsEdited = isEdited,
                ReplyToMessageId = TryGetString(data, "reply_to_message_id", null),
                ReplyToSenderName = TryGetString(data, "reply_to_sender_name", null),
                ReplyToPreview = TryGetString(data, "reply_to_preview", null)
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

        private static bool
            TryGetBool(
                Dictionary<string, object?> data,
                string key)
        {
            if (!data.TryGetValue(key, out var value) || value is null)
            {
                return false;
            }

            if (value is bool booleanValue)
            {
                return booleanValue;
            }

            return bool.TryParse(Convert.ToString(value), out var parsed) && parsed;
        }

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

        public sealed class NationalPostsPage
        {
            public IReadOnlyList<NationalCommunityPost> Posts { get; init; } = [];
            public bool HasMore { get; init; }
        }

        public async Task<IReadOnlyList<NationalCommunityPost>> GetCachedNationalPostsAsync()
        {
            var database = await GetMessageCacheDatabaseAsync();
            var cached = await database.Table<CachedCctPost>()
                .Where(post =>
                    post.IsPublished &&
                    post.Status.ToLower() == "published" &&
                    post.PostType.ToLower() == "fullcommunity")
                .OrderByDescending(post => post.CreatedAtUtc)
                .ToListAsync();
            return cached.Select(ToCctPost).Select(ToNationalCommunityPost).ToList();
        }

        public async Task<NationalPostsPage> GetNationalPostsPageAsync(
            int offset,
            int limit = 5)
        {
            limit = Math.Clamp(limit, 1, 50);
            offset = Math.Max(offset, 0);
            using var request = new HttpRequestMessage(
                HttpMethod.Get,
                $"api/community/posts?scope=national&offset={offset}&limit={limit}");
            await AddFirebaseAuthorizationAsync(request);
            try
            {
                using var response = await _httpClient.SendAsync(request);
                var body = await response.Content.ReadAsStringAsync();
                if (!response.IsSuccessStatusCode)
                    throw new InvalidOperationException(body);

                var posts = (JsonSerializer.Deserialize(
                        body,
                        CommunityMessageApiJsonContext.Default.ListCctPost) ?? [])
                    .Where(IsPublishedCctPost)
                    .Where(post => string.Equals(post.PostType, "FullCommunity", StringComparison.OrdinalIgnoreCase))
                    .GroupBy(post => post.Id, StringComparer.Ordinal)
                    .Select(group => group.First())
                    .Take(limit)
                    .ToList();
                await CacheCctPostsAsync(posts);
                Debug.WriteLine(
                    $"[NATIONAL_FEED] offset={offset} requestedLimit={limit} received={posts.Count} " +
                    $"hasMore={posts.Count == limit}");
                return new NationalPostsPage
                {
                    Posts = posts.Select(ToNationalCommunityPost).ToList(),
                    HasMore = posts.Count == limit
                };
            }
            catch (Exception ex)
            {
                var cached = await GetCachedNationalPostsAsync();
                var page = cached.Skip(offset).Take(limit).ToList();
                Debug.WriteLine(
                    $"[NATIONAL_FEED] offline fallback offset={offset} requestedLimit={limit} " +
                    $"cacheCount={cached.Count} returned={page.Count}: {ex.Message}");
                return new NationalPostsPage
                {
                    Posts = page,
                    HasMore = page.Count == limit && offset + page.Count < cached.Count
                };
            }
        }

        private async Task CacheCctPostsAsync(IReadOnlyList<CctPost> posts)
        {
            if (posts.Count == 0)
                return;
            var database = await GetMessageCacheDatabaseAsync();
            var existing = await database.Table<CachedCctPost>().ToListAsync();
            var existingById = existing.ToDictionary(post => post.Id, StringComparer.Ordinal);
            await database.RunInTransactionAsync(transaction =>
            {
                foreach (var post in posts)
                {
                    var cached = ToCachedCctPost(post);
                    if (!existingById.TryGetValue(post.Id, out var previous) ||
                        !CachedPostEquals(previous, cached))
                        transaction.InsertOrReplace(cached);
                }
            });
            Debug.WriteLine($"[NATIONAL_FEED] cache merged count={posts.Count}");
        }

        public async Task<List<NationalCommunityPost>> GetNationalPostsAsync(int limit = 20)
        {
            var page = await GetNationalPostsPageAsync(0, Math.Clamp(limit, 1, 50));
            return page.Posts.ToList();
        }

        public async Task<NationalCommunityPost> CreateNationalPostAsync(NationalCommunityCreateRequest requestDto)
        {
            var post = await CreateCctPostAsync(requestDto.Content ?? string.Empty, "FullCommunity");
            return ToNationalCommunityPost(post);
        }

        private static NationalCommunityPost ToNationalCommunityPost(CctPost post)
        {
            return new NationalCommunityPost
            {
                Id = post.Id,
                AuthorUid = post.UserId,
                AuthorName = post.UserId,
                Content = post.Content,
                ContributionType = post.PostType,
                Visibility = "national",
                CreatedAtUtc = post.CreatedAtUtc,
                LikeCount = post.LikeCount,
                CommentCount = post.CommentCount,
                LikedByCurrentUser = post.LikedByCurrentUser,
                ImageUrl = post.MediaType.Equals("image", StringComparison.OrdinalIgnoreCase)
                    ? post.MediaUrl : null,
                VideoUrl = post.MediaType.Equals("video", StringComparison.OrdinalIgnoreCase)
                    ? post.MediaUrl : null,
                AudioUrl = post.MediaType.Equals("audio", StringComparison.OrdinalIgnoreCase)
                    ? post.MediaUrl : null
            };
        }

        public async Task<CctPost> CreateCctPostAsync(
            string content,
            string postType)
        {
            var userId = _authService.GetCurrentFirebaseUid();
            var isEncouragement = string.Equals(
                postType?.Trim(),
                "encouragement",
                StringComparison.OrdinalIgnoreCase);
            var isScripture = string.Equals(
                postType?.Trim(),
                "scripture",
                StringComparison.OrdinalIgnoreCase);
            var isWorship = string.Equals(
                postType?.Trim(),
                "worship",
                StringComparison.OrdinalIgnoreCase);

            if (isEncouragement)
            {
                System.Diagnostics.Debug.WriteLine(
                    $"[ENCOURAGEMENT_PUBLISH] started firebaseUidPresent={!string.IsNullOrWhiteSpace(userId)} " +
                    $"contentLength={content?.Length ?? 0} postType={postType ?? "<null>"} " +
                    $"database={AppwriteConfig.DatabaseId} table={BiblePostsCollectionId}");
            }
            else if (isScripture)
            {
                System.Diagnostics.Debug.WriteLine(
                    $"[SCRIPTURE_PUBLISH] started firebaseUidPresent={!string.IsNullOrWhiteSpace(userId)} " +
                    $"contentLength={content?.Length ?? 0} postType={postType ?? "<null>"} " +
                    "mediaType=none " +
                    $"database={AppwriteConfig.DatabaseId} table={BiblePostsCollectionId}");
            }
            else if (isWorship)
            {
                System.Diagnostics.Debug.WriteLine(
                    $"[WORSHIP_PUBLISH] started firebaseUidPresent={!string.IsNullOrWhiteSpace(userId)} " +
                    $"contentLength={content?.Length ?? 0} postType={postType ?? "<null>"} " +
                    "mediaType=none " +
                    $"database={AppwriteConfig.DatabaseId} table={BiblePostsCollectionId}");
            }

            if (string.IsNullOrWhiteSpace(userId))
                throw new InvalidOperationException("You must be signed in to publish a post.");

            if (string.IsNullOrWhiteSpace(content))
                throw new ArgumentException("Post content is required.", nameof(content));
            if (string.IsNullOrWhiteSpace(postType))
                throw new ArgumentException("Post type is required.", nameof(postType));

            using var request = new HttpRequestMessage(
                HttpMethod.Post,
                "api/community/posts")
            {
                Content = JsonContent.Create(new
                {
                    content = content.Trim(),
                    postType = postType.Trim()
                })
            };
            await AddFirebaseAuthorizationAsync(request);
            LogPlusPosts(
                $"PLUS CREATE: request started type={postType.Trim()} " +
                $"firebaseUidPresent={!string.IsNullOrWhiteSpace(userId)} " +
                $"endpoint={_httpClient.BaseAddress}{request.RequestUri}");
            if (isEncouragement)
                System.Diagnostics.Debug.WriteLine(
                    "[ENCOURAGEMENT_PUBLISH] sending authenticated create request.");
            else if (isScripture)
                System.Diagnostics.Debug.WriteLine(
                    "[SCRIPTURE_PUBLISH] sending authenticated Appwrite create request.");
            else if (isWorship)
                System.Diagnostics.Debug.WriteLine(
                    "[WORSHIP_PUBLISH] sending authenticated Appwrite create request.");

            HttpResponseMessage response;
            try
            {
                response = await _httpClient.SendAsync(request);
            }
            catch (Exception ex)
            {
                LogPlusPosts(
                    $"PLUS CREATE: request failed type={postType.Trim()} " +
                    $"exception={ex.GetType().Name}: {ex.Message}");
                throw;
            }

            using (response)
            {
                var responseBody = await response.Content.ReadAsStringAsync();
                LogPlusPosts(
                    $"PLUS CREATE: response status={(int)response.StatusCode} " +
                    $"type={postType.Trim()} responseLength={responseBody.Length}");
                if (!response.IsSuccessStatusCode)
                {
                    LogPlusPosts(
                        $"PLUS CREATE: rejected response " +
                        $"{SummarizePostApiError(responseBody, content, userId)}");
                    if (isEncouragement)
                        System.Diagnostics.Debug.WriteLine(
                            $"[ENCOURAGEMENT_PUBLISH] failed exception=HttpStatus " +
                            $"status={(int)response.StatusCode} body={responseBody}");
                    else if (isScripture)
                        System.Diagnostics.Debug.WriteLine(
                            $"[SCRIPTURE_PUBLISH] failed exception=HttpStatus " +
                            $"status={(int)response.StatusCode} body={responseBody}");
                    else if (isWorship)
                        System.Diagnostics.Debug.WriteLine(
                            $"[WORSHIP_PUBLISH] failed exception=HttpStatus " +
                            $"status={(int)response.StatusCode} body={responseBody}");
                    throw new InvalidOperationException(
                        $"The post service rejected the request ({(int)response.StatusCode}).");
                }

                CctPost post;
                try
                {
                    post = JsonSerializer.Deserialize(
                        responseBody,
                        CommunityMessageApiJsonContext.Default.CctPost)
                        ?? throw new InvalidOperationException("The post service returned no post.");
                }
                catch (Exception ex)
                {
                    LogPlusPosts(
                        $"PLUS CREATE: response mapping failed type={postType.Trim()} " +
                        $"exception={ex.GetType().Name}: {ex.Message}");
                    throw;
                }
                if (isEncouragement)
                    System.Diagnostics.Debug.WriteLine(
                        $"[ENCOURAGEMENT_PUBLISH] succeeded documentId={post.Id} " +
                        $"status={post.Status} isPublished={post.IsPublished}");
                else if (isScripture)
                    System.Diagnostics.Debug.WriteLine(
                        $"[SCRIPTURE_PUBLISH] succeeded documentId={post.Id} " +
                        $"postType={post.PostType} status={post.Status} isPublished={post.IsPublished}");
                else if (isWorship)
                    System.Diagnostics.Debug.WriteLine(
                        $"[WORSHIP_PUBLISH] succeeded documentId={post.Id} " +
                        $"postType={post.PostType} status={post.Status} isPublished={post.IsPublished}");
                CctPostCreated?.Invoke(null, EventArgs.Empty);
                return post;
            }
        }

        public async Task<List<CctPost>> GetCachedPublishedCctPostsAsync(int limit = 8)
        {
            var database = await GetMessageCacheDatabaseAsync();
            var cached = await database.Table<CachedCctPost>()
                .Where(post =>
                    post.IsPublished &&
                    post.Status.ToLower() == "published")
                .OrderByDescending(post => post.UpdatedAtUtc)
                .Take(Math.Clamp(limit, 1, 50))
                .ToListAsync();

            return ShufflePosts(cached.Select(ToCctPost));
        }

        public async Task<bool> ShouldSyncCctPostsAsync(
            TimeSpan freshnessWindow)
        {
            var database = await GetMessageCacheDatabaseAsync();
            var state = await database.Table<CachedCctPostState>()
                .Where(item => item.Key == "published")
                .FirstOrDefaultAsync();
            return state is null ||
                DateTime.UtcNow - state.LastSyncUtc >= freshnessWindow;
        }

        public async Task<List<CctPost>> GetPublishedCctPostsAsync(
            int limit = 8,
            bool forceRefresh = false)
        {
            limit = Math.Clamp(limit, 1, 50);
            if (!forceRefresh &&
                !await ShouldSyncCctPostsAsync(TimeSpan.FromMinutes(10)))
            {
                LogPlusPosts("PLUS SYNC: skipped because cache is fresh");
                return await GetCachedPublishedCctPostsAsync(limit);
            }

            LogPlusPosts("PLUS POSTS: request started");
            using var request = new HttpRequestMessage(
                HttpMethod.Get,
                $"api/community/posts?limit={limit}");
            await AddFirebaseAuthorizationAsync(request);
            LogPlusPosts($"PLUS POSTS: endpoint = {_httpClient.BaseAddress}{request.RequestUri}");
            try
            {
                var startedAt = Stopwatch.GetTimestamp();
                using var response = await _httpClient.SendAsync(request);
                var responseBody = await response.Content.ReadAsStringAsync();
                LogPlusPosts(
                    $"PLUS POSTS: response status = {(int)response.StatusCode}; " +
                    $"response length = {responseBody.Length}");
                response.EnsureSuccessStatusCode();
                var posts = (JsonSerializer.Deserialize(
                        responseBody,
                        CommunityMessageApiJsonContext.Default.ListCctPost)
                    ?? new List<CctPost>())
                    .Where(IsPublishedCctPost)
                    .GroupBy(post => post.Id, StringComparer.Ordinal)
                    .Select(group => group.First())
                    .Take(limit)
                    .ToList();

                var database = await GetMessageCacheDatabaseAsync();
                var existing = await database.Table<CachedCctPost>().ToListAsync();
                var existingById = existing.ToDictionary(post => post.Id, StringComparer.Ordinal);
                var inserted = 0;
                var updated = 0;
                var unchanged = 0;
                await database.RunInTransactionAsync(transaction =>
                {
                    foreach (var post in posts)
                    {
                        var cached = ToCachedCctPost(post);
                        if (!existingById.TryGetValue(post.Id, out var previous))
                        {
                            transaction.InsertOrReplace(cached);
                            inserted++;
                        }
                        else if (!CachedPostEquals(previous, cached))
                        {
                            transaction.InsertOrReplace(cached);
                            updated++;
                        }
                        else
                        {
                            unchanged++;
                        }
                    }
                    transaction.InsertOrReplace(new CachedCctPostState
                    {
                        Key = "published",
                        LastSyncUtc = DateTime.UtcNow
                    });
                });

                var mediaCount = posts.Count(post =>
                    !string.IsNullOrWhiteSpace(post.MediaUrl));
                var elapsedMs = Stopwatch.GetElapsedTime(startedAt).TotalMilliseconds;
                Debug.WriteLine(
                    $"[PLUS_POSTS] fetched={posts.Count} requestedLimit={limit} " +
                    $"media={mediaCount} responseBytes={response.Content.Headers.ContentLength?.ToString() ?? "unknown"} " +
                    $"elapsedMs={elapsedMs:F0} randomized=true");
                LogPlusPosts(
                    $"PLUS POSTS: parsed post count = {posts.Count}; " +
                    $"post IDs = {string.Join(",", posts.Select(post => post.Id))}");
                LogPlusPosts(
                    $"PLUS CACHE: inserted {inserted} new posts; " +
                    $"updated {updated} posts; skipped {unchanged} unchanged posts");
                return ShufflePosts(posts);
            }

            catch (Exception ex)
            {
                var database = await GetMessageCacheDatabaseAsync();
                await database.InsertOrReplaceAsync(new CachedCctPostState
                {
                    Key = "published",
                    LastSyncUtc = DateTime.UtcNow
                });
                LogPlusPosts("PLUS SYNC: attempt recorded; cached posts remain authoritative");
                LogPlusPosts($"PLUS POSTS: request failed = {ex.GetType().Name}: {ex.Message}");
                Debug.WriteLine($"[PLUS_POSTS] network fetch failed; using cache. {ex}");
                return await GetCachedPublishedCctPostsAsync(limit);
            }
        }

        private static bool CachedPostEquals(
            CachedCctPost left,
            CachedCctPost right)
            => left.UserId == right.UserId &&
               left.Content == right.Content &&
               left.PostType == right.PostType &&
               left.MediaType == right.MediaType &&
               left.MediaUrl == right.MediaUrl &&
               left.SiaObjectId == right.SiaObjectId &&
               left.MediaSize == right.MediaSize &&
               left.Status == right.Status &&
               left.IsPublished == right.IsPublished &&
               left.CreatedAtUtc == right.CreatedAtUtc &&
               left.UpdatedAtUtc == right.UpdatedAtUtc;

        private static void LogPlusPosts(string message)
        {
            Debug.WriteLine($"[PLUS_POSTS] {message}");
#if ANDROID
            Android.Util.Log.Debug("CCT_PLUS", message);
#endif
        }

        private static string SummarizePostApiError(
            string responseBody,
            string content,
            string? userId)
        {
            try
            {
                using var document = JsonDocument.Parse(responseBody);
                var root = document.RootElement;
                var fields = new[] { "code", "type", "message", "error" };
                var summary = string.Join(
                    "; ",
                    fields
                        .Where(field => root.TryGetProperty(field, out _))
                        .Select(field =>
                        {
                            var value = root.GetProperty(field).ToString();
                            if (!string.IsNullOrEmpty(content))
                                value = value.Replace(content, "[content redacted]", StringComparison.Ordinal);
                            if (!string.IsNullOrEmpty(userId))
                                value = value.Replace(userId, "[user redacted]", StringComparison.Ordinal);
                            return $"{field}={value}";
                        }));
                return string.IsNullOrEmpty(summary)
                    ? $"responseLength={responseBody.Length}"
                    : summary;
            }
            catch (JsonException)
            {
                return $"non-JSON responseLength={responseBody.Length}";
            }
        }

        private static bool IsPublishedCctPost(CctPost post)
            => post.IsPublished &&
               string.Equals(post.Status, "published", StringComparison.OrdinalIgnoreCase);

        private static List<CctPost> ShufflePosts(IEnumerable<CctPost> posts)
        {
            var result = posts
                .GroupBy(post => post.Id, StringComparer.Ordinal)
                .Select(group => group.First())
                .ToList();

            for (var index = result.Count - 1; index > 0; index--)
            {
                var swapIndex = Random.Shared.Next(index + 1);
                (result[index], result[swapIndex]) = (result[swapIndex], result[index]);
            }

            return result;
        }

        private static CachedCctPost ToCachedCctPost(CctPost post)
            => new()
            {
                Id = post.Id,
                UserId = post.UserId,
                Content = post.Content,
                PostType = post.PostType,
                MediaType = post.MediaType,
                MediaUrl = post.MediaUrl ?? string.Empty,
                SiaObjectId = post.SiaObjectId ?? string.Empty,
                MediaSize = post.MediaSize,
                Status = post.Status,
                IsPublished = post.IsPublished,
                CreatedAtUtc = post.CreatedAtUtc,
                UpdatedAtUtc = post.UpdatedAtUtc
            };

        private static CctPost ToCctPost(CachedCctPost post)
            => new()
            {
                Id = post.Id,
                UserId = post.UserId,
                Content = post.Content,
                PostType = post.PostType,
                MediaType = post.MediaType,
                MediaUrl = string.IsNullOrWhiteSpace(post.MediaUrl) ? null : post.MediaUrl,
                SiaObjectId = string.IsNullOrWhiteSpace(post.SiaObjectId) ? null : post.SiaObjectId,
                MediaSize = post.MediaSize,
                Status = post.Status,
                IsPublished = post.IsPublished,
                CreatedAtUtc = post.CreatedAtUtc,
                UpdatedAtUtc = post.UpdatedAtUtc
            };

        private static CctPost MapCctPost(global::Appwrite.Models.Document document)
        {
            var data = document.Data;
            return new CctPost
            {
                Id = document.Id,
                UserId = ReadString(data, "user_id"),
                Content = ReadString(data, "content"),
                PostType = ReadString(data, "post_type"),
                MediaType = ReadString(data, "media_type", "none"),
                MediaUrl = ReadNullableString(data, "media_url"),
                SiaObjectId = ReadNullableString(data, "sia_object_id"),
                MediaSize = ReadNullableLong(data, "media_size"),
                Status = ReadString(data, "status"),
                IsPublished = ReadBool(data, "is_published"),
                CreatedAtUtc = DateTime.TryParse(
                    document.CreatedAt,
                    out var createdAt)
                    ? createdAt.ToUniversalTime()
                    : DateTime.UtcNow,
                UpdatedAtUtc = DateTime.TryParse(
                    document.UpdatedAt,
                    out var updatedAt)
                    ? updatedAt.ToUniversalTime()
                    : DateTime.UtcNow
            };
        }

        private static string ReadString(
            IDictionary<string, object> data,
            string key,
            string fallback = "")
            => data.TryGetValue(key, out var value) && value is not null
                ? Convert.ToString(value) ?? fallback
                : fallback;

        private static string? ReadNullableString(
            IDictionary<string, object> data,
            string key)
            => data.TryGetValue(key, out var value) && value is not null
                ? Convert.ToString(value)
                : null;

        private static long? ReadNullableLong(
            IDictionary<string, object> data,
            string key)
            => data.TryGetValue(key, out var value) && value is not null &&
               long.TryParse(Convert.ToString(value), out var number)
                ? number
                : null;

        private static bool ReadBool(
            IDictionary<string, object> data,
            string key)
            => data.TryGetValue(key, out var value) &&
               bool.TryParse(Convert.ToString(value), out var result) && result;

        public async Task<(bool Liked, int Count)> ToggleNationalLikeAsync(string postId, bool liked)
        {
            using var request = new HttpRequestMessage(
                liked ? HttpMethod.Delete : HttpMethod.Post,
                $"api/community/posts/{postId}/like");
            await AddFirebaseAuthorizationAsync(request);
            using var response = await _httpClient.SendAsync(request);
            var body = await response.Content.ReadAsStringAsync();
            if (!response.IsSuccessStatusCode)
                throw new InvalidOperationException(body);
            var result = JsonSerializer.Deserialize<LikeResponse>(
                body,
                new JsonSerializerOptions(JsonSerializerDefaults.Web)) ?? new LikeResponse();
            return (result.Liked, result.Count);
        }

        public async Task<List<NationalCommunityComment>> GetNationalCommentsAsync(string postId)
        {
            using var request = new HttpRequestMessage(
                HttpMethod.Get,
                $"api/community/posts/{postId}/comments");
            await AddFirebaseAuthorizationAsync(request);
            using var response = await _httpClient.SendAsync(request);
            var body = await response.Content.ReadAsStringAsync();
            if (!response.IsSuccessStatusCode)
                throw new InvalidOperationException(body);
            return JsonSerializer.Deserialize<List<NationalCommunityComment>>(
                body,
                new JsonSerializerOptions(JsonSerializerDefaults.Web)) ?? new();
        }

        public async Task AddNationalCommentAsync(string postId, string content)
        {
            using var request = new HttpRequestMessage(
                HttpMethod.Post,
                $"api/community/posts/{postId}/comments")
            { Content = JsonContent.Create(new { content }) };
            await AddFirebaseAuthorizationAsync(request);
            using var response = await _httpClient.SendAsync(request);
            var body = await response.Content.ReadAsStringAsync();
            if (!response.IsSuccessStatusCode)
                throw new InvalidOperationException(body);
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