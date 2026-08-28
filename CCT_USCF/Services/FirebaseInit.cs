using System.Threading.Tasks;

namespace CCT_USCF.Services
{
    /// <summary>
    /// Simple Firebase initialization signal.
    /// Pages and services can await FirebaseInit.Initialized to ensure
    /// CrossFirebase.Initialize has completed on Android before issuing
    /// Auth/Firestore calls.
    /// </summary>
    public static class FirebaseInit
    {
        private static readonly TaskCompletionSource<bool> _tcs =
            new(TaskCreationOptions.RunContinuationsAsynchronously);

        public static Task Initialized => _tcs.Task;

        public static void SignalInitialized()
        {
            _tcs.TrySetResult(true);
        }
    }
}
