using CCT_USCF.Models;
using CCT_USCF.Services;

namespace CCT_USCF.Pages;

public partial class MyFeedbackReportsPage : ContentPage
{
    private const int PageSize = 20;
    private readonly IFeedbackService _feedbackService;
    private int _offset;
    private int _total;
    private bool _loading;

    public MyFeedbackReportsPage()
    {
        InitializeComponent();
        _feedbackService = MauiProgram.Services.GetRequiredService<IFeedbackService>();
    }

    protected override async void OnAppearing()
    {
        base.OnAppearing();
        _offset = 0;
        await RefreshAsync();
    }

    private async Task RefreshAsync()
    {
        if (_loading)
            return;

        _loading = true;
        LoadingIndicator.IsVisible = true;
        LoadingIndicator.IsRunning = true;
        ReportsCollection.IsEnabled = false;
        MessageLabel.IsVisible = false;
        EmptyLabel.IsVisible = false;
        try
        {
            var page = await _feedbackService.GetMyReportsPageAsync(_offset, PageSize);
            _total = page.Total;
            _offset = page.Offset;
            ReportsCollection.ItemsSource = page.Reports;
            var totalPages = page.Total == 0 ? 0 : (int)Math.Ceiling(page.Total / (double)PageSize);
            var currentPage = page.Total == 0 ? 0 : page.Offset / PageSize + 1;
            PageLabel.Text = $"Page {currentPage} of {totalPages}";
            PreviousButton.IsEnabled = page.Offset > 0;
            NextButton.IsEnabled = page.Offset + page.Limit < page.Total;
            EmptyLabel.IsVisible = page.Total == 0;
        }
        catch (FeedbackSubmissionException ex)
        {
            ShowError(ex.Message);
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine($"[MY FEEDBACK] Reports load failed: {ex}");
            ShowError("Your feedback reports could not be loaded. Please try again.");
        }
        finally
        {
            ReportsCollection.IsEnabled = true;
            LoadingIndicator.IsRunning = false;
            LoadingIndicator.IsVisible = false;
            _loading = false;
        }
    }

    private async void OnReportSelected(object? sender, SelectionChangedEventArgs e)
    {
        if (e.CurrentSelection.FirstOrDefault() is not FeedbackModel report)
            return;

        ReportsCollection.SelectedItem = null;
        await Shell.Current.GoToAsync(
            nameof(AdminFeedbackDetailsPage),
            new Dictionary<string, object>
            {
                ["feedbackId"] = report.Id,
                ["isAdminView"] = false
            });
    }

    private async void OnPreviousClicked(object? sender, EventArgs e)
    {
        if (_loading || _offset == 0)
            return;
        _offset = Math.Max(0, _offset - PageSize);
        await RefreshAsync();
    }

    private async void OnNextClicked(object? sender, EventArgs e)
    {
        if (_loading || _offset + PageSize >= _total)
            return;
        _offset += PageSize;
        await RefreshAsync();
    }

    private void ShowError(string message)
    {
        MessageLabel.Text = message;
        MessageLabel.IsVisible = true;
    }
}
