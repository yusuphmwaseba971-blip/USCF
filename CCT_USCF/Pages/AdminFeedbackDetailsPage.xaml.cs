using CCT_USCF.Models;
using CCT_USCF.Services;

namespace CCT_USCF.Pages;

public partial class AdminFeedbackDetailsPage : ContentPage, IQueryAttributable
{
    private static readonly string[] Statuses = ["New", "Reviewing", "Fixing", "Fixed", "Closed"];
    private readonly IFeedbackService _feedbackService;
    private FeedbackModel? _report;
    private string? _feedbackId;
    private bool _authorized;
    private bool _isAdminView = true;
    private bool _checkingAccess;

    public AdminFeedbackDetailsPage()
    {
        InitializeComponent();
        _feedbackService = MauiProgram.Services.GetRequiredService<IFeedbackService>();
        StatusPicker.ItemsSource = Statuses;
    }

    public void ApplyQueryAttributes(IDictionary<string, object> query)
    {
        if (query.TryGetValue("feedback", out var feedback) && feedback is FeedbackModel report)
        {
            _isAdminView = true;
            _report = report;
            ShowReport(report);
        }

        if (query.TryGetValue("feedbackId", out var feedbackId))
        {
            _feedbackId = feedbackId?.ToString();
            _isAdminView = query.TryGetValue("isAdminView", out var adminView) &&
                adminView is bool isAdminView && isAdminView;
        }
    }

    protected override async void OnAppearing()
    {
        base.OnAppearing();
        if (_checkingAccess)
            return;

        _checkingAccess = true;
        try
        {
            if (!_isAdminView)
            {
                WorkflowStatusLayout.IsVisible = false;
                if (string.IsNullOrWhiteSpace(_feedbackId))
                    throw new FeedbackSubmissionException("The feedback report could not be found.");

                _report = await _feedbackService.GetMyReportAsync(_feedbackId);
                ShowReport(_report);
                return;
            }

            if (!await _feedbackService.IsFeedbackAdminAsync())
            {
                _authorized = false;
                _report = null;
                DetailsLayout.Children.Clear();
                await DisplayAlertAsync("Access denied", "You are not authorized to manage feedback.", "OK");
                await Shell.Current.GoToAsync("..");
                return;
            }
            _authorized = true;
        }
        catch (FeedbackSubmissionException ex)
        {
            await DisplayAlertAsync("Feedback unavailable", ex.Message, "OK");
            await Shell.Current.GoToAsync("..");
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine($"[FEEDBACK ADMIN] Access check failed: {ex}");
            await DisplayAlertAsync(
                "Feedback unavailable",
                _isAdminView
                    ? "The admin panel could not be opened."
                    : "The feedback report could not be opened.",
                "OK");
            await Shell.Current.GoToAsync("..");
        }
        finally
        {
            _checkingAccess = false;
        }
    }

    private async void OnSaveStatusClicked(object? sender, EventArgs e)
    {
        if (!_authorized || _report is null || StatusPicker.SelectedItem is not string status)
            return;

        SaveStatusButton.IsEnabled = false;
        StatusMessageLabel.IsVisible = false;
        try
        {
            _report = await _feedbackService.UpdateFeedbackStatusAsync(_report.Id, status);
            ShowReport(_report);
            StatusMessageLabel.Text = "Status updated successfully.";
            StatusMessageLabel.TextColor = Colors.DarkGreen;
            StatusMessageLabel.IsVisible = true;
        }
        catch (FeedbackSubmissionException ex)
        {
            ShowStatusError(ex.Message);
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine($"[FEEDBACK ADMIN] Status update failed: {ex}");
            ShowStatusError("The feedback status could not be updated. Please try again.");
        }
        finally
        {
            SaveStatusButton.IsEnabled = true;
        }
    }

