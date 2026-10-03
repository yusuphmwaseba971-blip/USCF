using System.Diagnostics;
using CCT_USCF.Models;
using CCT_USCF.Services;

namespace CCT_USCF.Pages;

public partial class SuggestionPage : ContentPage
{
    private readonly IFeedbackService _feedbackService;
    private readonly string _requestId = Guid.NewGuid().ToString("N");
    private bool _isSubmitting;

    public SuggestionPage()
    {
        InitializeComponent();
        _feedbackService = MauiProgram.Services.GetRequiredService<IFeedbackService>();
        CategoryPicker.ItemsSource = Enum.GetValues<FeedbackCategory>()
            .Select(value => new FeedbackCategoryChoice(value))
            .ToArray();
        CategoryPicker.SelectedItem = CategoryPicker.ItemsSource
            .Cast<FeedbackCategoryChoice>()
            .First(choice => choice.Value == FeedbackCategory.Other);
    }

    private async void OnSubmitClicked(object? sender, EventArgs e)
    {
        if (_isSubmitting)
            return;

        if (string.IsNullOrWhiteSpace(TitleEntry.Text))
        {
            ShowStatus("Please add a title.");
            return;
        }

        if (string.IsNullOrWhiteSpace(DescriptionEditor.Text))
        {
            ShowStatus("Please describe your suggestion.");
            return;
        }

        if (CategoryPicker.SelectedItem is not FeedbackCategoryChoice category)
        {
            ShowStatus("Please choose where the suggestion applies.");
            return;
        }

        SetSubmitting(true);
        StatusLabel.IsVisible = false;

        try
        {
            var receipt = await _feedbackService.CreateSuggestionAsync(new SuggestionFeedbackRequest
            {
                RequestId = _requestId,
                Category = category.Value,
                Title = TitleEntry.Text.Trim(),
                Description = DescriptionEditor.Text.Trim()
            });

            await DisplayAlertAsync(
                "Feedback submitted successfully",
                $"Thank you for helping us improve CCT-USCF.\n\nReference:\n{receipt.Reference}",
                "Done");
            await Shell.Current.GoToAsync("..");
        }
        catch (FeedbackSubmissionException ex)
        {
            ShowStatus(ex.Message);
        }
        catch (Exception ex)
        {
            Debug.WriteLine($"[FEEDBACK] Suggestion submission failed: {ex}");
            ShowStatus("Unable to submit feedback right now. Please try again.");
        }
        finally
        {
            SetSubmitting(false);
        }
    }

    private void SetSubmitting(bool submitting)
    {
        _isSubmitting = submitting;
        SubmitButton.IsEnabled = !submitting;
        SubmitButton.Text = submitting ? "Submitting..." : "Submit Suggestion";
        SubmitActivity.IsVisible = submitting;
        SubmitActivity.IsRunning = submitting;
    }

    private void ShowStatus(string message)
    {
        StatusLabel.Text = message;
        StatusLabel.IsVisible = true;
    }
}
