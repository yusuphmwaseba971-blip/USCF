using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

using Plugin.Firebase.Auth;
using Plugin.Firebase.Firestore;

namespace CCT_USCF.Services;

public class AuthService
{
    private readonly IFirebaseAuth _auth;
    private readonly IFirebaseFirestore _firestore;

    public AuthService(
        IFirebaseAuth auth,
        IFirebaseFirestore firestore)
    {
        _auth = auth;
        _firestore = firestore;
    }

    // =========================================================
    // AUTH RESULT
    // =========================================================

    public class AuthResult
    {
        public bool Success { get; set; }

        public string? Token { get; set; }

        public string? RefreshToken { get; set; }

        public DateTime? ExpiresAtUtc { get; set; }

        public string? Error { get; set; }

        public int StatusCode { get; set; }
    }

    // =========================================================
    // LOCATION MODEL
    // =========================================================

    public class LocationItem
    {
        public int Id { get; set; }

        public string Name { get; set; } = "";
    }

    // =========================================================
    // LOGIN
    // =========================================================

    public async Task<AuthResult> LoginAsync(
        string usernameOrEmail,
        string password)
    {
        try
        {
            if (string.IsNullOrWhiteSpace(usernameOrEmail))
            {
                return new AuthResult
                {
                    Success = false,
                    Error = "Email is required.",
                    StatusCode = 400
                };
            }

            if (string.IsNullOrWhiteSpace(password))
            {
                return new AuthResult
                {
                    Success = false,
                    Error = "Password is required.",
                    StatusCode = 400
                };
            }

            /*
             * Firebase Authentication currently uses EMAIL.
             *
             * Therefore the login field must contain the
             * user's Firebase email address.
             */

            var email = usernameOrEmail.Trim();

            var firebaseUser =
                await _auth.SignInWithEmailAndPasswordAsync(
                    email,
                    password);

            if (firebaseUser == null)
            {
                return new AuthResult
                {
                    Success = false,
                    Error = "Invalid email or password.",
                    StatusCode = 401
                };
            }

            /*
             * Firebase maintains the authentication session.
             *
             * We do NOT create our own JWT.
             * We do NOT call the old ASP.NET /api/auth/login.
             */

            return new AuthResult
            {
                Success = true,
                StatusCode = 200
            };
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine(
                $"[FIREBASE AUTH] Login error: {ex}");

            return new AuthResult
            {
                Success = false,
                Error = GetFirebaseErrorMessage(ex),
                StatusCode = 401
            };
        }
    }

    // =========================================================
    // LOGOUT
    // =========================================================

    public async Task<bool> LogoutAsync()
    {
        try
        {
            await _auth.SignOutAsync();

            MauiProgram.SetCurrentUser(null);
            MauiProgram.NotifyAuthChanged();

            return true;
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine(
                $"[FIREBASE AUTH] Logout error: {ex}");

            return false;
        }
    }

    // =========================================================
    // REFRESH TOKEN
    // =========================================================
    //
    // Firebase handles token renewal automatically.
    // =========================================================

    public async Task<bool> RefreshTokenAsync()
    {
        try
        {
            var user = _auth.CurrentUser;

            if (user == null)
                return false;

            /*
             * Firebase SDK manages the ID-token lifecycle.
             * No custom refresh endpoint is required.
             */

            return true;
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine(
                $"[FIREBASE AUTH] Refresh error: {ex}");

            return false;
        }
    }

    // =========================================================
    // REGISTER
    // =========================================================
    //
    // 1. Create Firebase Authentication account.
    //
    // 2. Create Firestore profile:
    //
    // users/{firebaseUid}
    //
    // =========================================================

