using Microsoft.Maui.Storage;
using System;
using System.Threading.Tasks;

namespace CCT_USCF.Services
{
    public static class TokenStorage
    {
        private const string AccessTokenKey = "uscf_token"; // primary key required by requirement
        private const string LegacyAccessTokenKey = "uscf_access_token"; // fallback to migrate old installs
        private const string RefreshTokenKey = "uscf_refresh_token";
        private const string AccessTokenExpiresAtKey = "uscf_access_token_expires_at";

        public static async Task SaveTokenAsync(string token)
        {
            await SaveSessionAsync(token, await GetRefreshTokenAsync(), GetAccessTokenExpirationFromPreferences());
        }

        public static async Task SaveSessionAsync(string accessToken, string? refreshToken, DateTime? expiresAtUtc)
        {
            try
            {
                if (string.IsNullOrWhiteSpace(accessToken))
                    throw new ArgumentException("Access token cannot be empty.", nameof(accessToken));

                await SecureStorage.Default.SetAsync(AccessTokenKey, accessToken);

                if (!string.IsNullOrWhiteSpace(refreshToken))
                    await SecureStorage.Default.SetAsync(RefreshTokenKey, refreshToken);
                else
                    SecureStorage.Default.Remove(RefreshTokenKey);

                if (expiresAtUtc.HasValue)
                    Preferences.Default.Set(AccessTokenExpiresAtKey, expiresAtUtc.Value.ToString("O"));
                else
                    Preferences.Default.Remove(AccessTokenExpiresAtKey);

                var read = await SecureStorage.Default.GetAsync(AccessTokenKey);
                if (string.IsNullOrEmpty(read)) throw new Exception("Secure storage write verification failed.");
            }
            catch (Exception ex)
            {
                throw new Exception("Failed to store authentication token on this device.", ex);
            }
        }

        public static async Task<string?> GetTokenAsync()
        {
            try
            {
                        // Try primary key first
                        var token = await SecureStorage.Default.GetAsync(AccessTokenKey);
                        if (!string.IsNullOrEmpty(token)) return token;

                        // Fallback: try legacy key and migrate if found
                        var legacy = await SecureStorage.Default.GetAsync(LegacyAccessTokenKey);
                        if (!string.IsNullOrEmpty(legacy))
                        {
                            // migrate to new key
                            await SecureStorage.Default.SetAsync(AccessTokenKey, legacy);
                            SecureStorage.Default.Remove(LegacyAccessTokenKey);
                            return legacy;
                        }

                        return null;
                    }
                    catch (Exception)
                    {
                        throw new Exception("Unable to access secure storage on this device.");
                    }
                }

        public static async Task<string?> GetRefreshTokenAsync()
        {
            try
            {
                return await SecureStorage.Default.GetAsync(RefreshTokenKey);
            }
            catch (Exception)
            {
                throw new Exception("Unable to access secure storage on this device.");
            }
        }

        public static DateTime? GetAccessTokenExpirationUtc()
        {
            var value = Preferences.Default.Get(AccessTokenExpiresAtKey, string.Empty);
            if (string.IsNullOrWhiteSpace(value)) return null;

            return DateTime.TryParse(value, out var dt) ? dt : null;
        }

        public static bool IsAccessTokenExpired()
        {
            var expiresAt = GetAccessTokenExpirationUtc();
            return expiresAt.HasValue && DateTime.UtcNow >= expiresAt.Value;
        }

        public static async Task<bool> HasTokenAsync()
        {
            var t = await GetTokenAsync();
            return !string.IsNullOrEmpty(t);
        }

                private const string CachedUserKey = "uscf_user";

                public static async Task SaveCachedUserAsync(CCT_USCF.Models.CurrentUser user)
                {
                    try
                    {
                        if (user == null) return;
                        var json = System.Text.Json.JsonSerializer.Serialize(user);
                        Preferences.Default.Set(CachedUserKey, json);
                        await Task.CompletedTask;
                    }
                    catch
                    {
                        // swallow caching errors — caching is optional
                    }
                }

                public static CCT_USCF.Models.CurrentUser? GetCachedUser()
                {
                    try
                    {
                        var json = Preferences.Default.Get(CachedUserKey, string.Empty);
                        if (string.IsNullOrWhiteSpace(json)) return null;
                        return System.Text.Json.JsonSerializer.Deserialize<CCT_USCF.Models.CurrentUser>(json);
                    }
                    catch
                    {
                        return null;
                    }
                }

                public static void RemoveCachedUser()
                {
                    try
                    {
                        Preferences.Default.Remove(CachedUserKey);
                    }
                    catch
                    {
                    }
                }

        public static async Task ClearSessionAsync()
        {
            try
            {
                SecureStorage.Default.Remove(AccessTokenKey);
                        SecureStorage.Default.Remove(LegacyAccessTokenKey);
                        SecureStorage.Default.Remove(RefreshTokenKey);
                    }
                    catch
                    {
                    }

                    Preferences.Default.Remove(AccessTokenExpiresAtKey);
                    RemoveCachedUser();
                    await Task.CompletedTask;
                }

        public static Task RemoveTokenAsync()
        {
            return ClearSessionAsync();
        }

        private static DateTime? GetAccessTokenExpirationFromPreferences()
        {
            return GetAccessTokenExpirationUtc();
        }
    }
}
