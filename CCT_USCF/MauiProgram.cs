using Appwrite;
using Appwrite.Services;

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
        CCT_USCF.Models.CurrentUser? user)
    {
        CurrentUser = user;
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
    // APPWRITE CONFIGURATION
    // =========================================================
    builder.Services.AddSingleton<
    CCT_USCF.Services.FirebaseRegionSeedService>();

builder.Services.AddSingleton<
    CCT_USCF.Services.FirebaseDistrictSeedService>();

builder.Services.AddSingleton<
    CCT_USCF.Services.FirebaseUniversitySeedService>();

    private const string AppwriteEndpoint =
        "https://sgp.cloud.appwrite.io/v1";

    private const string AppwriteProjectId =
        "cct-uscf";

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
                });
            });
        });

#endif

        // =====================================================
        // FIREBASE AUTHENTICATION
        // =====================================================

        builder.Services.AddSingleton<IFirebaseAuth>(
            _ => CrossFirebaseAuth.Current);

        builder.Services.AddSingleton<IFirebaseFirestore>(
    _ => CrossFirebaseFirestore.Current);

        // =====================================================
        // EXISTING ASP.NET CORE API
        // =====================================================
        //
        // Kept temporarily because other parts of the
        // application may still use AuthService/API services.
        //
        // Once all services are migrated to Firebase/Appwrite,
        // this HttpClient can be removed.
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
        // Appwrite is used for:
        //
        // Images
        // Videos
        // Audio
        // Documents
        //
        // Firebase Storage is NOT used.
        // =====================================================

        var appwriteClient = new Client()
            .SetEndpoint(AppwriteEndpoint)
            .SetProject(AppwriteProjectId);

        builder.Services.AddSingleton(appwriteClient);

        // Appwrite Account
        builder.Services.AddSingleton<Account>();

        // Appwrite TablesDB
        builder.Services.AddSingleton<TablesDB>();

        // Appwrite Storage
        builder.Services.AddSingleton<Storage>();

        // Appwrite Functions
        builder.Services.AddSingleton<Functions>();

        // =====================================================
        // CCT APPLICATION SERVICES
        // =====================================================

        // Firebase Authentication + Firestore service
        builder.Services.AddSingleton<
            CCT_USCF.Services.AuthService>();

        // Community service
        builder.Services.AddSingleton<
            CCT_USCF.Services.CommunityService>();

        // Bible service
        builder.Services.AddSingleton<
            CCT_USCF.Services.BibleService>();

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

        // Store the application's service provider
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

            // Firebase Analytics
            isAnalyticsEnabled: true,

            // Firebase Authentication
            isAuthEnabled: true,

            // Firebase Cloud Messaging
            isCloudMessagingEnabled: true,

            // Dynamic Links
            isDynamicLinksEnabled: false,

            // Cloud Firestore
            isFirestoreEnabled: true,

            // Firebase Functions
            isFunctionsEnabled: true,

            // Firebase Remote Config
            isRemoteConfigEnabled: true,

            // Firebase Storage
            //
            // FALSE because CCT-USCF uses Appwrite
            // for images, videos, audio and documents.
            isStorageEnabled: false
        )
        {
            // Firebase Installations
            IsInstallationsEnabled = true,

            // Performance Monitoring
            IsPerformanceMonitoringEnabled = false
        };
    }

                fonts.AddFont(
                    "OpenSans-Semibold.ttf",
                    "OpenSansSemibold");
            });

#if DEBUG
        builder.Logging.AddDebug();
#endif

        // =========================================================
        // FIREBASE
        // =========================================================
        //
        // Plugin.Firebase 4.2.1
        //
        // Firebase services enabled:
        // - Authentication
        // - Cloud Firestore
        // - Cloud Messaging
        // - Functions
        // - Remote Config
        // - Installations
        //
        // Storage is intentionally NOT used because CCT-USCF
        // will continue using Appwrite for media/files.
        // =========================================================

