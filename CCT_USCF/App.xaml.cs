
using Microsoft.Extensions.DependencyInjection;
using CCT_USCF.Services;

namespace CCT_USCF;

public partial class App : Application
{
    public App()
    {
        InitializeComponent();

        // NOTE: Region seeding is temporary and should be run manually.
        // The automatic seeder was disabled to avoid runtime write attempts
        // (Firestore rules disallow writes to the regions collection in production).
        // If you need to run the seeder once, call SeedFirebaseRegionsAsync() manually.
        // _ = SeedFirebaseRegionsAsync();
    }

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
        return new Window(new AppShell());
    }
}