    public async Task RegisterAsync(
        string fullName,
        string username,
        string email,
        string password,
        string confirm,
        string role,
        int? regionId,
        int? districtId,
        int? branchId)
    {
        if (string.IsNullOrWhiteSpace(fullName))
            throw new Exception("Full name is required.");

        if (string.IsNullOrWhiteSpace(username))
            throw new Exception("Username is required.");

        if (string.IsNullOrWhiteSpace(email))
            throw new Exception("Email is required.");

        if (string.IsNullOrWhiteSpace(password))
            throw new Exception("Password is required.");

        if (password != confirm)
            throw new Exception("Passwords do not match.");

        try
        {
            // -------------------------------------------------
            // STEP 1
            // Firebase Authentication
            // -------------------------------------------------

            var firebaseUser =
                await _auth.CreateUserWithEmailAndPasswordAsync(
                    email.Trim(),
                    password);

            if (firebaseUser == null)
                throw new Exception(
                    "Firebase could not create the account.");

            /*
             * IMPORTANT:
             *
             * Firebase UID becomes the Firestore document ID.
             */

            var uid = firebaseUser.Uid;

            // -------------------------------------------------
            // STEP 2
            // Firestore user profile
            // -------------------------------------------------

            var userData = new Dictionary<string, object>
            {
                ["fullName"] = fullName.Trim(),

                ["username"] = username.Trim(),

                ["email"] = email.Trim(),

                ["role"] = string.IsNullOrWhiteSpace(role)
                    ? "Member"
                    : role.Trim(),

                ["regionId"] = regionId ?? 0,

                ["districtId"] = districtId ?? 0,

                ["branchId"] = branchId ?? 0,

                ["createdAt"] =
                    DateTime.UtcNow.ToString("O")
            };

            /*
             * users/{uid}
             */

            await _firestore
                .GetCollection("users")
                .GetDocument(uid)
                .SetDataAsync(userData);

            // -------------------------------------------------
            // STEP 3
            // Load current user
            // -------------------------------------------------

            await LoadCurrentUserAsync();
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine(
                $"[FIREBASE AUTH] Registration error: {ex}");

            throw new Exception(
                GetFirebaseErrorMessage(ex));
        }
    }

    // =========================================================
    // CURRENT USER
    // =========================================================

    public async Task<CCT_USCF.Models.CurrentUser?>
        GetCurrentUserAsync()
    {
        try
        {
            var firebaseUser = _auth.CurrentUser;

            if (firebaseUser == null)
            {
                MauiProgram.SetCurrentUser(null);

                return null;
            }

            return await LoadCurrentUserAsync();
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine(
                $"[FIREBASE AUTH] GetCurrentUser error: {ex}");

            return null;
        }
    }

    // =========================================================
    // LOAD USER FROM FIRESTORE
    // =========================================================

    private async Task<CCT_USCF.Models.CurrentUser?>
        LoadCurrentUserAsync()
    {
        var firebaseUser = _auth.CurrentUser;

        if (firebaseUser == null)
            return null;

        var uid = firebaseUser.Uid;

        var snapshot = await _firestore
            .GetCollection("users")
            .GetDocument(uid)
            .GetAsync();

        if (snapshot == null)
            return null;

        var data = snapshot.Data;

        if (data == null)
            return null;

        var user = new CCT_USCF.Models.CurrentUser
        {
            Id = ConvertFirebaseUidToGuid(uid),

            FullName = GetString(data, "fullName"),

            Username = GetString(data, "username"),

            Email = GetString(data, "email"),

            Role = GetString(data, "role"),

            RegionId = GetNullableInt(data, "regionId"),

            DistrictId = GetNullableInt(data, "districtId"),

            BranchId = GetNullableInt(data, "branchId")
        };

        // -----------------------------------------------------
        // Load region name
        // -----------------------------------------------------

        if (user.RegionId.HasValue)
        {
            var region =
                await GetLocationByIdAsync(
                    "regions",
                    user.RegionId.Value);

            user.Region = region?.Name;
        }

        // -----------------------------------------------------
        // Load district name
        // -----------------------------------------------------

        if (user.DistrictId.HasValue)
        {
            var district =
                await GetLocationByIdAsync(
                    "districts",
                    user.DistrictId.Value);

            user.District = district?.Name;
        }

        // -----------------------------------------------------
        // Load branch name
        // -----------------------------------------------------

        if (user.BranchId.HasValue)
        {
            var branch =
                await GetLocationByIdAsync(
                    "branches",
                    user.BranchId.Value);

            user.Branch = branch?.Name;
        }

        MauiProgram.SetCurrentUser(user);
        MauiProgram.NotifyAuthChanged();

        return user;
    }

    // =========================================================
    // REGIONS
    // =========================================================
    //
    // Firestore:
    //
    // regions
    //   ├── mwanza
    //   │     Id: 1
    //   │     Name: "Mwanza"
    //   │
    //   ├── arusha
    //   │     Id: 2
    //   │     Name: "Arusha"
    //   ...
    //
    // =========================================================

