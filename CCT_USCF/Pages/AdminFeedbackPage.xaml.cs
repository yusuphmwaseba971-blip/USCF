using CCT_USCF.Models;
using CCT_USCF.Services;

namespace CCT_USCF.Pages;

public partial class AdminFeedbackPage : ContentPage
{
    private const int PageSize = 25;
    private static readonly string[] Statuses =
        ["All", "New", "Reviewing", "Fixing", "Fixed", "Closed"];
    private static readonly string[] Types =
        ["All", "Bug", "Suggestion", "General"];
    private static readonly string[] Categories =
        ["All", "Home", "Bible", "Prayer", "Community", "Groups", "Profile", "Account/Login", "Other"];

    private readonly IFeedbackService _feedbackService;
    private CancellationTokenSource? _searchCancellation;
    private FeedbackAdminSummary? _summary;
    private int _offset;
    private int _total;
    private bool _authorized;
    private bool _loading;
    private bool _checkingAccess;

    public AdminFeedbackPage()
    {
        InitializeComponent();
        _feedbackService = MauiProgram.Services.GetRequiredService<IFeedbackService>();
        StatusFilter.ItemsSource = Statuses;
        TypeFilter.ItemsSource = Types;
        CategoryFilter.ItemsSource = Categories;
        StatusFilter.SelectedIndex = 0;
        TypeFilter.SelectedIndex = 0;
        CategoryFilter.SelectedIndex = 0;
    }

    protected override async void OnAppearing()
    {
        base.OnAppearing();
        if (_checkingAccess)
            return;

        _checkingAccess = true;
        try
        {
            if (!await _feedbackService.IsFeedbackAdminAsync())
            {
                _authorized = false;
                ReportsCollection.ItemsSource = null;
                TotalCountLabel.Text = "—";
                await DisplayAlertAsync("Access denied", "You are not authorized to manage feedback.", "OK");
                await Shell.Current.GoToAsync("..");
                return;
            }

            _authorized = true;
            await RefreshAsync();
        }
        catch (FeedbackSubmissionException ex)
        {
            ShowMessage(ex.Message);
        }
        finally
        {
            _checkingAccess = false;
        }
    }

    private async Task RefreshAsync()
    {
        if (_loading)
            return;
        _loading = true;
        SetLoading(true);
        MessageLabel.IsVisible = false;
        try
        {
            var summaryTask = _feedbackService.GetAdminSummaryAsync();
            var reportsTask = _feedbackService.GetAdminReportsAsync(
                SelectedValue(StatusFilter),
                SelectedValue(TypeFilter),
                SelectedValue(CategoryFilter),
                SearchInput.Text?.Trim() ?? string.Empty,
                _offset,
                PageSize);
            await Task.WhenAll(summaryTask, reportsTask);

            _summary = await summaryTask;
            var page = await reportsTask;
            _total = page.Total;
            ReportsCollection.ItemsSource = page.Reports;
            UpdateSummary(_summary);

            var totalPages = page.Total == 0 ? 0 : (int)Math.Ceiling(page.Total / (double)PageSize);
            var currentPage = page.Total == 0 ? 0 : page.Offset / PageSize + 1;
            PageLabel.Text = $"Page {currentPage} of {totalPages}";
            PreviousButton.IsEnabled = page.Offset > 0;
            NextButton.IsEnabled = page.Offset + page.Limit < page.Total;
            NoReportsLabel.Text = _summary.Total == 0
                ? "No feedback reports yet."
                : "No reports match the selected filters.";
            NoReportsLabel.IsVisible = page.Reports.Count == 0;
        }
        catch (FeedbackSubmissionException ex)
        {
            ShowMessage(ex.Message);
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine($"[FEEDBACK ADMIN] Loading reports failed: {ex}");
            ShowMessage("Feedback reports could not be loaded. Please try again.");
        }
        finally
        {
            SetLoading(false);
            _loading = false;
        }
    }

    private void UpdateSummary(FeedbackAdminSummary summary)
    {
        TotalCountLabel.Text = summary.Total.ToString();
        NewCountLabel.Text = Count(summary.Statuses, "New");
        ReviewingCountLabel.Text = Count(summary.Statuses, "Reviewing");
        FixingCountLabel.Text = Count(summary.Statuses, "Fixing");
        FixedCountLabel.Text = Count(summary.Statuses, "Fixed");
        ClosedCountLabel.Text = Count(summary.Statuses, "Closed");
        BugCountLabel.Text = Count(summary.Types, "Bug");
        SuggestionCountLabel.Text = Count(summary.Types, "Suggestion");
        GeneralCountLabel.Text = Count(summary.Types, "General");
    }

    private async void OnReportSelected(object? sender, SelectionChangedEventArgs e)
    {
        if (e.CurrentSelection.FirstOrDefault() is not FeedbackModel report)
            return;

        ReportsCollection.SelectedItem = null;
        await Shell.Current.GoToAsync(
            nameof(AdminFeedbackDetailsPage),
            new Dictionary<string, object> { ["feedback"] = report });
    }

    private async void OnFilterChanged(object? sender, EventArgs e)
    {
        if (!_authorized || _loading)
            return;
        _offset = 0;
        await RefreshAsync();
    }

    private async void OnSearchButtonPressed(object? sender, EventArgs e)
    {
        if (!_authorized || _loading)
            return;
        _searchCancellation?.Cancel();
        _offset = 0;
        await RefreshAsync();
    }

    private async void OnSearchTextChanged(object? sender, TextChangedEventArgs e)
    {
        if (!_authorized)
            return;

        _searchCancellation?.Cancel();
        var cancellation = new CancellationTokenSource();
        _searchCancellation = cancellation;
        try
        {
            await Task.Delay(350, cancellation.Token);
            if (!_loading)
            {
                _offset = 0;
                await RefreshAsync();
            }
        }
        catch (OperationCanceledException)
        {
        }
    }

    private async void OnPreviousClicked(object? sender, EventArgs e)
    {
        if (!_authorized || _loading || _offset == 0)
            return;
        _offset = Math.Max(0, _offset - PageSize);
        await RefreshAsync();
    }

    private async void OnNextClicked(object? sender, EventArgs e)
    {
        if (!_authorized || _loading || _offset + PageSize >= _total)
            return;
        _offset += PageSize;
        await RefreshAsync();
    }

    private void SetLoading(bool loading)
    {
        LoadingIndicator.IsRunning = loading;
        LoadingIndicator.IsVisible = loading;
        ReportsCollection.IsEnabled = !loading;
    }

    private void ShowMessage(string message)
    {
        MessageLabel.Text = message;
        MessageLabel.IsVisible = true;
    }

    private static string SelectedValue(Picker picker) =>
        picker.SelectedItem as string ?? "All";

    private static string Count(Dictionary<string, int> counts, string key) =>
        counts.TryGetValue(key, out var value) ? value.ToString() : "0";
}
