using SQLite;

namespace CCT_USCF.Services;

public sealed class CommunityMessageCacheService
{
    private readonly SQLiteAsyncConnection _database;
    private bool _initialized;

    public CommunityMessageCacheService()
    {
        var databasePath = Path.Combine(
            FileSystem.AppDataDirectory,
            "cct-uscf-community-cache.db3");

        _database = new SQLiteAsyncConnection(
            databasePath,
            SQLiteOpenFlags.ReadWrite |
            SQLiteOpenFlags.Create |
            SQLiteOpenFlags.SharedCache);
    }

    private async Task InitializeAsync()
    {
        if (_initialized)
            return;

        await _database.CreateTableAsync<CachedCommunityMessage>();

        _initialized = true;
    }

    public async Task<List<CachedCommunityMessage>>
        GetMessagesAsync(
            string communityId,
            int limit = 100)
    {
        await InitializeAsync();

        var normalizedCommunityId =
            communityId.Trim();

        var safeLimit =
            Math.Clamp(limit, 1, 100);

        return await _database.Table<CachedCommunityMessage>()
            .Where(x => x.CommunityId == normalizedCommunityId)
            .OrderBy(x => x.CreatedAt)
            .Take(safeLimit)
            .ToListAsync();
    }

    public async Task<DateTime?>
        GetNewestMessageCreatedAtAsync(
            string communityId)
    {
        await InitializeAsync();

        var normalizedCommunityId =
            communityId.Trim();

        var newest =
            await _database.Table<CachedCommunityMessage>()
                .Where(x =>
                    x.CommunityId ==
                    normalizedCommunityId)
                .OrderByDescending(x => x.CreatedAt)
                .FirstOrDefaultAsync();

        return newest?.CreatedAt;
    }

    public async Task UpsertMessageAsync(
        CachedCommunityMessage message)
    {
        await InitializeAsync();

        if (string.IsNullOrWhiteSpace(message.MessageId))
            return;

        await _database.InsertOrReplaceAsync(message);
    }

    public async Task UpsertMessagesAsync(
        IEnumerable<CachedCommunityMessage> messages)
    {
        await InitializeAsync();

        var items =
            messages
                .Where(x =>
                    !string.IsNullOrWhiteSpace(x.MessageId))
                .ToList();

        if (items.Count == 0)
            return;

        await _database.RunInTransactionAsync(
            connection =>
            {
                foreach (var message in items)
                {
                    connection.InsertOrReplace(message);
                }
            });
    }

    public async Task<bool>
        ContainsMessageAsync(
            string messageId)
    {
        await InitializeAsync();

        if (string.IsNullOrWhiteSpace(messageId))
            return false;

        var existing =
            await _database.Table<CachedCommunityMessage>()
                .Where(x => x.MessageId == messageId)
                .FirstOrDefaultAsync();

        return existing != null;
    }
}

public sealed class CachedCommunityMessage
{
    [PrimaryKey]
    public string MessageId { get; set; } = string.Empty;

    [Indexed]
    public string CommunityId { get; set; } = string.Empty;

    public string SenderUid { get; set; } = string.Empty;

    public string SenderName { get; set; } = string.Empty;

    public string Content { get; set; } = string.Empty;

    public string MessageType { get; set; } = "text";

    [Indexed]
    public DateTime CreatedAt { get; set; }
}