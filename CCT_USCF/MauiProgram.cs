using Microsoft.Extensions.Logging;

namespace CCT_USCF;

public static class MauiProgram
{
	public static System.IServiceProvider Services { get; private set; }

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
		builder.Services.AddSingleton(sp => new HttpClient { BaseAddress = new Uri("http://10.0.2.2:5140") });
		builder.Services.AddSingleton<CCT_USCF.Services.AuthService>();

		var app = builder.Build();
		// expose the service provider for simple page-level access
		Services = app.Services;
		return app;
	}
}
