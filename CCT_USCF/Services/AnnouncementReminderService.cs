using CCT_USCF.Models;

namespace CCT_USCF.Services;

public static class AnnouncementReminderService
{
    public static Task ScheduleAsync(ChurchNotification announcement, DateTime when)
    {
#if ANDROID
        var context = Android.App.Application.Context;
        var alarmManager = (Android.App.AlarmManager?)context.GetSystemService(Android.Content.Context.AlarmService);
        if (alarmManager is null) throw new InvalidOperationException("Android reminder service is unavailable.");
        var intent = new Android.Content.Intent(context, typeof(Platforms.Android.AnnouncementReminderReceiver));
        intent.PutExtra("title", announcement.Title);
        intent.PutExtra("message", announcement.Preview);
        var requestCode = Math.Abs(announcement.AnnouncementId.GetHashCode());
        var pending = Android.App.PendingIntent.GetBroadcast(
            context, requestCode, intent,
            Android.App.PendingIntentFlags.UpdateCurrent | Android.App.PendingIntentFlags.Immutable);
        alarmManager.SetAndAllowWhileIdle(Android.App.AlarmType.RtcWakeup,
            new DateTimeOffset(when).ToUnixTimeMilliseconds(), pending);
#endif
        return Task.CompletedTask;
    }
}
