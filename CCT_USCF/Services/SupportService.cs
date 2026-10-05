namespace CCT_USCF.Services;

public static class SupportConfig
{
    public static string SupportEmail =>
        Environment.GetEnvironmentVariable("CCT_USCF_SUPPORT_EMAIL") ?? string.Empty;

    public static string SupportUrl =>
        Environment.GetEnvironmentVariable("CCT_USCF_SUPPORT_URL") ?? string.Empty;
}

public sealed class SupportService
{
    private readonly IFeedbackService _feedbackService;

    public SupportService(IFeedbackService feedbackService)
    {
        _feedbackService = feedbackService ?? throw new ArgumentNullException(nameof(feedbackService));
    }

    public async Task SubmitFeedbackAsync(
        string category,
        string subject,
        string message)
    {
        await _feedbackService.CreateSupportFeedbackAsync(category, subject, message);
    }
}
