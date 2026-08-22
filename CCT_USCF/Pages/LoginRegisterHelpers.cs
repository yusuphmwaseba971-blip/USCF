using System.Net.Http.Headers;
using System.Text;
using System.Text.Json;

namespace CCT_USCF.Pages;

// Helper to access the shared AuthService from XAML pages without full DI wiring.
public static class LoginRegisterHelpers
{
    public static Services.AuthService GetAuthService() => MauiProgram.CreateAuthServiceForPages();
}
