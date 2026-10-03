using System.Diagnostics;
using Android.Graphics;
using CCT_USCF.Models;
using CCT_USCF.Services;

namespace CCT_USCF.Pages;

public partial class ReportBugPage : ContentPage
{
    private readonly IFeedbackService _feedbackService;
    private readonly string _requestId = Guid.NewGuid().ToString("N");
    private byte[]? _screenshotBytes;
    private string? _screenshotContentType;
    private bool _isSubmitting;

    public ReportBugPage()
    {
        InitializeComponent();
        _feedbackService = MauiProgram.Services.GetRequiredService<IFeedbackService>();
        CategoryPicker.ItemsSource = Enum.GetValues<FeedbackCategory>()
            .Select(value => new FeedbackCategoryChoice(value))
            .ToArray();
    }

    private async void OnAddScreenshotClicked(object? sender, EventArgs e)
    {
        try
        {
            var result = await FilePicker.Default.PickAsync(new PickOptions
            {
                PickerTitle = "Choose a screenshot",
                FileTypes = FilePickerFileType.Images
            });

            if (result is null)
                return;

            await using var source = await result.OpenReadAsync();
            using var image = new MemoryStream();
            var buffer = new byte[81920];
            int read;
            while ((read = await source.ReadAsync(buffer)) > 0)
            {
                if (image.Length + read > FeedbackService.MaximumScreenshotBytes)
                {
                    ShowStatus("The screenshot must be 2 MB or smaller.");
                    return;
                }

                await image.WriteAsync(buffer.AsMemory(0, read));
            }

            var bytes = image.ToArray();
            if (!TryGetImageContentType(bytes, out var contentType) ||
                !TryCreatePreview(bytes, out var previewBytes))
            {
                ShowStatus("Choose a valid, readable PNG, JPEG, or WEBP image.");
                return;
            }

            _screenshotBytes = bytes;
            _screenshotContentType = contentType;
            ScreenshotPreview.Source = ImageSource.FromStream(() => new MemoryStream(previewBytes));
            ScreenshotPreview.IsVisible = true;
            RemoveScreenshotButton.IsVisible = true;
            ScreenshotButton.Text = "Replace Screenshot";
            StatusLabel.IsVisible = false;
        }
        catch (Exception ex)
        {
            Debug.WriteLine($"[FEEDBACK] Screenshot selection failed: {ex}");
            ShowStatus("The screenshot could not be opened. Please choose another image.");
        }
    }

    private void OnRemoveScreenshotClicked(object? sender, EventArgs e)
    {
        _screenshotBytes = null;
        _screenshotContentType = null;
        ScreenshotPreview.Source = null;
        ScreenshotPreview.IsVisible = false;
        RemoveScreenshotButton.IsVisible = false;
        ScreenshotButton.Text = "+ Add Screenshot";
    }

    private async void OnSubmitClicked(object? sender, EventArgs e)
    {
        if (_isSubmitting)
            return;

        if (string.IsNullOrWhiteSpace(TitleEntry.Text))
        {
            ShowStatus("Please add a short title.");
            return;
        }

        if (string.IsNullOrWhiteSpace(DescriptionEditor.Text))
        {
            ShowStatus("Please describe the problem.");
            return;
        }

        if (CategoryPicker.SelectedItem is not FeedbackCategoryChoice category)
        {
            ShowStatus("Please choose where the problem happened.");
            return;
        }

        if (string.IsNullOrWhiteSpace(ExpectedEditor.Text))
        {
            ShowStatus("Please describe what you expected to happen.");
            return;
        }

        if (string.IsNullOrWhiteSpace(ActualEditor.Text))
        {
            ShowStatus("Please describe what actually happened.");
            return;
        }

        SetSubmitting(true);
        StatusLabel.IsVisible = false;

        try
        {
            var receipt = await _feedbackService.CreateBugReportAsync(new BugFeedbackRequest
            {
                RequestId = _requestId,
                Category = category.Value,
                Title = TitleEntry.Text.Trim(),
                Description = DescriptionEditor.Text.Trim(),
                ExpectedResult = ExpectedEditor.Text.Trim(),
                ActualResult = ActualEditor.Text.Trim(),
                ScreenshotBytes = _screenshotBytes,
                ScreenshotContentType = _screenshotContentType
            });

            await ShowSuccessAsync(receipt);
        }
        catch (FeedbackSubmissionException ex)
        {
            ShowStatus(ex.Message);
        }
        catch (Exception ex)
        {
            Debug.WriteLine($"[FEEDBACK] Bug report submission failed: {ex}");
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
        SubmitButton.Text = submitting ? "Submitting..." : "Submit Bug";
        ScreenshotButton.IsEnabled = !submitting;
        RemoveScreenshotButton.IsEnabled = !submitting;
        SubmitActivity.IsVisible = submitting;
        SubmitActivity.IsRunning = submitting;
    }

    private void ShowStatus(string message)
    {
        StatusLabel.Text = message;
        StatusLabel.IsVisible = true;
    }

    private static bool TryGetImageContentType(byte[] bytes, out string contentType)
    {
        contentType = string.Empty;

        if (bytes.Length >= 8 &&
            bytes.AsSpan(0, 8).SequenceEqual(new byte[] { 137, 80, 78, 71, 13, 10, 26, 10 }))
        {
            contentType = "image/png";
            return true;
        }

        if (bytes.Length >= 3 &&
            bytes[0] == 0xFF &&
            bytes[1] == 0xD8 &&
            bytes[2] == 0xFF)
        {
            contentType = "image/jpeg";
            return true;
        }

        if (bytes.Length >= 12 &&
            bytes.AsSpan(0, 4).SequenceEqual("RIFF"u8) &&
            bytes.AsSpan(8, 4).SequenceEqual("WEBP"u8))
        {
            contentType = "image/webp";
            return true;
        }

        return false;
    }

    private static bool TryCreatePreview(byte[] bytes, out byte[] previewBytes)
    {
        previewBytes = Array.Empty<byte>();
        using var bounds = new BitmapFactory.Options { InJustDecodeBounds = true };
        BitmapFactory.DecodeByteArray(bytes, 0, bytes.Length, bounds);

        if (bounds.OutWidth <= 0 ||
            bounds.OutHeight <= 0 ||
            bounds.OutWidth > 20_000 ||
            bounds.OutHeight > 20_000 ||
            (long)bounds.OutWidth * bounds.OutHeight > 50_000_000)
        {
            return false;
        }

        var sampleSize = 1;
        while (bounds.OutWidth / sampleSize > 1280 ||
               bounds.OutHeight / sampleSize > 1280)
        {
            sampleSize *= 2;
        }

        using var options = new BitmapFactory.Options { InSampleSize = sampleSize };
        using var bitmap = BitmapFactory.DecodeByteArray(bytes, 0, bytes.Length, options);
        if (bitmap is null)
            return false;

        using var preview = new MemoryStream();
        if (!bitmap.Compress(Bitmap.CompressFormat.Jpeg, 85, preview))
            return false;

        previewBytes = preview.ToArray();
        return previewBytes.Length > 0;
    }

    private async Task ShowSuccessAsync(FeedbackReceipt receipt)
    {
        await DisplayAlertAsync(
            "Feedback submitted successfully",
            $"Thank you for helping us improve CCT-USCF.\n\nReference:\n{receipt.Reference}",
            "Done");
        await Shell.Current.GoToAsync("..");
    }
}
