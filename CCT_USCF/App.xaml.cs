
using Microsoft.Extensions.DependencyInjection;
using CCT_USCF.Pages;
using CCT_USCF.Services;
using System.Diagnostics;

namespace CCT_USCF;

public partial class App : Application
{
    public App()
    {
        Debug.WriteLine($"[STARTUP] App constructor started at {DateTimeOffset.UtcNow:O}");
        InitializeComponent();
        MauiProgram.Services
            .GetRequiredService<AppAppearanceService>()
            .ApplyTypography();
        RequestedThemeChanged += OnRequestedThemeChanged;
        Debug.WriteLine($"[STARTUP] App created at {DateTimeOffset.UtcNow:O}");

        _ = MauiProgram.Services
            .GetRequiredService<StartupPreloadCoordinator>()
            .PreloadAsync();

        // NOTE: Region seeding is temporary and should be run manually.
        // The automatic seeder was disabled to avoid runtime write attempts
        // (Firestore rules disallow writes to the regions collection in production).
        // If you need to run the seeder once, call SeedFirebaseRegionsAsync() manually.
        // _ = SeedFirebaseRegionsAsync();
    }

    private void OnRequestedThemeChanged(object? sender, AppThemeChangedEventArgs e) =>
        MauiProgram.Services.GetRequiredService<AppAppearanceService>()
            .NotifySystemThemeChanged();

    private async Task SeedFirebaseRegionsAsync()
    {
        try
        {
            var seeder =
                MauiProgram.Services
                    .GetRequiredService<FirebaseRegionSeedService>();

            await seeder.SeedTanzaniaRegionsAsync();

            System.Diagnostics.Debug.WriteLine(
                "[FIREBASE REGION SEED] SUCCESS");
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine(
                $"[FIREBASE REGION SEED] FAILED: {ex}");
        }
    }

    protected override Window CreateWindow(
        IActivationState? activationState)
    {
        Debug.WriteLine($"[STARTUP] First page requested at {DateTimeOffset.UtcNow:O}");
        return new Window(new AppShell());
    }
}