    public async Task<List<LocationItem>>
        GetRegionsAsync()
    {
        try
        {
            var snapshot = await _firestore
                .GetCollection("regions")
                .GetDocumentsAsync();

            var result = new List<LocationItem>();

            if (snapshot == null)
                return result;

            foreach (var document in snapshot.Documents)
            {
                var data = document.Data;

                if (data == null)
                    continue;

                var id = GetInt(data, "Id");

                var name = GetString(data, "Name");

                if (id <= 0)
                    continue;

                if (string.IsNullOrWhiteSpace(name))
                    continue;

                result.Add(new LocationItem
                {
                    Id = id,
                    Name = name
                });
            }

            return result
                .OrderBy(x => x.Name)
                .ToList();
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine(
                $"[FIRESTORE] GetRegions error: {ex}");

            throw new Exception(
                "Unable to load regions from Firebase.",
                ex);
        }
    }

    // =========================================================
    // DISTRICTS
    // =========================================================

    public async Task<List<LocationItem>>
        GetDistrictsAsync(int regionId)
    {
        try
        {
            var snapshot = await _firestore
                .GetCollection("districts")
                .GetDocumentsAsync();

            var result = new List<LocationItem>();

            if (snapshot == null)
                return result;

            foreach (var document in snapshot.Documents)
            {
                var data = document.Data;

                if (data == null)
                    continue;

                var currentRegionId =
                    GetInt(data, "RegionId");

                if (currentRegionId != regionId)
                    continue;

                var id = GetInt(data, "Id");

                var name = GetString(data, "Name");

                if (id <= 0)
                    continue;

                if (string.IsNullOrWhiteSpace(name))
                    continue;

                result.Add(new LocationItem
                {
                    Id = id,
                    Name = name
                });
            }

            return result
                .OrderBy(x => x.Name)
                .ToList();
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine(
                $"[FIRESTORE] GetDistricts error: {ex}");

            throw new Exception(
                "Unable to load districts from Firebase.",
                ex);
        }
    }

    // =========================================================
    // BRANCHES
    // =========================================================

    public async Task<List<LocationItem>>
        GetBranchesAsync(int districtId)
    {
        try
        {
            var snapshot = await _firestore
                .GetCollection("branches")
                .GetDocumentsAsync();

            var result = new List<LocationItem>();

            if (snapshot == null)
                return result;

            foreach (var document in snapshot.Documents)
            {
                var data = document.Data;

                if (data == null)
                    continue;

                var currentDistrictId =
                    GetInt(data, "DistrictId");

                if (currentDistrictId != districtId)
                    continue;

                var id = GetInt(data, "Id");

                var name = GetString(data, "Name");

                if (id <= 0)
                    continue;

                if (string.IsNullOrWhiteSpace(name))
                    continue;

                result.Add(new LocationItem
                {
                    Id = id,
                    Name = name
                });
            }

            return result
                .OrderBy(x => x.Name)
                .ToList();
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine(
                $"[FIRESTORE] GetBranches error: {ex}");

            throw new Exception(
                "Unable to load branches from Firebase.",
                ex);
        }
    }

    // =========================================================
    // UPDATE PROFILE
    // =========================================================

    public async Task<CCT_USCF.Models.CurrentUser?>
        UpdateProfileAsync(
            string? fullName,
            string? username,
            string? email,
            string? currentPassword,
            string? newPassword,
            string? confirmNewPassword)
    {
        var firebaseUser = _auth.CurrentUser;

        if (firebaseUser == null)
            throw new Exception("Not authenticated.");

        var uid = firebaseUser.Uid;

        // -----------------------------------------------------
        // Password validation
        // -----------------------------------------------------

        if (!string.IsNullOrWhiteSpace(newPassword))
        {
            if (newPassword != confirmNewPassword)
                throw new Exception(
                    "New passwords do not match.");

            /*
             * Password update can be added through Firebase
             * Auth's UpdatePasswordAsync.
             *
             * We deliberately do not silently change the
             * password here without handling re-authentication.
             */
        }

        // -----------------------------------------------------
        // Firestore profile update
        // -----------------------------------------------------

        var updates = new Dictionary<string, object>();

        if (!string.IsNullOrWhiteSpace(fullName))
            updates["fullName"] = fullName.Trim();

        if (!string.IsNullOrWhiteSpace(username))
            updates["username"] = username.Trim();

        if (!string.IsNullOrWhiteSpace(email))
            updates["email"] = email.Trim();

        if (updates.Count > 0)
        {
            await _firestore
                .GetCollection("users")
                .GetDocument(uid)
                .SetDataAsync(updates);
        }

        return await LoadCurrentUserAsync();
    }

    // =========================================================
    // HOLY WORD POST
    // =========================================================
    //
    // Firebase:
    //     Authentication
    //     Firestore post metadata
    //
    // Appwrite:
    //     Audio/media files
    //
    // =========================================================