#if ANDROID

        builder.ConfigureLifecycleEvents(events =>
        {
            events.AddAndroid(android =>
                android.OnCreate((activity, _) =>
                {
                    var firebaseSettings =
                        CreateFirebaseSettings();

                    CrossFirebase.Initialize(
                        activity,
                        () => Platform.CurrentActivity,
                        firebaseSettings);
                }));
        });

#endif

        // Firebase Authentication
        builder.Services.AddSingleton(
            _ => CrossFirebaseAuth.Current);

        // =========================================================
        // EXISTING ASP.NET CORE API
        // =========================================================
        //
        // TEMPORARY.
        //
        // DO NOT REMOVE THIS YET.
        //
        // AuthService, CommunityService and other existing
        // services may still depend on the old API.
        //
        // We will remove this after those services are migrated
        // to Firebase/Firestore.
        // =========================================================

        builder.Services.AddSingleton(sp =>
            new HttpClient
            {
                BaseAddress = new Uri(
                    CCT_USCF.Services.ApiConfig.BaseUrl)
            });

        // =========================================================
        // APPWRITE CLOUD
        // =========================================================
        //
        // Appwrite remains responsible for:
        // - Images
        // - Videos
        // - Audio
        // - Documents
        // =========================================================

        var appwriteClient = new Client()
            .SetEndpoint(AppwriteEndpoint)
            .SetProject(AppwriteProjectId);

        builder.Services.AddSingleton(appwriteClient);

        // Appwrite account
        builder.Services.AddSingleton<Account>();

        // Appwrite database
        builder.Services.AddSingleton<TablesDB>();

        // Appwrite file storage
        builder.Services.AddSingleton<Storage>();

        // Appwrite functions
        builder.Services.AddSingleton<Functions>();

        // =========================================================
        // CCT SERVICES
        // =========================================================

        // Authentication
        builder.Services.AddSingleton<
            CCT_USCF.Services.AuthService>();

        // Community
        builder.Services.AddSingleton<
            CCT_USCF.Services.CommunityService>();

        // Offline Bible
        builder.Services.AddSingleton<
            CCT_USCF.Services.BibleService>();

#if ANDROID

        // Android audio player
        builder.Services.AddSingleton<
            CCT_USCF.Services.IAudioPlayer,
            CCT_USCF.Services.AndroidAudioPlayer>();

#endif

        // =========================================================
        // BUILD APPLICATION
        // =========================================================

        var app = builder.Build();

        // Expose service provider
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

            // Firebase Analytics
            isAnalyticsEnabled: true,

            // Firebase Authentication
            isAuthEnabled: true,

            // Firebase Cloud Messaging
            isCloudMessagingEnabled: true,

            // Dynamic Links
            isDynamicLinksEnabled: false,

            // Cloud Firestore
            isFirestoreEnabled: true,

            // Firebase Functions
            isFunctionsEnabled: true,

            // Remote Config
            isRemoteConfigEnabled: true,

            // Firebase Storage
            // Disabled because Appwrite handles media.
            isStorageEnabled: false

        )
        {
            // Firebase Installations
            IsInstallationsEnabled = true,

            // Performance Monitoring
            IsPerformanceMonitoringEnabled = false
        };
    }
}            CCT_USCF.Services.AuthService>();

        // Community
        builder.Services.AddSingleton<
            CCT_USCF.Services.CommunityService>();

        // Offline Bible
        builder.Services.AddSingleton<
            CCT_USCF.Services.BibleService>();

#if ANDROID

        // Android audio player
        builder.Services.AddSingleton<
            CCT_USCF.Services.IAudioPlayer,
            CCT_USCF.Services.AndroidAudioPlayer>();

#endif

        // =========================================================
        // BUILD APPLICATION
        // =========================================================

        var app = builder.Build();

        // Expose service provider for page-level access
        Services = app.Services;

        return app;
    }
}
