using Android.App;
using Android.Content;
using Android.Content.PM;
using Android.OS;
using Android.Views;
using AndroidX.Core.App;
using Plugin.Firebase.AppCheck;
using Plugin.Firebase.CloudMessaging;
using Plugin.Firebase.Core.Platforms.Android;
using System.Threading.Tasks;

namespace CCT_USCF;

[Activity(
    Theme = "@style/Maui.SplashTheme",
    MainLauncher = true,
    LaunchMode = LaunchMode.SingleTop,
    ConfigurationChanges =
        ConfigChanges.ScreenSize |
        ConfigChanges.Orientation |
        ConfigChanges.UiMode |
        ConfigChanges.ScreenLayout |
        ConfigChanges.SmallestScreenSize |
        ConfigChanges.Density)]
public class MainActivity : MauiAppCompatActivity
{
    private const string GeneralChannelId = "com.uscf.cct.general";
    private const string GroupChannelId = "com.uscf.cct.group_messages";
    private const string AnnouncementChannelId = "com.uscf.cct.announcements";
    private const string CommunityChannelId = "com.uscf.cct.community";
    private static readonly string[] ChannelIds = [GeneralChannelId, GroupChannelId, AnnouncementChannelId, CommunityChannelId];
    private static TaskCompletionSource<Intent?>? _googleSignInCompletion;

    public static Task<Intent?> StartGoogleSignInAsync(Intent intent, int requestCode)
    {
        _googleSignInCompletion = new TaskCompletionSource<Intent?>(
            TaskCreationOptions.RunContinuationsAsynchronously);
        var activity = Platform.CurrentActivity
            ?? throw new InvalidOperationException("No active Android activity is available.");
        activity.StartActivityForResult(intent, requestCode);
        return _googleSignInCompletion.Task;
    }

    protected override void OnActivityResult(int requestCode, Android.App.Result resultCode, Intent? data)
    {
        base.OnActivityResult(requestCode, resultCode, data);
        if (requestCode == 9101)
        {
            _googleSignInCompletion?.TrySetResult(
                resultCode == Android.App.Result.Ok ? data : null);
            _googleSignInCompletion = null;
        }
    }

    protected override void OnCreate(Bundle? savedInstanceState)
    {
        System.Diagnostics.Debug.WriteLine($"[STARTUP] Android activity created at {DateTimeOffset.UtcNow:O}");
#if DEBUG
        CrossFirebaseAppCheck.Configure(AppCheckOptions.Debug);
#else
        CrossFirebaseAppCheck.Configure(AppCheckOptions.PlayIntegrity);
#endif
        CrossFirebase.Initialize(this, () => this);
        System.Diagnostics.Debug.WriteLine($"[STARTUP] Firebase initialization requested at {DateTimeOffset.UtcNow:O}");
        CreateNotificationChannels();
        CrossFirebaseCloudMessaging.Current.NotificationReceived += OnNotificationReceived;
        CrossFirebaseCloudMessaging.Current.TokenChanged += OnTokenChanged;
        CrossFirebaseCloudMessaging.Current.NotificationTapped += OnNotificationTapped;
        FirebaseCloudMessagingImplementation.OnNewIntent(Intent);
        base.OnCreate(savedInstanceState);
        Window?.SetSoftInputMode(SoftInput.AdjustPan);
        if (Build.VERSION.SdkInt >= BuildVersionCodes.Tiramisu &&
            CheckSelfPermission(Android.Manifest.Permission.PostNotifications) != Permission.Granted)
        {
            RequestPermissions(new[] { Android.Manifest.Permission.PostNotifications }, 1001);
        }
    }

    protected override void OnNewIntent(Intent? intent)
    {
        base.OnNewIntent(intent);
        if (intent is not null)
        {
            FirebaseCloudMessagingImplementation.OnNewIntent(intent);
        }
    }

    private void CreateNotificationChannels()
    {
        var notificationManager = (NotificationManager?)Android.App.Application.Context.GetSystemService(Context.NotificationService);
        if (notificationManager is null)
        {
            return;
        }

        foreach (var channelId in ChannelIds)
        {
            if (notificationManager.GetNotificationChannel(channelId) is not null)
            {
                continue;
            }

            var name = channelId switch
            {
                var id when id == GeneralChannelId => "CCT-USCF General",
                var id when id == GroupChannelId => "CCT-USCF Group Messages",
                var id when id == AnnouncementChannelId => "CCT-USCF Announcements",
                var id when id == CommunityChannelId => "CCT-USCF Community",
                _ => "CCT-USCF"
            };

            var importance = channelId == GroupChannelId ? NotificationImportance.High : NotificationImportance.Default;
            var channel = new NotificationChannel(channelId, name, importance)
            {
                Description = "USCF push notifications"
            };
            channel.EnableVibration(true);
            channel.EnableLights(true);
            notificationManager.CreateNotificationChannel(channel);
        }

        FirebaseCloudMessagingImplementation.ChannelId = GeneralChannelId;
    }

    private void OnNotificationReceived(object? sender, Plugin.Firebase.CloudMessaging.EventArgs.FCMNotificationReceivedEventArgs e)
    {
        var notification = e?.Notification;
        var title = notification?.Title ?? "USCF";
        var body = notification?.Body ?? "New update";
        System.Diagnostics.Debug.WriteLine($"[FCM_RECEIVED] title={title} body={body}");
    }

    private void OnTokenChanged(object? sender, Plugin.Firebase.CloudMessaging.EventArgs.FCMTokenChangedEventArgs e)
    {
        System.Diagnostics.Debug.WriteLine($"[FCM_TOKEN_CHANGED] token={e?.Token ?? "empty"}");
    }

    private void OnNotificationTapped(object? sender, Plugin.Firebase.CloudMessaging.EventArgs.FCMNotificationTappedEventArgs e)
    {
        var notification = e?.Notification;
        var title = notification?.Title ?? "USCF";
        System.Diagnostics.Debug.WriteLine($"[FCM_TAPPED] title={title} dataCount={notification?.Data?.Count ?? 0}");
    }
}
