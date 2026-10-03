using System.Diagnostics;
using CCT_USCF.Models;
using CCT_USCF.Services;

namespace CCT_USCF.Pages;

public partial class GeneralFeedbackPage : ContentPage
{
    private readonly IFeedbackService _feedbackService;
    private readonly string _requestId = Guid.NewGuid().ToString("N");
    private int? _rating;
    private bool _isSubmitting;

    public GeneralFeedbackPage()
    {
        InitializeComponent();
        _feedbackService = MauiProgram.Services.GetRequiredService<IFeedbackService>();
    }

    private void OnRatingClicked(object? sender, EventArgs e)
    {
        if (sender is not Button button ||
            !int.TryParse(button.CommandParameter?.ToString(), out var rating) ||
            rating is < 1 or > 5)
        {
            return;
        }

        _rating = rating;
        for (var index = 0; index < RatingButtons.Children.Count; index++)
        {
            if (RatingButtons.Children[index] is not Button ratingButton)
                continue;

            var value = index + 1;
            ratingButton.Text = value <= rating ? "★" : "☆";
            SemanticProperties.SetDescription(
                ratingButton,
                $"{value} star{(value == 1 ? string.Empty : "s")}{(value == rating ? ", selected" : string.Empty)}");
        }
    }

    private async void OnSubmitClicked(object? sender, EventArgs e)
    {
        if (_isSubmitting)
            return;

        if (_rating is not (>= 1 and <= 5))
        {
            ShowStatus("Please choose a rating from 1 to 5 stars.");
            return;
        }

        SetSubmitting(true);
        StatusLabel.IsVisible = false;

        try
        {
            var receipt = await _feedbackService.CreateGeneralFeedbackAsync(new GeneralFeedbackRequest
            {
                RequestId = _requestId,
                Rating = _rating.Value,
                Liked = LikedEditor.Text,
                Improvement = ImprovementEditor.Text
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
            Debug.WriteLine($"[FEEDBACK] General feedback submission failed: {ex}");
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
        SubmitButton.Text = submitting ? "Submitting..." : "Submit Feedback";
        SubmitActivity.IsVisible = submitting;
        SubmitActivity.IsRunning = submitting;
    }

    private void ShowStatus(string message)
    {
        StatusLabel.Text = message;
        StatusLabel.IsVisible = true;
    }
}
