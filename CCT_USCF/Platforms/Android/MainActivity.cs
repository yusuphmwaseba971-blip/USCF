using Android.App;
using Android.Content.PM;
using Android.OS;
using Plugin.Firebase.AppCheck;
using Plugin.Firebase.Core.Platforms.Android;

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
    protected override void OnCreate(Bundle? savedInstanceState)
    {
#if DEBUG
        CrossFirebaseAppCheck.Configure(AppCheckOptions.Debug);
#else
        CrossFirebaseAppCheck.Configure(AppCheckOptions.PlayIntegrity);
#endif
        CrossFirebase.Initialize(this, () => this);
        base.OnCreate(savedInstanceState);
        if (Build.VERSION.SdkInt >= BuildVersionCodes.Tiramisu &&
            CheckSelfPermission(Android.Manifest.Permission.PostNotifications) != Permission.Granted)
        {
            RequestPermissions(new[] { Android.Manifest.Permission.PostNotifications }, 1001);
        }
    }
}
