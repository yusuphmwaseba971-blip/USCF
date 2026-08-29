using System;
using System.Threading.Tasks;
using Microsoft.Maui.ApplicationModel;

namespace CCT_USCF.Pages;

public partial class SplashPage : ContentPage
{
    private bool _startupCompleted;

    public SplashPage()
    {
        InitializeComponent();
    }

    protected override async void OnAppearing()
    {
        base.OnAppearing();

        if (_startupCompleted)
            return;

        _startupCompleted = true;

        await StartApplicationAsync();
    }

    private async Task StartApplicationAsync()
    {
        try
        {
            // Allow the startup branding page to render completely.
            await Task.Delay(1000);

            await MainThread.InvokeOnMainThreadAsync(() =>
            {
                Application.Current!.Windows[0].Page = new AppShell();
            });
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine(
                $"[SPLASH] Startup transition failed: {ex}");

            // Always allow the user to enter the application
            // even if the startup transition encounters an error.
            await MainThread.InvokeOnMainThreadAsync(() =>
            {
                Application.Current!.Windows[0].Page = new AppShell();
            });
        }
    }
}
