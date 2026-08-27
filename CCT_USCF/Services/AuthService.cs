using Plugin.Firebase.Auth;

namespace CCT_USCF.Services;

public class AuthService
{
    private readonly IFirebaseAuth _auth;

    public AuthService(IFirebaseAuth auth)
    {
        _auth = auth;
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
    //
    // Firebase Authentication
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

            // Firebase Authentication uses email/password.
            // Until username authentication is implemented in
            // Firestore, usernameOrEmail is treated as an email.
            var user = await _auth
                .SignInWithEmailAndPasswordAsync(
                    usernameOrEmail.Trim(),
                    password);

            if (user == null)
            {
                return new AuthResult
                {
                    Success = false,
                    Error = "Login failed.",
                    StatusCode = 401
                };
            }

            // Firebase manages the authentication session.
            // We don't create our own JWT or refresh token.
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
    // Firebase manages token refresh automatically.
    // No custom refresh endpoint is required.
    // =========================================================

    public async Task<bool> RefreshTokenAsync()
    {
        try
        {
            var user = _auth.CurrentUser;

            if (user == null)
                return false;

            // Firebase SDK manages token renewal.
            // We simply confirm that the Firebase user
            // session still exists.
            return true;
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine(
                $"[FIREBASE AUTH] Token refresh error: {ex}");

            return false;
        }
    }

    // =========================================================
    // REGISTER
    // =========================================================
    //
    // Firebase Authentication creates the account.
    //
    // Additional profile information such as:
    // FullName
    // Username
    // Role
    // Region
    // District
    // Branch
    //
    // will be stored in Firestore.
    //
    // Firestore profile implementation will be connected next.
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
        if (string.IsNullOrWhiteSpace(email))
            throw new Exception("Email is required.");

        if (string.IsNullOrWhiteSpace(password))
            throw new Exception("Password is required.");

        if (password != confirm)
            throw new Exception("Passwords do not match.");

        try
        {
            var user = await _auth
                .CreateUserWithEmailAndPasswordAsync(
                    email.Trim(),
                    password);

            if (user == null)
                throw new Exception(
                    "Firebase could not create the account.");

            // TODO:
            // Save the user's additional information to
            // Cloud Firestore:
            //
            // users/{firebaseUserId}
            //
            // FullName
            // Username
            // Email
            // Role
            // RegionId
            // DistrictId
            // BranchId
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
                return null;

            // Create a CurrentUser object from the Firebase
            // authenticated user.
            //
            // Additional profile information will be loaded
            // from Firestore when the user profile migration
            // is completed.

            var user = new CCT_USCF.Models.CurrentUser();

            // These properties depend on the existing
            // CurrentUser model.
            //
            // The Firebase UID/email mapping will be completed
            // against that model.

            return user;
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine(
                $"[FIREBASE AUTH] GetCurrentUser error: {ex}");

            return null;
        }
    }

    // =========================================================
    // REGIONS
    // =========================================================
    //
    // Old:
    // /api/locations/regions
    //
    // New:
    // Firestore
    // =========================================================

    public async Task<List<LocationItem>>
        GetRegionsAsync()
    {
        // TODO:
        // Read:
        //
        // regions/{regionId}
        //
        // from Cloud Firestore.

        return new List<LocationItem>();
    }

    // =========================================================
    // DISTRICTS
    // =========================================================

    public async Task<List<LocationItem>>
        GetDistrictsAsync(int regionId)
    {
        // TODO:
        // Read districts belonging to regionId
        // from Cloud Firestore.

        return new List<LocationItem>();
    }

    // =========================================================
    // BRANCHES
    // =========================================================

    public async Task<List<LocationItem>>
        GetBranchesAsync(int districtId)
    {
        // TODO:
        // Read branches belonging to districtId
        // from Cloud Firestore.

        return new List<LocationItem>();
    }

    // =========================================================
    // UPDATE PROFILE
    // =========================================================
    //
    // Firebase Authentication handles email/password.
    // Firestore handles application profile information.
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
                throw new Exception(
                    "New passwords do not match.");

