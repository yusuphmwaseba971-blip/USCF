using System.Diagnostics;

namespace CCT_USCF.Services;

public sealed class StartupPreloadCoordinator
{
    private readonly BibleService _bible;
    private readonly CommunityService _community;
    private readonly ChurchGroupCacheService _groups;
    private readonly AuthService _auth;
    private readonly ChurchGroupService _groupService;
    private readonly SemaphoreSlim _gate = new(1, 1);
    private Task? _preloadTask;

    public StartupPreloadCoordinator(
        BibleService bible,
        CommunityService community,
        ChurchGroupCacheService groups,
        AuthService auth,
        ChurchGroupService groupService)
    {
        _bible = bible;
        _community = community;
        _groups = groups;
        _auth = auth;
        _groupService = groupService;
    }

    public Task PreloadAsync()
    {
        lock (_gate)
        {
            return _preloadTask ??= RunPreloadAsync();
        }
    }

    private async Task RunPreloadAsync()
    {
        var timer = Stopwatch.StartNew();
        try
        {
            var bibleTimer = Stopwatch.StartNew();
            await _bible.WarmupDefaultAsync();
            Debug.WriteLine($"[STARTUP_PRELOAD] Bible preload completed in {bibleTimer.ElapsedMilliseconds} ms");

            var cacheTimer = Stopwatch.StartNew();
            await _community.PrepareCacheAsync();
            await _groups.PrepareAsync();
            var cachedPosts = await _community.GetCachedPublishedCctPostsAsync();
            Debug.WriteLine(
                $"[STARTUP_PRELOAD] Cached community preload completed in {cacheTimer.ElapsedMilliseconds} ms ({cachedPosts.Count} posts)");
            Debug.WriteLine($"[STARTUP_PRELOAD] Essential cache preparation completed in {cacheTimer.ElapsedMilliseconds} ms");

            _ = SynchronizeInBackgroundAsync();
            Debug.WriteLine($"[STARTUP_PRELOAD] Essential startup completed in {timer.ElapsedMilliseconds} ms");
        }
        catch (Exception ex)
        {
            Debug.WriteLine($"[STARTUP_PRELOAD] Essential preload failed; app will continue: {ex}");
        }
    }

    private async Task SynchronizeInBackgroundAsync()
    {
        try
        {
            var syncTimer = Stopwatch.StartNew();
            await _community.GetPublishedCctPostsAsync(8);
            Debug.WriteLine($"[STARTUP_PRELOAD] Community background sync completed in {syncTimer.ElapsedMilliseconds} ms");
        }
        catch (Exception ex)
        {
            Debug.WriteLine($"[STARTUP_PRELOAD] Community background sync skipped: {ex.Message}");
        }

        try
        {
            var user = MauiProgram.CurrentUser ?? await _auth.GetCurrentUserAsync();
            var uid = _auth.GetCurrentFirebaseUid();
            if (user == null || string.IsNullOrWhiteSpace(uid))
                return;

            foreach (var level in new[] { "National", "Regional", "District", "Branch" })
            {
                try
                {
                    var key = ChurchGroupCacheService.BuildCacheKey(uid, level, user);
                    var groups = await _groups.GetAsync(key);
                    if (groups != null)
                        continue;

                    var remote = await _groupService.GetGroupsAsync(level);
                    await _groups.ReplaceAsync(key, remote);
                }
                catch (Exception ex)
                {
                    Debug.WriteLine($"[STARTUP_PRELOAD] {level} group sync skipped: {ex.Message}");
                }
            }
        }
        catch (Exception ex)
        {
            Debug.WriteLine($"[STARTUP_PRELOAD] Group background sync skipped: {ex.Message}");
        }
    }
}
