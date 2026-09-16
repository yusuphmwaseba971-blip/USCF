using System.Globalization;
using Android.App;
using Android.Gms.Tasks;
using Java.Lang;

namespace CCT_USCF.Services;

public static class StoreReviewConfig
{
    public const string GooglePlayPackageId = "com.uscf.cct";

    public static string StoreUrlOverride =>
        Environment.GetEnvironmentVariable("CCT_USCF_PLAY_STORE_URL") ?? string.Empty;

    public static string StoreUrl =>
        string.IsNullOrWhiteSpace(StoreUrlOverride)
            ? $"https://play.google.com/store/apps/details?id={GooglePlayPackageId}"
            : StoreUrlOverride.Trim();
}

public sealed class StoreReviewService
{
    private const string LastPromptKey = "rate_uscf_last_prompt_utc";
    private const string PromptCountKey = "rate_uscf_prompt_count";

    public async Task<bool> RequestReviewAsync()
    {
        var now = DateTime.UtcNow;
        var promptCount = Preferences.Get(PromptCountKey, 0);
        var lastPromptUtc = Preferences.Get(LastPromptKey, string.Empty);

        if (!string.IsNullOrWhiteSpace(lastPromptUtc) &&
            DateTime.TryParse(lastPromptUtc, CultureInfo.InvariantCulture, DateTimeStyles.RoundtripKind, out var lastPrompt) &&
            (now - lastPrompt).TotalDays < 30 &&
            promptCount >= 2)
        {
            return await OpenStoreListingAsync();
        }

        Preferences.Set(LastPromptKey, now.ToString("O", CultureInfo.InvariantCulture));
        Preferences.Set(PromptCountKey, promptCount + 1);

        if (!OperatingSystem.IsAndroid())
            return await OpenStoreListingAsync();

        try
        {
            if (await TryLaunchInAppReviewFlowAsync())
                return true;
        }
        catch (System.Exception ex)
        {
            System.Diagnostics.Debug.WriteLine($"[RATE_USCF] Play review unavailable: {ex}");
        }

        return await OpenStoreListingAsync();
    }

    private static async Task<bool> TryLaunchInAppReviewFlowAsync()
    {
        var context = Android.App.Application.Context;
        if (context == null)
            return false;

        var reviewManagerFactoryType = Java.Lang.Class.ForName("com.google.android.play.core.review.ReviewManagerFactory");
        var createMethod = reviewManagerFactoryType.GetMethod(
            "create",
            new[] { Java.Lang.Class.FromType(context.GetType()) });
        var reviewManager = createMethod.Invoke(null, new[] { context });
        if (reviewManager == null)
            return false;

        var requestReviewFlowMethod = reviewManager.Class.GetMethod("requestReviewFlow");
        var reviewInfoTask = requestReviewFlowMethod.Invoke(
            reviewManager,
            Array.Empty<Java.Lang.Object>()) as Android.Gms.Tasks.Task;
        if (reviewInfoTask == null)
            return false;

        var reviewInfo = await AwaitGoogleTaskAsync(reviewInfoTask);
        if (reviewInfo == null)
            return false;

        var activity = Platform.CurrentActivity ?? throw new InvalidOperationException("No Android activity is available for the in-app review flow.");
        var reviewInfoType = Java.Lang.Class.ForName("com.google.android.play.core.review.ReviewInfo");
        var launchReviewFlowMethod = reviewManager.Class.GetMethod(
            "launchReviewFlow",
            new[] { Java.Lang.Class.FromType(typeof(Activity)), reviewInfoType });

        var launchTask = launchReviewFlowMethod.Invoke(reviewManager, new Java.Lang.Object[] { activity, reviewInfo }) as Android.Gms.Tasks.Task;
        if (launchTask == null)
            return false;

        await AwaitGoogleTaskAsync(launchTask);
        return true;
    }

    private static async Task<Java.Lang.Object?> AwaitGoogleTaskAsync(Android.Gms.Tasks.Task googleTask)
    {
        var completionSource = new TaskCompletionSource<Java.Lang.Object?>();
        googleTask.AddOnCompleteListener(new GoogleTaskCompletionListener(completionSource));
        return await completionSource.Task;
    }

    private sealed class GoogleTaskCompletionListener(TaskCompletionSource<Java.Lang.Object?> completionSource)
        : Java.Lang.Object, IOnCompleteListener
    {
        public void OnComplete(Android.Gms.Tasks.Task task)
        {
            if (task == null)
            {
                completionSource.TrySetResult(null);
                return;
            }

            if (task.IsSuccessful)
            {
                completionSource.TrySetResult(task.Result as Java.Lang.Object);
                return;
            }

            completionSource.TrySetException(
                task.Exception != null
                    ? new InvalidOperationException(task.Exception.Message ?? "Google Play task failed.")
                    : new InvalidOperationException("Google Play task failed."));
        }
    }

    private static async Task<bool> OpenStoreListingAsync()
    {
        try
        {
            var fallbackUrl = StoreReviewConfig.StoreUrl;
            if (string.IsNullOrWhiteSpace(fallbackUrl))
                return false;

            await Browser.Default.OpenAsync(fallbackUrl, BrowserLaunchMode.SystemPreferred);
            return true;
        }
        catch (System.Exception ex)
        {
            System.Diagnostics.Debug.WriteLine($"[RATE_USCF] Store listing open failed: {ex}");
            return false;
        }
    }
}
