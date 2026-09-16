using CCT_USCF.Services;

namespace CCT_USCF.Pages;

public partial class HelpSupportPage : ContentPage
{
    private readonly SupportService _supportService;

    public HelpSupportPage()
    {
        InitializeComponent();
        _supportService = MauiProgram.Services.GetRequiredService<SupportService>();

        CategoryPicker.ItemsSource = new[]
        {
            "Bug Report",
            "Feature Request",
            "Account Help",
            "Question",
            "General Feedback"
        };

        CategoryPicker.SelectedIndex = 0;

        if (string.IsNullOrWhiteSpace(SupportConfig.SupportEmail) &&
            string.IsNullOrWhiteSpace(SupportConfig.SupportUrl))
        {
            ContactSupportButton.IsEnabled = false;
            ContactSupportButton.Text = "Contact Support (configure support email)";
        }
    }

    private async void OnSendFeedbackClicked(object sender, EventArgs e)
    {
        if (string.IsNullOrWhiteSpace(CategoryPicker.SelectedItem?.ToString()))
        {
            ShowStatus("Please choose a category.", isSuccess: false);
            return;
        }

        if (string.IsNullOrWhiteSpace(SubjectEntry.Text))
        {
            ShowStatus("Please add a short subject.", isSuccess: false);
            return;
        }

        if (string.IsNullOrWhiteSpace(MessageEditor.Text))
        {
            ShowStatus("Please add a message.", isSuccess: false);
            return;
        }

        try
        {
            SubmitButton.IsEnabled = false;
            SubmitButton.Text = "Sending...";

            await _supportService.SubmitFeedbackAsync(
                CategoryPicker.SelectedItem?.ToString() ?? "General Feedback",
                SubjectEntry.Text,
                MessageEditor.Text);

            ShowStatus("Thank you. Your message has been sent to the CCT-USCF support team.", isSuccess: true);
            SubjectEntry.Text = string.Empty;
            MessageEditor.Text = string.Empty;
            CategoryPicker.SelectedIndex = 0;
        }
        catch (Exception ex)
        {
            ShowStatus(
                ex.Message,
                isSuccess: false);
        }
        finally
        {
            SubmitButton.IsEnabled = true;
            SubmitButton.Text = "SEND FEEDBACK";
        }
    }

    private async void OnContactSupportClicked(object sender, EventArgs e)
    {
        var supportEmail = SupportConfig.SupportEmail;
        if (string.IsNullOrWhiteSpace(supportEmail))
        {
            await DisplayAlert(
                "Contact Support",
                "The official CCT-USCF support contact is not configured yet. Add the support email in the environment or app configuration to enable direct contact.",
                "OK");
            return;
        }

        var subject = Uri.EscapeDataString($"CCT-USCF Support: {SubjectEntry.Text?.Trim() ?? "General question"}");
        var mailto = $"mailto:{supportEmail}?subject={subject}";
        await Launcher.OpenAsync(mailto);
    }

    private void ShowStatus(string message, bool isSuccess)
    {
        StatusLabel.Text = message;
        StatusLabel.TextColor = isSuccess
            ? Color.FromArgb("#1A4D3A")
            : Color.FromArgb("#B42318");
        StatusLabel.IsVisible = true;
    }
}
