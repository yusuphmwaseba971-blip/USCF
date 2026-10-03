using System.Diagnostics;
using CCT_USCF.Services;

namespace CCT_USCF.Pages;

public partial class HelpFeedbackPage : ContentPage
{
    private readonly IFeedbackService _feedbackService;

    public HelpFeedbackPage()
    {
        InitializeComponent();
        _feedbackService = MauiProgram.Services.GetRequiredService<IFeedbackService>();
    }

    protected override async void OnAppearing()
    {
        base.OnAppearing();
        AdminFeedbackCard.IsVisible = false;
        AdminAccessStatusLabel.IsVisible = false;

        try
        {
            AdminFeedbackCard.IsVisible = await _feedbackService.IsFeedbackAdminAsync();
        }
        catch (Exception ex)
        {
            Debug.WriteLine($"[FEEDBACK] Admin access check failed: {ex}");
            AdminAccessStatusLabel.Text = "Admin access could not be checked. Please try again later.";
            AdminAccessStatusLabel.IsVisible = true;
        }
    }

    private async void OnReportBugClicked(object? sender, EventArgs e) =>
        await Shell.Current.GoToAsync(nameof(ReportBugPage));

    private async void OnSuggestionClicked(object? sender, EventArgs e) =>
        await Shell.Current.GoToAsync(nameof(SuggestionPage));

    private async void OnGeneralFeedbackClicked(object? sender, EventArgs e) =>
        await Shell.Current.GoToAsync(nameof(GeneralFeedbackPage));

    private async void OnMyReportsClicked(object? sender, EventArgs e) =>
        await Shell.Current.GoToAsync(nameof(MyFeedbackReportsPage));

    private async void OnAdminFeedbackClicked(object? sender, EventArgs e) =>
        await Shell.Current.GoToAsync(nameof(AdminFeedbackPage));

    private async void OnContactSupportClicked(object? sender, EventArgs e) =>
        await Shell.Current.GoToAsync(nameof(HelpSupportPage));
}
