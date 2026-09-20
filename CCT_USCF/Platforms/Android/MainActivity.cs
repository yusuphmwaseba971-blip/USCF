using Android.App;
using Android.Content.PM;
using Android.OS;
using Android.Views;
using Android.Content;
using System.Threading.Tasks;
using Plugin.Firebase.AppCheck;
using Plugin.Firebase.Core.Platforms.Android;
using Plugin.Firebase.CloudMessaging;

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
        CreateNotificationChannel();
        FirebaseCloudMessagingImplementation.OnNewIntent(Intent);
        System.Diagnostics.Debug.WriteLine($"[STARTUP] Firebase initialization requested at {DateTimeOffset.UtcNow:O}");
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
            FirebaseCloudMessagingImplementation.OnNewIntent(intent);
    }

    private void CreateNotificationChannel()
    {
        if (Build.VERSION.SdkInt < BuildVersionCodes.O)
            return;

        const string channelId = "cct-uscf.general";
        var manager = (Android.App.NotificationManager?)
            GetSystemService(NotificationService);
        manager?.CreateNotificationChannel(new Android.App.NotificationChannel(
            channelId,
            "CCT-USCF notifications",
            Android.App.NotificationImportance.Default)
        {
            Description = "CCT-USCF announcements and group messages"
        });
        FirebaseCloudMessagingImplementation.ChannelId = channelId;
    }
}
