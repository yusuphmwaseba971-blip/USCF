using CCT_USCF.Services;

namespace CCT_USCF.Pages;

public partial class VerifyEmailPage : ContentPage
{
    private readonly AuthService _authService;
    private int _resendSecondsRemaining;
    private bool _busy;

    public VerifyEmailPage()
    {
        InitializeComponent();
        _authService = LoginRegisterHelpers.GetAuthService();
        EmailLabel.Text = _authService.CurrentEmail ?? "your registered email address";
    }

    protected override void OnAppearing()
    {
        base.OnAppearing();
        EmailLabel.Text = _authService.CurrentEmail ?? "your registered email address";
    }

    protected override bool OnBackButtonPressed() => true;

    private async void OnCheckClicked(object sender, EventArgs e)
    {
        if (_busy)
            return;

        if (Connectivity.Current.NetworkAccess != NetworkAccess.Internet)
        {
            ShowStatus("Connection unavailable. Please reconnect and try again.");
            return;
        }

        SetBusy(true, "Checking your verification status...");
        try
        {
            if (await _authService.RefreshEmailVerificationAsync())
            {
                ShowStatus("✓ Account Verified\n\nYour CCT-USCF account is ready.", isError: false);
                MauiProgram.NotifyAuthChanged();
                await Task.Delay(900);
                await Shell.Current.GoToAsync("//home");
                return;
            }

            ShowStatus("Your email is not verified yet. Please open the verification email and try again.");
        }
        catch (Exception ex)
        {
            LogTechnicalFailure("Email verification check failed", ex);
            ShowStatus("Connection unavailable. Please check your internet connection and try again.");
        }
        finally
        {
            SetBusy(false);
        }
    }

    private async void OnResendClicked(object sender, EventArgs e)
    {
        if (_busy)
            return;

        if (_resendSecondsRemaining > 0)
        {
            ShowStatus("Please wait before requesting another verification email.", isError: false);
            return;
        }

        if (Connectivity.Current.NetworkAccess != NetworkAccess.Internet)
        {
            ShowStatus("Connection unavailable. Please reconnect and try again.");
            return;
        }

        SetBusy(true, "Sending verification email...");
        try
        {
            await _authService.SendVerificationEmailAsync();
            ShowStatus("Verification email sent.", isError: false);
            StartResendCooldown();
        }
        catch (Exception ex)
        {
            LogTechnicalFailure("Verification email resend failed", ex);
            ShowStatus("We couldn't send the verification email. Please try again later.");
        }
        finally
        {
            SetBusy(false);
        }
    }

    private async void OnEditEmailClicked(object sender, EventArgs e)
    {
        if (_busy)
            return;

        var currentEmail = _authService.CurrentEmail ?? string.Empty;
        var editedEmail = await DisplayPromptAsync(
            "Edit email",
            "Enter the email address that should receive your verification link.",
            initialValue: currentEmail,
            keyboard: Keyboard.Email);
        if (string.IsNullOrWhiteSpace(editedEmail) ||
            string.Equals(editedEmail.Trim(), currentEmail, StringComparison.OrdinalIgnoreCase))
            return;

        if (!IsValidEmail(editedEmail))
        {
            ShowStatus("Please enter a valid email address.");
            return;
        }

        SetBusy(true, "Updating your email and sending a new verification link...");
        try
        {
            await _authService.UpdateCurrentEmailAsync(editedEmail);
            EmailLabel.Text = _authService.CurrentEmail ?? editedEmail.Trim();
            ShowStatus("Email updated. The new verification email was sent.", isError: false);
            StartResendCooldown();
        }
        catch (Exception ex)
        {
            LogTechnicalFailure("Email update failed", ex);
            ShowStatus(
                string.IsNullOrWhiteSpace(ex.Message)
                    ? "We couldn't update that email. Please try again."
                    : ex.Message);
        }
        finally
        {
            SetBusy(false);
        }
    }

    private void StartResendCooldown()
    {
        _resendSecondsRemaining = 30;
        UpdateResendText();
        _ = RunResendCooldownAsync();
    }

    private async Task RunResendCooldownAsync()
    {
        while (_resendSecondsRemaining > 0)
        {
            await Task.Delay(1000);
            _resendSecondsRemaining--;
            MainThread.BeginInvokeOnMainThread(UpdateResendText);
        }
    }

    private void UpdateResendText()
    {
        ResendButton.Text = _resendSecondsRemaining > 0
            ? $"Resend available in {_resendSecondsRemaining} seconds"
            : "Resend Email";
        ResendButton.IsEnabled = !_busy && _resendSecondsRemaining == 0;
    }

    private void SetBusy(bool busy, string? status = null)
    {
        _busy = busy;
        LoadingIndicator.IsVisible = busy;
        LoadingIndicator.IsRunning = busy;
        CheckButton.IsEnabled = !busy;
        ResendButton.IsEnabled = !busy && _resendSecondsRemaining == 0;
        if (status != null)
            ShowStatus(status, isError: false);
    }

    private void ShowStatus(string message, bool isError = true)
    {
        StatusLabel.Text = message;
        StatusLabel.TextColor = isError ? Color.FromArgb("#B42318") : Color.FromArgb("#1A4D3A");
        StatusLabel.IsVisible = true;
    }

    private static bool IsValidEmail(string email)
    {
        try
        {
            var normalized = email.Trim();
            return new System.Net.Mail.MailAddress(normalized).Address.Equals(
                normalized,
                StringComparison.OrdinalIgnoreCase);
        }
        catch (FormatException)
        {
            return false;
        }
    }

    private static void LogTechnicalFailure(string message, Exception exception) =>
        System.Diagnostics.Debug.WriteLine($"[EMAIL_VERIFICATION] {message}: {exception}");
}
