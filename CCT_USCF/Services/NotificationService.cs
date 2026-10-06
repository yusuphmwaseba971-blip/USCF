using System.Collections.Concurrent;
using System.Diagnostics;
using Android.Content;
using CCT_USCF.Pages;
using CCT_USCF.Services;
using Plugin.Firebase.CloudMessaging;
using Plugin.Firebase.CloudMessaging.EventArgs;

namespace CCT_USCF;

public sealed class NotificationService
{
    private static readonly object PendingRouteLock = new();
    private static string? _queuedNotificationRoute;
    private static readonly ConcurrentDictionary<string, byte> RouteEvents = new(StringComparer.Ordinal);

    private readonly ChurchAnnouncementService _announcements;
    private readonly AuthService _auth;
    private readonly ConcurrentDictionary<string, byte> _handledEvents = new(StringComparer.Ordinal);
    private int _initialized;

    public NotificationService(ChurchAnnouncementService announcements, AuthService auth)
    {
        _announcements = announcements;
        _auth = auth;
    }

    public void Initialize()
    {
        if (Interlocked.Exchange(ref _initialized, 1) != 0)
            return;

        var messaging = CrossFirebaseCloudMessaging.Current;
        messaging.TokenChanged += OnTokenChanged;
        messaging.NotificationReceived += OnNotificationReceived;
        messaging.NotificationTapped += OnNotificationTapped;
        messaging.Error += OnMessagingError;

        Debug.WriteLine("[FCM] Central notification service initialized");
        _ = SynchronizeTokenAsync();
    }

    public async Task SynchronizeTokenAsync()
    {
        try
        {
            await FirebaseInit.Initialized;
            var user = MauiProgram.CurrentUser ?? await _auth.GetCurrentUserAsync();
            if (user is null)
                return;

            MauiProgram.SetCurrentUser(user);
            var token = await CrossFirebaseCloudMessaging.Current.GetTokenAsync();
            if (string.IsNullOrWhiteSpace(token))
                return;

            await _announcements.RegisterTokenAsync(token);
            Debug.WriteLine("[FCM] Registration token synchronized");
        }
        catch (Exception ex)
        {
            Debug.WriteLine($"[FCM] Token synchronization failed: {ex.GetType().Name}: {ex.Message}");
        }
    }

    public static void ProcessIntent(Intent? intent)
    {
        if (intent is null)
            return;

        var data = new Dictionary<string, string>(StringComparer.Ordinal);
        var extras = intent.Extras;
        if (extras is not null)
        {
            var keys = extras.KeySet();
            if (keys is null)
                return;

            foreach (var key in keys)
            {
                if (string.IsNullOrWhiteSpace(key))
                    continue;

                var value = extras.GetString(key);
                if (string.IsNullOrWhiteSpace(value))
                    value = extras.Get(key)?.ToString();

                if (!string.IsNullOrWhiteSpace(value))
                    data[key] = value;
            }
        }

        RouteData(data);
    }

    public static Task ProcessQueuedNotificationAsync()
    {
        string? route;
        lock (PendingRouteLock)
        {
            route = _queuedNotificationRoute;
            _queuedNotificationRoute = null;
        }

        if (string.IsNullOrWhiteSpace(route))
            return Task.CompletedTask;

        return MainThread.InvokeOnMainThreadAsync(async () =>
        {
            if (Shell.Current is null)
            {
                lock (PendingRouteLock)
                {
                    if (string.IsNullOrWhiteSpace(_queuedNotificationRoute))
                        _queuedNotificationRoute = route;
                }

                return;
            }

            try
            {
                await Shell.Current.GoToAsync(route);
            }
            catch (Exception ex)
            {
                Debug.WriteLine($"[FCM] Pending route failed: {route} :: {ex.Message}");
                lock (PendingRouteLock)
                {
                    _queuedNotificationRoute = route;
                }
            }
        });
    }

    private void OnTokenChanged(object? sender, FCMTokenChangedEventArgs e)
    {
        Debug.WriteLine("[FCM] Registration token refreshed");
        _ = SynchronizeTokenAsync();
    }

