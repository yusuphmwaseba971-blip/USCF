
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

        public string Name { get; set; } = string.Empty;
    }

    // =========================================================
    // LOGIN
    // =========================================================

    public async Task<AuthResult> LoginAsync(
        string usernameOrEmail,
        string password)
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

        try
        {
            /*
             * Firebase Authentication uses email/password.
             *
             * The existing parameter is called
             * usernameOrEmail because the old application
             * supported both.
             *
             * For the Firebase migration, the value is treated
             * as the Firebase email address.
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
             * Firebase owns the authentication session.
             *
             * No custom JWT is created here.
             * No ASP.NET /api/auth/login request is made here.
             */

            var currentUser = await LoadCurrentUserAsync();
            MauiProgram.SetCurrentUser(currentUser);

            return new AuthResult
            {
                Success = true,
                Token = firebaseUser.Uid,
                RefreshToken = firebaseUser.Email,
                ExpiresAtUtc = DateTime.UtcNow.AddDays(30),
                StatusCode = 200
            };
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine(
                $"[FIREBASE AUTH] Login failed: {ex}");

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

            MauiProgram.SetCurrentUser(null, notify: true);

            return true;
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine(
                $"[FIREBASE AUTH] Logout failed: {ex}");

            return false;
        }
    }

    // =========================================================
    // TOKEN REFRESH
    // =========================================================
    //
    // Firebase handles token refresh automatically.
    // =========================================================

    public async Task<bool> RefreshTokenAsync()
    {
        try
        {
            return _auth.CurrentUser != null;
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine(
                $"[FIREBASE AUTH] Refresh check failed: {ex}");

            return false;
        }
    }

    // =========================================================
    // REGISTER
    // =========================================================
    //
    // Firebase:
    //     Authentication account
    //
    // Firestore:
    //     User profile
    //
    // Document:
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
            // =================================================
            // CREATE FIREBASE AUTH ACCOUNT
            // =================================================

            var firebaseUser =
                await _auth.CreateUserAsync(
                    email.Trim(),
                    password);

            if (firebaseUser == null)
            {
                throw new Exception(
                    "Firebase could not create the account.");
            }

            var firebaseUid = firebaseUser.Uid;

            // =================================================
            // CREATE FIRESTORE USER PROFILE
            // =================================================

            var userData =
                new Dictionary<string, object>
                {
                    ["fullName"] = fullName.Trim(),

                    ["username"] = username.Trim(),

                    ["email"] = email.Trim(),

                    ["role"] =
                        string.IsNullOrWhiteSpace(role)
                            ? "Member"
                            : role.Trim(),

                    ["regionId"] = regionId ?? 0,

                    ["districtId"] = districtId ?? 0,

                    ["branchId"] = branchId ?? 0,

                    ["createdAt"] =
                        DateTime.UtcNow.ToString("O")
                };

            await _firestore
                .GetCollection("users")
                .GetDocument(firebaseUid)
                .SetDataAsync(userData);

            // =================================================
            // LOAD THE NEW USER
            // =================================================

            var currentUser = await LoadCurrentUserAsync();
            MauiProgram.SetCurrentUser(currentUser);
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine(
                $"[FIREBASE AUTH] Registration failed: {ex}");

            throw new Exception(
                GetFirebaseErrorMessage(ex));
        }
    }

    // =========================================================
    // GET CURRENT USER
    // =========================================================

    public async Task<CCT_USCF.Models.CurrentUser?>
        GetCurrentUserAsync()
    {
        try
        {
            if (_auth.CurrentUser == null)
                return null;

            return await LoadCurrentUserAsync();
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine(
                $"[FIREBASE AUTH] GetCurrentUser failed: {ex}");

            return null;
        }
    }

    // =========================================================
    // LOAD CURRENT USER FROM FIRESTORE
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
            .GetDocumentSnapshotAsync<Dictionary<string, object>>(Source.Default);

        if (snapshot == null || snapshot.Data == null)
        {
            /*
             * Authentication exists, but the Firestore profile
             * does not exist yet.
             *
             * We still return a basic CurrentUser instead of
             * treating the Firebase login as failed.
             */

            return new CCT_USCF.Models.CurrentUser
            {
                Id = ConvertFirebaseUidToGuid(uid),
                Email = firebaseUser.Email ?? string.Empty
            };
        }

        var data = snapshot.Data;

        var currentUser =
            new CCT_USCF.Models.CurrentUser
            {
                Id = ConvertFirebaseUidToGuid(uid),

                FullName =
                    GetString(data, "fullName"),

                Username =
                    GetString(data, "username"),

                Email =
                    GetString(data, "email"),

                Role =
                    GetString(data, "role"),

                RegionId =
                    GetNullableInt(data, "regionId"),

                DistrictId =
                    GetNullableInt(data, "districtId"),

                BranchId =
                    GetNullableInt(data, "branchId")
            };

        if (currentUser.RegionId.HasValue)
        {
            var region =
                await GetLocationByIdAsync(
                    "regions",
                    currentUser.RegionId.Value);

            currentUser.Region = region?.Name;
        }

        if (currentUser.DistrictId.HasValue)
        {
            var district =
                await GetLocationByIdAsync(
                    "districts",
                    currentUser.DistrictId.Value);

            currentUser.District = district?.Name;
        }

        if (currentUser.BranchId.HasValue)
        {
            var branch =
                await GetLocationByIdAsync(
                    "branches",
                    currentUser.BranchId.Value);

            currentUser.Branch = branch?.Name;
        }

        return currentUser;
    }

    // =========================================================
    // GET REGIONS
    // =========================================================
    //
    // Firestore:
    //
    // regions
    //   ├── mwanza
    //   │     Id   = 1
    //   │     Name = "Mwanza"
    //   │
    //   └── ...
    //
    // =========================================================

    public async Task<List<LocationItem>>
        GetRegionsAsync()
    {
        try
        {
            System.Diagnostics.Debug.WriteLine("[CCT-FIRESTORE] Starting regions query");
            System.Diagnostics.Debug.WriteLine($"[CCT-FIRESTORE] Firestore instance: {_firestore?.GetType().FullName ?? "null"}");

            var snapshot =
                await _firestore
                    .GetCollection("regions")
                    .GetDocumentsAsync<Dictionary<string, object>>(Source.Default);

            System.Diagnostics.Debug.WriteLine($"[CCT-FIRESTORE] Firestore query completed: snapshot is {(snapshot == null ? "null" : "not null")}");

            var regions =
                new List<LocationItem>();

            if (snapshot == null)
                return regions;

            // Count documents without assuming Documents exposes a Count property
            var docCount = 0;
            if (snapshot.Documents != null)
            {
                foreach (var _d in snapshot.Documents)
                    docCount++;
            }
            System.Diagnostics.Debug.WriteLine($"[CCT-FIRESTORE] Documents returned: {docCount}");

            foreach (var document in snapshot.Documents)
            {
                var data = document.Data;

                // Log document keys to aid diagnosis
                if (data != null)
                {
                    var keys = string.Join(", ", data.Keys);
                    System.Diagnostics.Debug.WriteLine($"[CCT-FIRESTORE] Document keys: {keys}");
                }

                if (data == null)
                    continue;

                var id =
                    GetInt(data, "Id");

                var name =
                    GetString(data, "Name");

                System.Diagnostics.Debug.WriteLine($"[CCT-FIRESTORE] Parsed region - Id: {id}, Name: {name}");

                if (id <= 0)
                    continue;

                if (string.IsNullOrWhiteSpace(name))
                    continue;

                regions.Add(
                    new LocationItem
                    {
                        Id = id,
                        Name = name
                    });
            }

            return regions
                .OrderBy(x => x.Name)
                .ToList();
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine(
                $"[CCT-FIRESTORE][ERROR] Regions failed: {ex}");

            // Log full exception details
            System.Diagnostics.Debug.WriteLine($"[CCT-FIRESTORE][ERROR] Exception type: {ex.GetType().FullName}");
            System.Diagnostics.Debug.WriteLine($"[CCT-FIRESTORE][ERROR] Message: {ex.Message}");
            System.Diagnostics.Debug.WriteLine($"[CCT-FIRESTORE][ERROR] StackTrace: {ex.StackTrace}");
            if (ex.InnerException != null)
            {
                System.Diagnostics.Debug.WriteLine($"[CCT-FIRESTORE][ERROR] InnerException: {ex.InnerException}");
            }

            throw new Exception(
                "Unable to load regions from Firebase.",
                ex);
        }
    }

    // =========================================================
    // GET DISTRICTS
    // =========================================================

    public async Task<List<LocationItem>>
        GetDistrictsAsync(int regionId)
    {
        if (regionId <= 0)
            return new List<LocationItem>();

        try
        {
            var snapshot =
                await _firestore
                    .GetCollection("districts")
                    .GetDocumentsAsync<Dictionary<string, object>>(Source.Default);

            var districts =
                new List<LocationItem>();

            if (snapshot == null)
                return districts;

            foreach (var document in snapshot.Documents)
            {
                var data = document.Data;

                if (data == null)
                    continue;

                var parentRegionId =
                    GetInt(data, "RegionId");

                if (parentRegionId != regionId)
                    continue;

                var id =
                    GetInt(data, "Id");

                var name =
                    GetString(data, "Name");

                if (id <= 0)
                    continue;

                if (string.IsNullOrWhiteSpace(name))
                    continue;

                districts.Add(
                    new LocationItem
                    {
                        Id = id,
                        Name = name
                    });
            }

            return districts
                .OrderBy(x => x.Name)
                .ToList();
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine(
                $"[FIRESTORE] Districts failed: {ex}");

            throw new Exception(
                "Unable to load districts from Firebase.",
                ex);
        }
    }

    // =========================================================
    // GET BRANCHES
    // =========================================================

    public async Task<List<LocationItem>>
        GetBranchesAsync(int districtId)
    {
        if (districtId <= 0)
            return new List<LocationItem>();

        try
        {
            var snapshot =
                await _firestore
                    .GetCollection("branches")
                    .GetDocumentsAsync<Dictionary<string, object>>(Source.Default);

            var branches =
                new List<LocationItem>();

            if (snapshot == null)
                return branches;

            foreach (var document in snapshot.Documents)
            {
                var data = document.Data;

                if (data == null)
                    continue;

                var parentDistrictId =
                    GetInt(data, "DistrictId");

                if (parentDistrictId != districtId)
                    continue;

                var id =
                    GetInt(data, "Id");

                var name =
                    GetString(data, "Name");

                if (id <= 0)
                    continue;

                if (string.IsNullOrWhiteSpace(name))
                    continue;

                branches.Add(
                    new LocationItem
                    {
                        Id = id,
                        Name = name
                    });
            }

            return branches
                .OrderBy(x => x.Name)
                .ToList();
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine(
                $"[FIRESTORE] Branches failed: {ex}");

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

        if (!string.IsNullOrWhiteSpace(newPassword))
        {
            if (newPassword != confirmNewPassword)
            {
                throw new Exception(
                    "New passwords do not match.");
            }

            /*
             * Password change requires Firebase Auth
             * re-authentication when Firebase requires it.
             *
             * We are deliberately not pretending that the
             * password was changed here.
             */
        }

        var updates =
            new Dictionary<string, object>();

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
                .GetDocument(firebaseUser.Uid)
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
    //     Firestore metadata
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

        var post =
            new Dictionary<string, object>
            {
                ["authorId"] =
                    firebaseUser.Uid,

                ["content"] =
                    content.Trim(),

                ["caption"] =
                    caption?.Trim() ?? string.Empty,

                ["createdAt"] =
                    DateTime.UtcNow.ToString("O")
            };

        if (trimStart.HasValue)
            post["trimStart"] = trimStart.Value;

        if (trimEnd.HasValue)
            post["trimEnd"] = trimEnd.Value;

        if (!string.IsNullOrWhiteSpace(audioFilePath))
        {
            /*
             * The actual audio upload belongs to Appwrite.
             *
             * We only keep the filename here until the
             * Appwrite media service is connected.
             */
            post["audioFileName"] =
                System.IO.Path.GetFileName(audioFilePath);
        }

        await _firestore
            .GetCollection("posts")
            .AddDocumentAsync(post);

        return true;
    }

    // =========================================================
    // LOCATION LOOKUP
    // =========================================================

    private async Task<LocationItem?>
        GetLocationByIdAsync(
            string collection,
            int id)
    {
        var snapshot =
            await _firestore
                .GetCollection(collection)
                .GetDocumentsAsync<Dictionary<string, object>>(Source.Default);

        if (snapshot == null)
            return null;

        foreach (var document in snapshot.Documents)
        {
            var data = document.Data;

            if (data == null)
                continue;

            var documentId =
                GetInt(data, "Id");

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
        // Try exact key first
        if (data.TryGetValue(key, out var exactValue))
            return exactValue?.ToString() ?? string.Empty;

        // Fallback: case-insensitive key search
        var match = data.Keys.FirstOrDefault(k => string.Equals(k, key, StringComparison.OrdinalIgnoreCase));
        if (match != null && data.TryGetValue(match, out var ciValue))
            return ciValue?.ToString() ?? string.Empty;

        return string.Empty;
    }

    private static int GetInt(
        IDictionary<string, object> data,
        string key)
    {
        // Try exact key first
        if (!data.TryGetValue(key, out var value))
        {
            // Fallback: case-insensitive key search
            var match = data.Keys.FirstOrDefault(k => string.Equals(k, key, StringComparison.OrdinalIgnoreCase));
            if (match != null)
                value = data[match];
        }

        if (value == null)
            return 0;

        if (value is int i)
            return i;

        if (value is long l)
            return (int)l;

        if (value is double d)
            return (int)d;

        if (value is float f)
            return (int)f;

        if (int.TryParse(
            value?.ToString(),
            out var result))
        {
            return result;
        }

        return 0;
    }

    private static int? GetNullableInt(
        IDictionary<string, object> data,
        string key)
    {
        var value =
            GetInt(data, key);

        return value > 0
            ? value
            : null;
    }

    // =========================================================
    // FIREBASE UID → GUID
    // =========================================================
    //
    // Existing CurrentUser.Id is Guid.
    // Firebase UID is a string.
    //
    // This produces a deterministic Guid from the Firebase UID
    // without changing the existing CurrentUser model.
    // =========================================================

    private static Guid ConvertFirebaseUidToGuid(
        string firebaseUid)
    {
        using var md5 =
            System.Security.Cryptography.MD5.Create();

        var bytes =
            System.Text.Encoding.UTF8
                .GetBytes(firebaseUid);

        var hash =
            md5.ComputeHash(bytes);

        return new Guid(hash);
    }

    // =========================================================
    // FIREBASE ERROR HANDLING
    // =========================================================

    private static string GetFirebaseErrorMessage(
        Exception ex)
    {
        var message =
            ex.Message ?? string.Empty;

        if (message.Contains(
                "already",
                StringComparison.OrdinalIgnoreCase) &&
            message.Contains(
                "email",
                StringComparison.OrdinalIgnoreCase))
        {
            return "This email is already registered.";
        }

        if (message.Contains(
                "weak",
                StringComparison.OrdinalIgnoreCase) &&
            message.Contains(
                "password",
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
