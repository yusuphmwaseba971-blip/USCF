using System.Collections.Concurrent;
using System.Diagnostics;
using Plugin.Firebase.CloudMessaging;
using Plugin.Firebase.CloudMessaging.EventArgs;

namespace CCT_USCF.Services;

public sealed class NotificationService
{
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

    private void OnTokenChanged(object? sender, FCMTokenChangedEventArgs e)
    {
        Debug.WriteLine("[FCM] Registration token refreshed");
        _ = SynchronizeTokenAsync();
    }

    private void OnNotificationReceived(object? sender, FCMNotificationReceivedEventArgs e)
    {
        var notification = e.Notification;
        Debug.WriteLine(
            $"[FCM] Notification received type={Read(notification, "notification_type", "type")} " +
            $"contentId={Read(notification, "content_id", "messageId", "announcementId")}");
    }

    private void OnNotificationTapped(object? sender, FCMNotificationTappedEventArgs e)
    {
        var notification = e.Notification;
        Debug.WriteLine(
            $"[FCM] Notification tapped type={Read(notification, "notification_type", "type")} " +
            $"contentId={Read(notification, "content_id", "messageId", "announcementId")}");
        _ = RouteAsync(notification);
    }

    private static void OnMessagingError(object? sender, FCMErrorEventArgs e) =>
        Debug.WriteLine($"[FCM] Messaging error: {e.Message}");

    private async Task RouteAsync(FCMNotification notification)
    {
        var data = notification.Data;
        var type = Read(notification, "notification_type", "type").ToLowerInvariant();
        var eventId = Read(notification, "event_id", "content_id", "messageId", "announcementId", "postId");
        if (!string.IsNullOrWhiteSpace(eventId) && !_handledEvents.TryAdd(eventId, 0))
        {
            Debug.WriteLine($"[FCM] Duplicate event ignored id={eventId}");
            return;
        }

        await MainThread.InvokeOnMainThreadAsync(async () =>
        {
            switch (type)
            {
                case "group_message":
                    var groupId = Read(notification, "group_id", "groupId");
                    if (string.IsNullOrWhiteSpace(groupId))
                        return;
                    await Shell.Current.GoToAsync(
                        $"{nameof(Pages.GroupChatPage)}?groupId={Uri.EscapeDataString(groupId)}");
                    break;

                case "announcement":
                    var announcementId = Read(notification, "announcement_id", "announcementId", "content_id");
                    await Shell.Current.GoToAsync(
                        $"{nameof(Pages.AnnouncementActivityPage)}?announcementId={Uri.EscapeDataString(announcementId)}");
                    break;

                case "home_update":
                    await Shell.Current.GoToAsync("//home");
                    break;
            }
        });
    }

    private static string Read(FCMNotification notification, params string[] keys)
    {
        foreach (var key in keys)
            if (notification.Data?.TryGetValue(key, out var value) == true &&
                !string.IsNullOrWhiteSpace(value))
                return value;
        return string.Empty;
    }
}