    private void OnNotificationReceived(object? sender, FCMNotificationReceivedEventArgs e)
    {
        var notification = e.Notification;
        var notificationType = Read(notification, "notification_type", "type");
        Debug.WriteLine(
            $"[FCM] Notification received type={notificationType} " +
            $"contentId={Read(notification, "content_id", "messageId", "announcementId", "postId")}");

        if (string.Equals(notificationType, "first_branch_member", StringComparison.OrdinalIgnoreCase))
        {
            var eventId = Read(notification, "event_id");
            if (!string.IsNullOrWhiteSpace(eventId) && !_handledEvents.TryAdd(eventId, 0))
            {
                Debug.WriteLine($"[FCM] Duplicate first-branch-member event ignored id={eventId}");
                return;
            }

            _ = ShowFirstBranchMemberNotificationAsync(notification);
        }
    }

    private void OnNotificationTapped(object? sender, FCMNotificationTappedEventArgs e)
    {
        var notification = e.Notification;
        Debug.WriteLine(
            $"[FCM] Notification tapped type={Read(notification, "notification_type", "type")} " +
            $"contentId={Read(notification, "content_id", "messageId", "announcementId", "postId")}");
        RouteData(notification.Data);
    }

    private static void OnMessagingError(object? sender, FCMErrorEventArgs e) =>
        Debug.WriteLine($"[FCM] Messaging error: {e.Message}");

    private static async Task ShowFirstBranchMemberNotificationAsync(FCMNotification notification)
    {
        var title = Read(notification, "title");
        var message = Read(notification, "message", "body");
        if (string.IsNullOrWhiteSpace(title) || string.IsNullOrWhiteSpace(message))
            return;

        try
        {
            await MainThread.InvokeOnMainThreadAsync(async () =>
            {
                if (Shell.Current is not null)
                    await Shell.Current.DisplayAlertAsync(title, message, "OK");
            });
        }
        catch (Exception ex)
        {
            Debug.WriteLine($"[FCM] First-branch-member foreground display failed: {ex.Message}");
        }
    }

    private static void RouteData(IDictionary<string, string>? data)
    {
        var notificationType = Read(data, "notification_type", "type", "notificationType").Trim();
        if (string.IsNullOrWhiteSpace(notificationType))
            return;

        var eventId = Read(data, "event_id", "content_id", "messageId", "announcementId", "postId", "group_id", "groupId");
        if (!string.IsNullOrWhiteSpace(eventId) && !RouteEvents.TryAdd(eventId, 0))
        {
            Debug.WriteLine($"[FCM] Duplicate event ignored id={eventId}");
            return;
        }

        var route = BuildRoute(notificationType, data);
        if (string.IsNullOrWhiteSpace(route))
            return;

        lock (PendingRouteLock)
        {
            if (string.IsNullOrWhiteSpace(_queuedNotificationRoute))
                _queuedNotificationRoute = route;
            else if (!string.Equals(_queuedNotificationRoute, route, StringComparison.Ordinal))
                _queuedNotificationRoute = route;
        }

        _ = ProcessQueuedNotificationAsync();
    }

    private static string BuildRoute(string notificationType, IDictionary<string, string>? data)
    {
        var normalized = notificationType.Trim();
        if (string.IsNullOrWhiteSpace(normalized))
            return string.Empty;

        normalized = normalized.ToLowerInvariant();
        var announcementId = Read(data, "announcement_id", "announcementId", "content_id");
        var groupId = Read(data, "group_id", "groupId");
        var postId = Read(data, "post_id", "postId", "content_id");

        switch (normalized)
        {
            case "announcement":
                if (string.IsNullOrWhiteSpace(announcementId))
                    return string.Empty;
                return $"{nameof(Pages.AnnouncementActivityPage)}?announcementId={Uri.EscapeDataString(announcementId)}";

            case "group_message":
                if (string.IsNullOrWhiteSpace(groupId))
                    return string.Empty;
                return $"{nameof(Pages.GroupChatPage)}?groupId={Uri.EscapeDataString(groupId)}";

            case "home_update":
            case "post":
            case "official_update":
                if (string.IsNullOrWhiteSpace(postId))
                    return string.Empty;
                return $"{nameof(Pages.FullCommunityPage)}?postId={Uri.EscapeDataString(postId)}";

            default:
                return string.Empty;
        }
    }

    private static string Read(IDictionary<string, string>? data, params string[] keys)
    {
        if (data is null)
            return string.Empty;

        foreach (var key in keys)
        {
            if (data.TryGetValue(key, out var value) && !string.IsNullOrWhiteSpace(value))
                return value;
        }

        return string.Empty;
    }

    private static string Read(FCMNotification notification, params string[] keys) =>
        Read(notification.Data, keys);
}