            // Password update will be handled through the
            // Firebase Authentication user account.
            //
            // Re-authentication may be required before
            // changing a password.
        }

        // TODO:
        // Update Firestore user profile:
        //
        // users/{firebaseUserId}
        //
        // FullName
        // Username
        // Email
        // etc.

        return await GetCurrentUserAsync();
    }

    // =========================================================
    // HOLY WORD POST
    // =========================================================
    //
    // Authentication comes from Firebase.
    //
    // Audio remains in Appwrite.
    //
    // Post metadata/content will be stored in Firestore.
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

        // TODO:
        //
        // 1. Upload audio to Appwrite if supplied.
        //
        // 2. Get Appwrite file URL/ID.
        //
        // 3. Create Firestore post:
        //
        // posts/{postId}
        //
        // authorId
        // content
        // caption
        // audioUrl
        // createdAt
        // etc.

        return true;
    }

    // =========================================================
    // FIREBASE ERROR HANDLING
    // =========================================================

    private static string GetFirebaseErrorMessage(
        Exception ex)
    {
        var message = ex.Message;

        if (string.IsNullOrWhiteSpace(message))
            return "Firebase authentication failed.";

        return message;
    }
}    var response = await _http.GetAsync(
        $"{_baseUrl}/api/locations/branches/{districtId}");

    if (!response.IsSuccessStatusCode)
    {
        throw new Exception("Unable to load branches.");
    }

    var json = await response.Content.ReadAsStringAsync();

    return JsonSerializer.Deserialize<List<LocationItem>>(
        json,
        new JsonSerializerOptions
        {
            PropertyNameCaseInsensitive = true
        }) ?? new List<LocationItem>();
}

// Update current user's profile (FullName, Username, Email, optional password change)
public async Task<CCT_USCF.Models.CurrentUser?> UpdateProfileAsync(string? fullName, string? username, string? email, string? currentPassword, string? newPassword, string? confirmNewPassword)
{
    var token = await TokenStorage.GetTokenAsync();
    if (string.IsNullOrEmpty(token)) throw new Exception("Not authenticated");

    var payload = new
    {
        FullName = fullName,
        Username = username,
        Email = email,
        CurrentPassword = currentPassword,
        NewPassword = newPassword,
        ConfirmNewPassword = confirmNewPassword
    };

    var content = new StringContent(JsonSerializer.Serialize(payload), Encoding.UTF8, "application/json");
    using var req = new HttpRequestMessage(HttpMethod.Put, $"{_baseUrl}/api/auth/update") { Content = content };
    req.Headers.Authorization = new AuthenticationHeaderValue("Bearer", token);

    var res = await _http.SendAsync(req);
    if (res.StatusCode == System.Net.HttpStatusCode.Unauthorized)
        throw new Exception("Unauthorized");

    var txt = await res.Content.ReadAsStringAsync();
    if (!res.IsSuccessStatusCode)
    {
        throw new Exception(txt);
    }

    var user = JsonSerializer.Deserialize<CCT_USCF.Models.CurrentUser>(txt, new JsonSerializerOptions { PropertyNameCaseInsensitive = true });
    return user;
}

// Create a Holy Word post (content required). Optional audio file path and trims.
public async Task<bool> PostHolyWordAsync(string content, string? caption, string? audioFilePath, double? trimStart, double? trimEnd)
{
    var token = await TokenStorage.GetTokenAsync();
    if (string.IsNullOrEmpty(token)) throw new Exception("Not authenticated");

    using var form = new MultipartFormDataContent();
    form.Add(new StringContent(content), "content");
    if (!string.IsNullOrEmpty(caption)) form.Add(new StringContent(caption), "caption");
    if (trimStart.HasValue) form.Add(new StringContent(trimStart.Value.ToString(System.Globalization.CultureInfo.InvariantCulture)), "trimStart");
    if (trimEnd.HasValue) form.Add(new StringContent(trimEnd.Value.ToString(System.Globalization.CultureInfo.InvariantCulture)), "trimEnd");

    if (!string.IsNullOrEmpty(audioFilePath) && System.IO.File.Exists(audioFilePath))
    {
        var stream = System.IO.File.OpenRead(audioFilePath);
        var fileContent = new StreamContent(stream);
        fileContent.Headers.ContentType = new System.Net.Http.Headers.MediaTypeHeaderValue("application/octet-stream");
        form.Add(fileContent, "file", Path.GetFileName(audioFilePath));
    }

    using var req = new HttpRequestMessage(HttpMethod.Post, $"{_baseUrl}/api/posts") { Content = form };
    req.Headers.Authorization = new AuthenticationHeaderValue("Bearer", token);

    var res = await _http.SendAsync(req);
    var txt = await res.Content.ReadAsStringAsync();
    if (!res.IsSuccessStatusCode)
    {
        throw new Exception(txt);
    }

    return true;
}

}
