using System.Text.Json;
using CCT_USCF.Models;
using SQLite;

namespace CCT_USCF.Services;

public sealed class ChurchGroupCacheService
{
    private readonly SQLiteAsyncConnection _database;
    private readonly SemaphoreSlim _initializationLock = new(1, 1);
    private bool _initialized;

    public ChurchGroupCacheService()
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

    public static string BuildCacheKey(
        string firebaseUid,
        string level,
        CurrentUser user)
    {
        var normalizedLevel = level.Trim().ToUpperInvariant();
        var scopeId = normalizedLevel switch
        {
            "REGIONAL" => user.RegionId?.ToString() ?? "none",
            "DISTRICT" => user.DistrictId?.ToString() ?? "none",
            "BRANCH" => user.BranchId?.ToString() ?? "none",
            _ => "national"
        };

        return $"groups:{firebaseUid.Trim()}:{normalizedLevel}:{scopeId}";
    }

    public Task PrepareAsync(CancellationToken cancellationToken = default) =>
        InitializeAsync(cancellationToken);

    public async Task<List<ChurchGroup>?> GetAsync(
        string cacheKey,
        CancellationToken cancellationToken = default)
    {
        await InitializeAsync(cancellationToken);

        var snapshot = await _database.Table<CachedChurchGroupSnapshot>()
            .Where(item => item.CacheKey == cacheKey)
            .FirstOrDefaultAsync();

        if (snapshot == null)
            return null;

        return JsonSerializer.Deserialize(
                snapshot.GroupsJson,
                ChurchGroupJsonContext.Default.ListChurchGroup)
            ?? new List<ChurchGroup>();
    }

    public async Task ReplaceAsync(
        string cacheKey,
        IReadOnlyList<ChurchGroup> groups,
        CancellationToken cancellationToken = default)
    {
        await InitializeAsync(cancellationToken);

        cancellationToken.ThrowIfCancellationRequested();
        var snapshot = new CachedChurchGroupSnapshot
        {
            CacheKey = cacheKey,
            GroupsJson = JsonSerializer.Serialize(
                groups.ToList(),
                ChurchGroupJsonContext.Default.ListChurchGroup),
            UpdatedAtUtc = DateTime.UtcNow
        };

        await _database.InsertOrReplaceAsync(snapshot);
    }

    public async Task RemoveGroupAsync(
        string groupId,
        CancellationToken cancellationToken = default)
    {
        if (string.IsNullOrWhiteSpace(groupId))
            return;

        await InitializeAsync(cancellationToken);
        var normalizedGroupId = groupId.Trim();
        var snapshots = await _database
            .Table<CachedChurchGroupSnapshot>()
            .ToListAsync();

        foreach (var snapshot in snapshots)
        {
            cancellationToken.ThrowIfCancellationRequested();
            var groups = JsonSerializer.Deserialize(
                    snapshot.GroupsJson,
                    ChurchGroupJsonContext.Default.ListChurchGroup)
                ?? new List<ChurchGroup>();
            var removed = groups.RemoveAll(group =>
                string.Equals(group.GroupId, normalizedGroupId, StringComparison.Ordinal));
            if (removed == 0)
                continue;

            snapshot.GroupsJson = JsonSerializer.Serialize(
                groups,
                ChurchGroupJsonContext.Default.ListChurchGroup);
            snapshot.UpdatedAtUtc = DateTime.UtcNow;
            await _database.InsertOrReplaceAsync(snapshot);
        }
    }

    private async Task InitializeAsync(CancellationToken cancellationToken)
    {
        if (_initialized)
            return;

        await _initializationLock.WaitAsync(cancellationToken);
        try
        {
            if (!_initialized)
            {
                await _database.CreateTableAsync<CachedChurchGroupSnapshot>();
                _initialized = true;
            }
        }
        finally
        {
            _initializationLock.Release();
        }
    }

    [Table("church_group_snapshot_cache")]
    private sealed class CachedChurchGroupSnapshot
    {
        [PrimaryKey]
        public string CacheKey { get; set; } = string.Empty;

        public string GroupsJson { get; set; } = "[]";

        public DateTime UpdatedAtUtc { get; set; }
    }
}
