using Microsoft.Maui.Storage;
using System;
using System.Threading.Tasks;

namespace CCT_USCF.Services
{
    public static class TokenStorage
    {
        private const string TokenKey = "uscf_token";

        public static async Task SaveTokenAsync(string token)
        {
            try
            {
                await SecureStorage.Default.SetAsync(TokenKey, token);
                // verify write
                var read = await SecureStorage.Default.GetAsync(TokenKey);
                if (string.IsNullOrEmpty(read)) throw new Exception("Secure storage write verification failed.");
            }
            catch (Exception ex)
            {
                // rethrow a clearer exception for callers
                throw new Exception("Failed to store authentication token on this device.", ex);
            }
        }

        public static async Task<string?> GetTokenAsync()
        {
            try
            {
                return await SecureStorage.Default.GetAsync(TokenKey);
            }
            catch (Exception)
            {
                // Propagate as device storage failure
                throw new Exception("Unable to access secure storage on this device.");
            }
        }

        public static async Task<bool> HasTokenAsync()
        {
            var t = await GetTokenAsync();
            return !string.IsNullOrEmpty(t);
        }

        public static Task RemoveTokenAsync()
        {
            try
            {
                SecureStorage.Default.Remove(TokenKey);
                return Task.CompletedTask;
            }
            catch (Exception)
            {
                // ignore removal errors, but don't crash
                return Task.CompletedTask;
            }
        }
    }
}
