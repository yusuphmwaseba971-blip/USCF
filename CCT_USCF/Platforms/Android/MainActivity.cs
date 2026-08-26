using Android.App;
using Android.Content.PM;
using Android.OS;
using Plugin.Firebase.Bundled.Platforms.Android;
using Plugin.Firebase.Bundled.Shared;

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
        base.OnCreate(savedInstanceState);

        var settings = new CrossFirebaseSettings(
            isAnalyticsEnabled: true,
            isAuthEnabled: false,
            isCloudMessagingEnabled: true,
            isCrashlyticsEnabled: false,
            isDynamicLinksEnabled: false,
            isFirestoreEnabled: false,
            isFunctionsEnabled: false,
            isRemoteConfigEnabled: false,
            isStorageEnabled: false,
            googleRequestIdToken: null,
            appCheckOptions: null
        );

        CrossFirebase.Initialize(
            this,
            () => this,
            settings,
            null,
            null
        );
    }
}