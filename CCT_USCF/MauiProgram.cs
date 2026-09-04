using Appwrite;
using Appwrite.Services;
using CCT_USCF.Services.Cloudinary;

using CCT_USCF.Services;
using CCT_USCF.Services.Appwrite;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Logging;
using Microsoft.Maui.LifecycleEvents;

using Plugin.Firebase.Auth;
using Plugin.Firebase.Bundled.Shared;
using Plugin.Firebase.Firestore;

#if ANDROID
using Plugin.Firebase.Bundled.Platforms.Android;
#endif

namespace CCT_USCF;

public static class MauiProgram
{
    // =========================================================
    // GLOBAL SERVICES
    // =========================================================

    public static IServiceProvider Services { get; private set; } = null!;

    // =========================================================
    // CURRENT USER
    // =========================================================

    public static CCT_USCF.Models.CurrentUser? CurrentUser { get; private set; }

    public static event Action? AuthStateChanged;

    public static void NotifyAuthChanged()
    {
        AuthStateChanged?.Invoke();
    }

    public static void SetCurrentUser(
        CCT_USCF.Models.CurrentUser? user,
        bool notify = false)
    {
        CurrentUser = user;

        if (notify)
            NotifyAuthChanged();
    }

    // =========================================================
    // AUTH SERVICE ACCESS
    // =========================================================

    public static CCT_USCF.Services.AuthService
        CreateAuthServiceForPages()
    {
        return Services.GetRequiredService<
            CCT_USCF.Services.AuthService>();
    }

    // =========================================================
    // APPLICATION
    // =========================================================

    public static MauiApp CreateMauiApp()
    {
        var builder = MauiApp.CreateBuilder();

        // =====================================================
        // MAUI
        // =====================================================

        builder
            .UseMauiApp<App>()
            .ConfigureFonts(fonts =>
            {
                fonts.AddFont(
                    "OpenSans-Regular.ttf",
                    "OpenSansRegular");

                fonts.AddFont(
                    "OpenSans-Semibold.ttf",
                    "OpenSansSemibold");
            });

        // =====================================================
        // LOGGING
        // =====================================================

#if DEBUG
        builder.Logging.AddDebug();
#endif

        // =====================================================
        // FIREBASE INITIALIZATION
        // =====================================================

#if ANDROID

        builder.ConfigureLifecycleEvents(events =>
        {
            events.AddAndroid(android =>
            {
                android.OnCreate((activity, _) =>
                {
                    var firebaseSettings =
                        CreateFirebaseSettings();

                    CrossFirebase.Initialize(
                        activity,
                        () => Platform.CurrentActivity,
                        firebaseSettings);

                    // Signal that CrossFirebase.Initialize has completed so
                    // pages can await FirebaseInit.Initialized before issuing
                    // Firestore/Auth calls.
                    FirebaseInit.SignalInitialized();
                });
            });
        });

#endif

        // =====================================================
        // FIREBASE AUTHENTICATION
        // =====================================================

        builder.Services.AddSingleton<IFirebaseAuth>(
            _ => CrossFirebaseAuth.Current);

        // =====================================================
        // FIREBASE FIRESTORE
        // =====================================================

        builder.Services.AddSingleton<IFirebaseFirestore>(
            _ => CrossFirebaseFirestore.Current);

        // =====================================================
        // EXISTING ASP.NET CORE API
        // =====================================================
        //
        // Kept temporarily because existing services may still
        // communicate with the ASP.NET Core backend.
        //
        // It can be removed later after complete migration.
        // =====================================================

        builder.Services.AddSingleton<HttpClient>(_ =>
        {
            return new HttpClient
            {
                BaseAddress = new Uri(
                    CCT_USCF.Services.ApiConfig.BaseUrl)
            };
        });

        // =====================================================
        // APPWRITE
        // =====================================================
        //
        // Appwrite handles:
        // - Images
        // - Videos
        // - Audio
        // - Documents
        //
        // Firebase Storage remains disabled.
        // =====================================================

        builder.Services.AddSingleton<AppwriteService>();

        // =====================================================
        // CCT APPLICATION SERVICES
        // =====================================================

        // Authentication
        builder.Services.AddSingleton<
            CCT_USCF.Services.AuthService>();

// Community
builder.Services.AddSingleton<
    CCT_USCF.Services.CommunityService>();

// Cloudinary
builder.Services.AddSingleton<
    CloudinaryService>();
// Bible
builder.Services.AddSingleton<
    CCT_USCF.Services.BibleService>();
builder.Services.AddSingleton<ChurchAnnouncementService>();
builder.Services.AddSingleton<AppAppearanceService>();
        // =====================================================
        // FIREBASE DATA SEEDERS
        // =====================================================
        //
        // These are registered so they can be called when
        // required.
        //
        // IMPORTANT:
        // Registration does NOT automatically seed the database.
        // The seeding methods must be explicitly called.
        // =====================================================

        builder.Services.AddSingleton<
            CCT_USCF.Services.FirebaseRegionSeedService>();

        builder.Services.AddSingleton<
            CCT_USCF.Services.FirebaseDistrictSeedService>();

        builder.Services.AddSingleton<
            CCT_USCF.Services.FirebaseUniversitySeedService>();

        // =====================================================
        // ANDROID AUDIO PLAYER
        // =====================================================

#if ANDROID

        builder.Services.AddSingleton<
            CCT_USCF.Services.IAudioPlayer,
            CCT_USCF.Services.AndroidAudioPlayer>();

#endif

        // =====================================================
        // BUILD APPLICATION
        // =====================================================

        var app = builder.Build();

        // Store application's service provider
        Services = app.Services;

        return app;
    }

    // =========================================================
    // FIREBASE SETTINGS
    // =========================================================

   private static CrossFirebaseSettings
       CreateFirebaseSettings()
   {
       return new CrossFirebaseSettings(
           isAnalyticsEnabled: true,
           isAuthEnabled: true,
           isCloudMessagingEnabled: true,
           isDynamicLinksEnabled: true,
           isFirestoreEnabled: true,
           isFunctionsEnabled: true,
           isRemoteConfigEnabled: true,
           isStorageEnabled: false);
   }
}
