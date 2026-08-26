using Appwrite;
using Appwrite.Services;
using Microsoft.Extensions.Logging;

namespace CCT_USCF;

public static class MauiProgram
{
    public static IServiceProvider Services { get; private set; } = null!;

    // Current authenticated user
    public static CCT_USCF.Models.CurrentUser? CurrentUser { get; private set; }

    // Authentication state event
    public static event Action? AuthStateChanged;

    // Appwrite configuration
    private const string AppwriteEndpoint =
        "https://sgp.cloud.appwrite.io/v1";

    private const string AppwriteProjectId =
        "cct-uscf";

    public static void NotifyAuthChanged()
    {
        AuthStateChanged?.Invoke();
    }

    public static void SetCurrentUser(
        CCT_USCF.Models.CurrentUser? user)
    {
        CurrentUser = user;
    }

    public static CCT_USCF.Services.AuthService
        CreateAuthServiceForPages()
    {
        return Services
            .GetRequiredService<CCT_USCF.Services.AuthService>();
    }

    public static MauiApp CreateMauiApp()
    {
        var builder = MauiApp.CreateBuilder();

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

#if DEBUG
        builder.Logging.AddDebug();
#endif

        // =========================================================
        // EXISTING BACKEND API
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

        var appwriteClient = new Client()
            .SetEndpoint(AppwriteEndpoint)
            .SetProject(AppwriteProjectId);

        // Register the Appwrite client
        builder.Services.AddSingleton(appwriteClient);

        // Appwrite Authentication
        builder.Services.AddSingleton<Account>();

        // Appwrite database
        builder.Services.AddSingleton<TablesDB>();

        // Appwrite file storage
        builder.Services.AddSingleton<Storage>();

        // Appwrite Functions
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

        // Expose service provider for page-level access
        Services = app.Services;

        return app;
    }
}