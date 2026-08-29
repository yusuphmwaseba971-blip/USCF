
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

    private sealed class FirestoreLocationDocument : IFirestoreObject
    {
        [FirestoreDocumentId]
        public string DocumentId { get; set; } = string.Empty;

        [FirestoreProperty("Id")]
        public int Id { get; set; }

        [FirestoreProperty("Name")]
        public string Name { get; set; } = string.Empty;

        [FirestoreProperty("RegionId")]
        public int RegionId { get; set; }

        [FirestoreProperty("DistrictId")]
        public int DistrictId { get; set; }
    }

    private sealed class FirestoreUserProfileDocument : IFirestoreObject
    {
        [FirestoreDocumentId]
        public string DocumentId { get; set; } = string.Empty;

        [FirestoreProperty("fullName")]
        public string FullName { get; set; } = string.Empty;

        [FirestoreProperty("username")]
        public string Username { get; set; } = string.Empty;

        [FirestoreProperty("email")]
        public string Email { get; set; } = string.Empty;

        [FirestoreProperty("role")]
        public string Role { get; set; } = string.Empty;

        [FirestoreProperty("regionId")]
        public int RegionId { get; set; }

        [FirestoreProperty("districtId")]
        public int DistrictId { get; set; }

        [FirestoreProperty("branchId")]
        public int BranchId { get; set; }

        [FirestoreProperty("createdAt")]
        public string CreatedAt { get; set; } = string.Empty;
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
                Error = "Email or username is required.",
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
            await FirebaseInit.Initialized;

            var identifier = usernameOrEmail.Trim();
            var normalizedIdentifier = identifier.Trim();
            var isEmailIdentifier = normalizedIdentifier.Contains('@');

            var emailToUse = isEmailIdentifier
                ? normalizedIdentifier.Trim().ToLowerInvariant()
                : string.Empty;

            if (!isEmailIdentifier)
            {
                var usernameProfile = await FindUserByUsernameAsync(normalizedIdentifier);
                if (usernameProfile == null || string.IsNullOrWhiteSpace(usernameProfile.Email))
                {
                    return new AuthResult
                    {
                        Success = false,
                        Error = "Username not found.",
                        StatusCode = 404
                    };
                }

                emailToUse = usernameProfile.Email.Trim().ToLowerInvariant();
            }

            var firebaseUser =
                await _auth.SignInWithEmailAndPasswordAsync(
                    emailToUse,
                    password);

            if (firebaseUser == null)
            {
                return new AuthResult
                {
                    Success = false,
                    Error = "Incorrect username/email or password.",
                    StatusCode = 401
                };
            }

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

        if (password.Length < 6)
            throw new Exception("Password must be at least 6 characters.");

        if (password != confirm)
            throw new Exception("Passwords do not match.");

        var normalizedUsername = NormalizeUsername(username);
        if (normalizedUsername.Length < 3)
            throw new Exception("Username must be at least 3 characters.");

        var normalizedEmail = email.Trim();
        var normalizedRole = string.IsNullOrWhiteSpace(role) ? "Member" : role.Trim();

        try
        {
            await FirebaseInit.Initialized;

            if (await IsUsernameTakenAsync(normalizedUsername))
                throw new Exception("Username is already registered.");

            var firebaseUser =
                await _auth.CreateUserAsync(
                    normalizedEmail,
                    password);

            if (firebaseUser == null)
            {
                throw new Exception(
                    "Firebase could not create the account.");
            }

            var firebaseUid = firebaseUser.Uid;

            var profileDocument =
                new FirestoreUserProfileDocument
                {
                    DocumentId = firebaseUid,
                    FullName = fullName.Trim(),
                    Username = normalizedUsername,
                    Email = normalizedEmail,
                    Role = normalizedRole,
                    RegionId = regionId ?? 0,
                    DistrictId = districtId ?? 0,
                    BranchId = branchId ?? 0,
                    CreatedAt = DateTime.UtcNow.ToString("O")
                };

            try
            {
                await _firestore
                    .GetCollection("users")
                    .GetDocument(firebaseUid)
                    .SetDataAsync(profileDocument);

                var savedDocument = await _firestore
                    .GetCollection("users")
                    .GetDocument(firebaseUid)
                    .GetDocumentSnapshotAsync<FirestoreUserProfileDocument>(Source.Default);

                var isProfileSaved = savedDocument?.Data != null &&
                    !string.IsNullOrWhiteSpace(savedDocument.Data.FullName) &&
                    !string.IsNullOrWhiteSpace(savedDocument.Data.Username) &&
                    !string.IsNullOrWhiteSpace(savedDocument.Data.Email) &&
                    !string.IsNullOrWhiteSpace(savedDocument.Data.Role) &&
                    (savedDocument.Data.RegionId > 0 || savedDocument.Data.DistrictId > 0 || savedDocument.Data.BranchId > 0 || string.Equals(savedDocument.Data.Role, "Member", StringComparison.OrdinalIgnoreCase));

                if (!isProfileSaved)
                {
                    throw new InvalidOperationException(
                        "Profile verification failed after Firestore write.");
                }
            }
            catch (Exception firestoreEx)
            {
                System.Diagnostics.Debug.WriteLine(
                    $"[FIREBASE AUTH] Firestore profile write failed for UID {firebaseUid}: {firestoreEx}");

                try
                {
                    await _auth.SignOutAsync();
                }
                catch
                {
                }

                throw new Exception(
                    "Your Firebase account was created, but your user profile could not be saved. Please try again.",
                    firestoreEx);
            }

            var currentUser = await LoadCurrentUserAsync();
            if (currentUser == null)
            {
                throw new Exception(
                    "Your Firebase account exists, but your user profile is missing.");
            }

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

            var currentUser = await LoadCurrentUserAsync();
            if (currentUser != null)
                return currentUser;

            var previousUser = MauiProgram.CurrentUser;
            if (previousUser != null && !string.IsNullOrWhiteSpace(previousUser.Email))
                return previousUser;

            return null;
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine(
                $"[FIREBASE AUTH] GetCurrentUser failed: {ex}");

            var previousUser = MauiProgram.CurrentUser;
            if (previousUser != null && !string.IsNullOrWhiteSpace(previousUser.Email))
                return previousUser;

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

        try
        {
            var snapshot = await _firestore
                .GetCollection("users")
                .GetDocument(uid)
                .GetDocumentSnapshotAsync<FirestoreUserProfileDocument>(Source.Default);

            if (snapshot == null || snapshot.Data == null)
            {
                System.Diagnostics.Debug.WriteLine(
                    $"[FIREBASE AUTH] Firebase account exists but Firestore profile is missing for UID {uid}.");

                var existingUser = MauiProgram.CurrentUser;
                if (existingUser != null && !string.IsNullOrWhiteSpace(existingUser.Email))
                    return existingUser;

                return null;
            }

            var profile = snapshot.Data;
            var currentUser =
                new CCT_USCF.Models.CurrentUser
                {
                    Id = ConvertFirebaseUidToGuid(uid),
                    FullName = !string.IsNullOrWhiteSpace(profile.FullName) ? profile.FullName : (firebaseUser.DisplayName ?? string.Empty),
                    Username = !string.IsNullOrWhiteSpace(profile.Username) ? profile.Username : string.Empty,
                    Email = !string.IsNullOrWhiteSpace(profile.Email) ? profile.Email : (firebaseUser.Email ?? string.Empty),
                    Role = !string.IsNullOrWhiteSpace(profile.Role) ? profile.Role : string.Empty,
                    RegionId = profile.RegionId > 0 ? profile.RegionId : null,
                    DistrictId = profile.DistrictId > 0 ? profile.DistrictId : null,
                    BranchId = profile.BranchId > 0 ? profile.BranchId : null
                };

            if (currentUser.RegionId.HasValue)
            {
                var region = await GetLocationByIdAsync("regions", currentUser.RegionId.Value);
                currentUser.Region = region?.Name;
            }

            if (currentUser.DistrictId.HasValue)
            {
                var district = await GetLocationByIdAsync("districts", currentUser.DistrictId.Value);
                currentUser.District = district?.Name;
            }

            if (currentUser.BranchId.HasValue)
            {
                var branch = await GetLocationByIdAsync("branches", currentUser.BranchId.Value);
                currentUser.Branch = branch?.Name;
            }

            return currentUser;
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine(
                $"[FIREBASE AUTH] Failed to load user profile for UID {uid}: {ex}");

            var existingUser = MauiProgram.CurrentUser;
            if (existingUser != null && !string.IsNullOrWhiteSpace(existingUser.Email))
                return existingUser;

            return null;
        }
    }

    private async Task<FirestoreUserProfileDocument?> FindUserByUsernameAsync(string username)
    {
        var normalized = NormalizeUsername(username);
        if (string.IsNullOrWhiteSpace(normalized))
            return null;

        try
        {
            var snapshot = await _firestore
                .GetCollection("users")
                .GetDocumentsAsync<FirestoreUserProfileDocument>(Source.Default);

            if (snapshot == null)
                return null;

            foreach (var document in snapshot.Documents)
            {
                var profile = document?.Data;
                if (profile == null)
                    continue;

                var storedUsername = NormalizeUsername(profile.Username);
                if (string.Equals(storedUsername, normalized, StringComparison.OrdinalIgnoreCase))
                    return profile;
            }

            return null;
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine(
                $"[FIREBASE AUTH] Username lookup failed: {ex}");
            return null;
        }
    }

    private async Task<bool> IsUsernameTakenAsync(string username)
    {
        return await FindUserByUsernameAsync(username) != null;
    }

    private static string NormalizeUsername(string? username)
    {
        return username?.Trim().ToLowerInvariant() ?? string.Empty;
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
                    .GetDocumentsAsync<FirestoreLocationDocument>(Source.Default);

            System.Diagnostics.Debug.WriteLine($"[CCT-FIRESTORE] Firestore query completed: snapshot is {(snapshot == null ? "null" : "not null")}");

            var regions =
                new List<LocationItem>();

            if (snapshot == null)
                return regions;

            var docCount = snapshot.Count;
            System.Diagnostics.Debug.WriteLine($"[CCT-FIRESTORE] Documents returned: {docCount}");

            foreach (var document in snapshot.Documents)
            {
                var data = document.Data;
                var documentId = document.Reference?.Id ?? string.Empty;

                System.Diagnostics.Debug.WriteLine(
                    $"[CCT-FIRESTORE] Region document ID: {documentId}");
                System.Diagnostics.Debug.WriteLine(
                    $"[CCT-FIRESTORE] Field Id: {data?.Id}");
                System.Diagnostics.Debug.WriteLine(
                    $"[CCT-FIRESTORE] Field Name: {data?.Name}");

                if (data == null)
                    continue;

                var id = data.Id;
                var name = data.Name;

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
            System.Diagnostics.Debug.WriteLine(
                $"[CCT-DISTRICT] Selected RegionId: {regionId}");
            System.Diagnostics.Debug.WriteLine(
                "[CCT-DISTRICT] District query started");
 
            var snapshot =
                await _firestore
                    .GetCollection("districts")
                    .GetDocumentsAsync<FirestoreLocationDocument>(Source.Default);
 
            var districts =
                new List<LocationItem>();
 
            if (snapshot == null)
            {
                System.Diagnostics.Debug.WriteLine(
                    "[CCT-DISTRICT] District query returned null snapshot");
                return districts;
            }
 
            System.Diagnostics.Debug.WriteLine(
                $"[CCT-DISTRICT] District documents returned: {snapshot.Count}");
 
            foreach (var document in snapshot.Documents)
            {
                var data = document.Data;
                var documentId = document.Reference?.Id ?? string.Empty;
 
                System.Diagnostics.Debug.WriteLine(
                    $"[CCT-DISTRICT] District document ID: {documentId}");
 
                if (data == null)
                {
                    System.Diagnostics.Debug.WriteLine(
                        $"[CCT-DISTRICT] District document {documentId} has null Data");
                    continue;
                }
 
                System.Diagnostics.Debug.WriteLine(
                    $"[CCT-DISTRICT] District field Id: {data.Id}");
                System.Diagnostics.Debug.WriteLine(
                    $"[CCT-DISTRICT] District field Name: {data.Name}");
                System.Diagnostics.Debug.WriteLine(
                    $"[CCT-DISTRICT] District field RegionId: {data.RegionId}");
                System.Diagnostics.Debug.WriteLine(
                    $"[CCT-DISTRICT] District field DistrictId: {data.DistrictId}");
 
                var parentRegionId = data.RegionId;
 
                if (parentRegionId != regionId)
                    continue;
 
                var id = data.Id;
                var name = data.Name;
 
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
 
                System.Diagnostics.Debug.WriteLine(
                    $"[CCT-DISTRICT] District accepted: Id={id}, Name={name}");
            }
 
            System.Diagnostics.Debug.WriteLine(
                $"[CCT-DISTRICT] Final districts for RegionId {regionId}: {districts.Count}");
 
            return districts
                .OrderBy(x => x.Name)
                .ToList();
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine(
                $"[CCT-DISTRICT] District query failed: {ex}");
 
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
            System.Diagnostics.Debug.WriteLine(
                $"[CCT-BRANCH] Selected DistrictId: {districtId}");
            System.Diagnostics.Debug.WriteLine(
                "[CCT-BRANCH] Branch query started");
 
            var snapshot =
                await _firestore
                    .GetCollection("branches")
                    .GetDocumentsAsync<FirestoreLocationDocument>(Source.Default);
 
            var branches =
                new List<LocationItem>();
 
            if (snapshot == null)
            {
                System.Diagnostics.Debug.WriteLine(
                    "[CCT-BRANCH] Branch query returned null snapshot");
                return branches;
            }
 
            System.Diagnostics.Debug.WriteLine(
                $"[CCT-BRANCH] Branch documents returned: {snapshot.Count}");
 
            foreach (var document in snapshot.Documents)
            {
                var data = document.Data;
                var documentId = document.Reference?.Id ?? string.Empty;
 
                System.Diagnostics.Debug.WriteLine(
                    $"[CCT-BRANCH] Branch document ID: {documentId}");
 
                if (data == null)
                {
                    System.Diagnostics.Debug.WriteLine(
                        $"[CCT-BRANCH] Branch document {documentId} has null Data");
                    continue;
                }
 
                System.Diagnostics.Debug.WriteLine(
                    $"[CCT-BRANCH] Branch field Id: {data.Id}");
                System.Diagnostics.Debug.WriteLine(
                    $"[CCT-BRANCH] Branch field Name: {data.Name}");
                System.Diagnostics.Debug.WriteLine(
                    $"[CCT-BRANCH] Branch field DistrictId: {data.DistrictId}");
                System.Diagnostics.Debug.WriteLine(
                    $"[CCT-BRANCH] Branch field RegionId: {data.RegionId}");
 
                var parentDistrictId = data.DistrictId;
 
                if (parentDistrictId != districtId)
                    continue;
 
                var id = data.Id;
                var name = data.Name;
 
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
 
                System.Diagnostics.Debug.WriteLine(
                    $"[CCT-BRANCH] Branch accepted: Id={id}, Name={name}");
            }
 
            System.Diagnostics.Debug.WriteLine(
                $"[CCT-BRANCH] Final branches for DistrictId {districtId}: {branches.Count}");
 
            return branches
                .OrderBy(x => x.Name)
                .ToList();
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine(
                $"[CCT-BRANCH] Branch query failed: {ex}");
 
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
                .GetDocumentsAsync<FirestoreLocationDocument>(Source.Default);

        if (snapshot == null)
            return null;

        foreach (var document in snapshot.Documents)
        {
            var data = document.Data;

            if (data == null)
                continue;

            var documentId = data.Id;

            if (documentId != id)
                continue;

            return new LocationItem
            {
                Id = documentId,
                Name = data.Name
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
        var innerMessage = ex.InnerException?.Message ?? string.Empty;
        var combined = $"{message} {innerMessage}".Trim();

        if (combined.Contains("Password must be at least 6 characters", StringComparison.OrdinalIgnoreCase) ||
            (combined.Contains("weak", StringComparison.OrdinalIgnoreCase) &&
             combined.Contains("password", StringComparison.OrdinalIgnoreCase)))
        {
            return "Password must be at least 6 characters.";
        }

        if (combined.Contains("This email is already registered", StringComparison.OrdinalIgnoreCase) ||
            combined.Contains("already registered", StringComparison.OrdinalIgnoreCase) ||
            (combined.Contains("already", StringComparison.OrdinalIgnoreCase) &&
             combined.Contains("email", StringComparison.OrdinalIgnoreCase)))
        {
            return "This email is already registered.";
        }

        if (combined.Contains("username is already registered", StringComparison.OrdinalIgnoreCase) ||
            combined.Contains("This username is already registered", StringComparison.OrdinalIgnoreCase) ||
            (combined.Contains("already", StringComparison.OrdinalIgnoreCase) &&
             combined.Contains("username", StringComparison.OrdinalIgnoreCase)))
        {
            return "This username is already registered.";
        }

        if (combined.Contains("invalid email", StringComparison.OrdinalIgnoreCase) ||
            combined.Contains("malformed email", StringComparison.OrdinalIgnoreCase) ||
            combined.Contains("email address is invalid", StringComparison.OrdinalIgnoreCase))
        {
            return "Please enter a valid email address.";
        }

        if (combined.Contains("user-not-found", StringComparison.OrdinalIgnoreCase) ||
            combined.Contains("username not found", StringComparison.OrdinalIgnoreCase) ||
            combined.Contains("no user record", StringComparison.OrdinalIgnoreCase) ||
            combined.Contains("not found", StringComparison.OrdinalIgnoreCase) &&
            combined.Contains("username", StringComparison.OrdinalIgnoreCase))
        {
            return "Username not found.";
        }

        if (combined.Contains("invalid credential", StringComparison.OrdinalIgnoreCase) ||
            combined.Contains("wrong-password", StringComparison.OrdinalIgnoreCase) ||
            combined.Contains("password is invalid", StringComparison.OrdinalIgnoreCase) ||
            combined.Contains("email or password", StringComparison.OrdinalIgnoreCase) ||
            combined.Contains("invalid password", StringComparison.OrdinalIgnoreCase))
        {
            return "Incorrect username/email or password.";
        }

        if (combined.Contains("permission denied", StringComparison.OrdinalIgnoreCase) ||
            combined.Contains("firestore", StringComparison.OrdinalIgnoreCase) &&
            combined.Contains("permission", StringComparison.OrdinalIgnoreCase))
        {
            return "You are authenticated, but your profile could not be accessed. Please try again.";
        }

        if (combined.Contains("network", StringComparison.OrdinalIgnoreCase) ||
            combined.Contains("unavailable", StringComparison.OrdinalIgnoreCase) ||
            (combined.Contains("connection", StringComparison.OrdinalIgnoreCase) &&
             combined.Contains("failed", StringComparison.OrdinalIgnoreCase)))
        {
            return "Network connection is unavailable. Your login session has not been cleared.";
        }

        if (combined.Contains("profile", StringComparison.OrdinalIgnoreCase) &&
            combined.Contains("missing", StringComparison.OrdinalIgnoreCase))
        {
            return "Your Firebase account exists, but your user profile is missing.";
        }

        if (string.IsNullOrWhiteSpace(combined))
            return "Firebase operation failed.";

        return combined;
    }
}