    public async Task<bool> PostHolyWordAsync(
        string content,
        string? caption,
        string? audioFilePath,
        double? trimStart,
        double? trimEnd)
    {
        var firebaseUser = _auth.CurrentUser;

        if (firebaseUser == null)
            throw new Exception("Not authenticated.");

        if (string.IsNullOrWhiteSpace(content))
            throw new Exception("Content is required.");

        /*
         * Appwrite media upload will be connected separately.
         *
         * For now, create the Firestore post record.
         */

        var postData = new Dictionary<string, object>
        {
            ["authorId"] = firebaseUser.Uid,

            ["content"] = content.Trim(),

            ["caption"] =
                caption?.Trim() ?? "",

            ["createdAt"] =
                DateTime.UtcNow.ToString("O")
        };

        if (trimStart.HasValue)
            postData["trimStart"] = trimStart.Value;

        if (trimEnd.HasValue)
            postData["trimEnd"] = trimEnd.Value;

        if (!string.IsNullOrWhiteSpace(audioFilePath))
        {
            /*
             * This will eventually contain the Appwrite
             * file ID/URL after upload.
             */
            postData["audioFileName"] =
                System.IO.Path.GetFileName(audioFilePath);
        }

        await _firestore
            .GetCollection("posts")
            .AddDocumentAsync(postData);

        return true;
    }

    // =========================================================
    // LOCATION HELPER
    // =========================================================

    private async Task<LocationItem?>
        GetLocationByIdAsync(
            string collection,
            int id)
    {
        var snapshot = await _firestore
            .GetCollection(collection)
            .GetDocumentsAsync();

        if (snapshot == null)
            return null;

        foreach (var document in snapshot.Documents)
        {
            var data = document.Data;

            if (data == null)
                continue;

            var documentId = GetInt(data, "Id");

            if (documentId != id)
                continue;

            return new LocationItem
            {
                Id = documentId,
                Name = GetString(data, "Name")
            };
        }

        return null;
    }

    // =========================================================
    // FIRESTORE VALUE HELPERS
    // =========================================================

    private static string GetString(
        IDictionary<string, object> data,
        string key)
    {
        if (!data.TryGetValue(key, out var value))
            return "";

        return value?.ToString() ?? "";
    }

    private static int GetInt(
        IDictionary<string, object> data,
        string key)
    {
        if (!data.TryGetValue(key, out var value))
            return 0;

        if (value is int intValue)
            return intValue;

        if (value is long longValue)
            return (int)longValue;

        if (value is double doubleValue)
            return (int)doubleValue;

        if (int.TryParse(
            value?.ToString(),
            out var parsed))
        {
            return parsed;
        }

        return 0;
    }

    private static int? GetNullableInt(
        IDictionary<string, object> data,
        string key)
    {
        var value = GetInt(data, key);

        return value > 0
            ? value
            : null;
    }

    // =========================================================
    // FIREBASE UID → GUID
    // =========================================================
    //
    // CurrentUser.Id is Guid.
    //
    // Firebase UID is a string.
    //
    // We create a deterministic GUID from the Firebase UID
    // so the existing CurrentUser model does not have to be
    // changed right now.
    // =========================================================

    private static Guid ConvertFirebaseUidToGuid(
        string firebaseUid)
    {
        using var md5 =
            System.Security.Cryptography.MD5.Create();

        var bytes =
            System.Text.Encoding.UTF8.GetBytes(firebaseUid);

        var hash = md5.ComputeHash(bytes);

        return new Guid(hash);
    }

    // =========================================================
    // FIREBASE ERROR MESSAGE
    // =========================================================

    private static string GetFirebaseErrorMessage(
        Exception ex)
    {
        var message = ex.Message ?? "";

        if (message.Contains(
            "email",
            StringComparison.OrdinalIgnoreCase) &&
            message.Contains(
            "already",
            StringComparison.OrdinalIgnoreCase))
        {
            return "This email is already registered.";
        }

        if (message.Contains(
            "password",
            StringComparison.OrdinalIgnoreCase) &&
            message.Contains(
            "weak",
            StringComparison.OrdinalIgnoreCase))
        {
            return "Password is too weak.";
        }

        if (message.Contains(
            "invalid",
            StringComparison.OrdinalIgnoreCase))
        {
            return "Invalid email or password.";
        }

        if (message.Contains(
            "network",
            StringComparison.OrdinalIgnoreCase))
        {
            return "Network error. Check your internet connection.";
        }

        if (string.IsNullOrWhiteSpace(message))
            return "Firebase operation failed.";

        return message;
    }
}
