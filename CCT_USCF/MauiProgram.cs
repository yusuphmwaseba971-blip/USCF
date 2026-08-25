using Microsoft.Extensions.Logging;

namespace CCT_USCF;

public static class MauiProgram
{
	public static System.IServiceProvider Services { get; private set; }

	// Current authenticated user (nullable)
	public static CCT_USCF.Models.CurrentUser? CurrentUser { get; private set; }

	// Event used to notify pages/shell of authentication state changes (login/logout)
	public static event Action? AuthStateChanged;
	public static void NotifyAuthChanged() => AuthStateChanged?.Invoke();

	public static void SetCurrentUser(CCT_USCF.Models.CurrentUser? user)
	{
	CurrentUser = user;
}

	public static CCT_USCF.Services.AuthService CreateAuthServiceForPages()
	{
return (CCT_USCF.Services.AuthService)Services.GetService(typeof(CCT_USCF.Services.AuthService))!;
	}

	public static MauiApp CreateMauiApp()
	{
var builder = MauiApp.CreateBuilder();
builder
		.UseMauiApp<App>()
			.ConfigureFonts(fonts =>
			{
				fonts.AddFont("OpenSans-Regular.ttf", "OpenSansRegular");
				fonts.AddFont("OpenSans-Semibold.ttf", "OpenSansSemibold");
			});
		#if DEBUG
		builder.Logging.AddDebug();
#endif

// register HttpClient and AuthService for pages
// Use centralized API base URL from ApiConfig
builder.Services.AddSingleton(sp => new HttpClient { BaseAddress = new Uri(CCT_USCF.Services.ApiConfig.BaseUrl) });
builder.Services.AddSingleton<CCT_USCF.Services.AuthService>();
            // Community API for prayer requests and other community features
            builder.Services.AddSingleton<CCT_USCF.Services.CommunityService>();
            // Offline Bible service (loads kjv.json from app package)
            builder.Services.AddSingleton<CCT_USCF.Services.BibleService>();

#if ANDROID
// Register Android audio player implementation for platform-specific playback
builder.Services.AddSingleton<CCT_USCF.Services.IAudioPlayer, CCT_USCF.Services.AndroidAudioPlayer>();
#endif
		var app = builder.Build();
// expose the service provider for simple page-level access
Services = app.Services;
return app;
	}
}
