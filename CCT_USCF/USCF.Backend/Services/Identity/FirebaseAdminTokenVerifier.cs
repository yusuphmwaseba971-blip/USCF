using FirebaseAdmin;
using FirebaseAdmin.Auth;
using Google.Apis.Auth.OAuth2;

namespace USCF.Backend.Services.Identity;

public sealed class FirebaseAdminTokenVerifier : IFirebaseTokenVerifier
{
    private readonly FirebaseAuth _firebaseAuth;
    private readonly string _projectId;
    private readonly ILogger<FirebaseAdminTokenVerifier> _logger;

    public FirebaseAdminTokenVerifier(
        IConfiguration configuration,
        ILogger<FirebaseAdminTokenVerifier> logger)
    {
        _logger = logger;
        _projectId = configuration["Firebase:ProjectId"]
            ?? throw new InvalidOperationException(
                "Firebase:ProjectId is not configured.");

        _firebaseAuth = FirebaseAuth.GetAuth(CreateOrGetFirebaseApp(configuration, _projectId));
    }

    public async Task<VerifiedFirebaseIdentity> VerifyAsync(
        string firebaseIdToken,
        CancellationToken cancellationToken = default)
    {
        if (string.IsNullOrWhiteSpace(firebaseIdToken))
            throw new FirebaseTokenVerificationException("Firebase ID token is required.");

        try
        {
            var decodedToken = await _firebaseAuth.VerifyIdTokenAsync(
                firebaseIdToken,
                checkRevoked: false,
                cancellationToken);

            if (string.IsNullOrWhiteSpace(decodedToken.Uid))
                throw new FirebaseTokenVerificationException("Verified Firebase token did not contain a UID.");

            var tokenProjectId = GetStringClaim(decodedToken, "aud");
            if (!string.Equals(tokenProjectId, _projectId, StringComparison.Ordinal))
                throw new FirebaseTokenVerificationException("Firebase token project did not match the configured project.");

            _logger.LogInformation(
                "Firebase token verification succeeded for UID {FirebaseUid}.",
                decodedToken.Uid);

            return new VerifiedFirebaseIdentity(
                decodedToken.Uid,
                _projectId,
                GetStringClaim(decodedToken, "email"),
                GetStringClaim(decodedToken, "name"));
        }
        catch (FirebaseTokenVerificationException)
        {
            throw;
        }
        catch (Exception ex)
        {
            _logger.LogWarning(
                ex,
                "Firebase token verification failed: {ErrorType}.",
                ex.GetType().Name);

            throw new FirebaseTokenVerificationException(
                "Firebase ID token verification failed.",
                ex);
        }
    }

    private static FirebaseApp CreateOrGetFirebaseApp(
        IConfiguration configuration,
        string projectId)
    {
        const string appName = "CCT-USCF-IdentityBridge";

        var existing = FirebaseApp.GetInstance(appName);
        if (existing != null)
            return existing;

        var serviceAccountPath = configuration["Firebase:ServiceAccountPath"];
        var serviceAccountJson = configuration["Firebase:ServiceAccountJson"];

        GoogleCredential? credential = null;
        if (!string.IsNullOrWhiteSpace(serviceAccountJson))
            credential = GoogleCredential.FromJson(serviceAccountJson);
        else if (!string.IsNullOrWhiteSpace(serviceAccountPath))
            credential = GoogleCredential.FromFile(serviceAccountPath);

        return FirebaseApp.Create(
            new AppOptions
            {
                ProjectId = projectId,
                Credential = credential
            },
            appName);
    }

    private static string? GetStringClaim(FirebaseToken decodedToken, string claimName)
    {
        if (decodedToken.Claims.TryGetValue(claimName, out var claim) && claim != null)
            return claim.ToString();

        return null;
    }
}