    private async void OnViewScreenshotClicked(object? sender, EventArgs e)
    {
        if (_report is null || string.IsNullOrWhiteSpace(_report.ScreenshotId) ||
            (_isAdminView && !_authorized))
            return;

        ViewScreenshotButton.IsEnabled = false;
        ScreenshotActivity.IsVisible = true;
        ScreenshotActivity.IsRunning = true;
        try
        {
            var image = _isAdminView
                ? await _feedbackService.GetAdminScreenshotAsync(_report.Id)
                : await _feedbackService.GetScreenshotAsync(_report.Id);
            ScreenshotImage.Source = ImageSource.FromStream(() => new MemoryStream(image));
            ScreenshotImage.IsVisible = true;
        }
        catch (FeedbackSubmissionException ex)
        {
            await DisplayAlertAsync("Screenshot unavailable", ex.Message, "OK");
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine($"[FEEDBACK ADMIN] Screenshot load failed: {ex}");
            await DisplayAlertAsync("Screenshot unavailable", "The screenshot could not be loaded.", "OK");
        }
        finally
        {
            ScreenshotActivity.IsRunning = false;
            ScreenshotActivity.IsVisible = false;
            ViewScreenshotButton.IsEnabled = true;
        }
    }

    private void ShowReport(FeedbackModel report)
    {
        ReferenceLabel.Text = string.IsNullOrWhiteSpace(report.Reference)
            ? "Feedback report"
            : report.Reference;
        DetailsLayout.Children.Clear();

        AddDetail("Type", report.Type);
        AddDetail("Category", report.Category);
        AddDetail("Title", report.Title);
        AddDetail("Status", report.Status);
        AddDetail("Created", FormatDate(report.CreatedAt));
        AddDetail("Updated", FormatDate(report.UpdatedAt));
        AddDetail("User", report.UserEmail);
        AddDetail("User ID", report.UserId);
        AddDetail("Description", report.Description);
        AddDetail("Expected Result", report.ExpectedResult);
        AddDetail("Actual Result", report.ActualResult);
        AddDetail("Suggestion / Improvement", report.Improvement);
        AddDetail("Rating", report.Rating?.ToString());
        AddDetail("What the user liked", report.Liked);
        AddDetail("App Version", report.AppVersion);
        AddDetail("Device Model", report.DeviceModel);
        AddDetail("Android Version", report.AndroidVersion);

        var statusIndex = Array.IndexOf(Statuses, report.Status);
        StatusPicker.SelectedIndex = statusIndex >= 0 ? statusIndex : 0;
        WorkflowStatusLayout.IsVisible = _isAdminView;
        var hasScreenshot = !string.IsNullOrWhiteSpace(report.ScreenshotId);
        ViewScreenshotButton.IsVisible = hasScreenshot;
        NoScreenshotLabel.IsVisible = !hasScreenshot;
        ScreenshotImage.Source = null;
        ScreenshotImage.IsVisible = false;
    }

    private void AddDetail(string label, string? value)
    {
        if (string.IsNullOrWhiteSpace(value))
            return;

        DetailsLayout.Children.Add(new VerticalStackLayout
        {
            Spacing = 2,
            Children =
            {
                new Label
                {
                    Text = label,
                    FontSize = 12,
                    FontAttributes = FontAttributes.Bold,
                    TextColor = (Color)Application.Current!.Resources["TextSecondary"]
                },
                new Label
                {
                    Text = value,
                    FontSize = 15,
                    TextColor = (Color)Application.Current!.Resources["TextPrimary"],
                    LineBreakMode = LineBreakMode.WordWrap
                }
            }
        });
    }

    private void ShowStatusError(string message)
    {
        StatusMessageLabel.Text = message;
        StatusMessageLabel.TextColor = Colors.Red;
        StatusMessageLabel.IsVisible = true;
    }

    private static string? FormatDate(DateTimeOffset? value) =>
        value?.ToLocalTime().ToString("dd MMM yyyy, HH:mm");
}
