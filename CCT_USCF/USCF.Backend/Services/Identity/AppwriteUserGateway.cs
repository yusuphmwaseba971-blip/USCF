using Appwrite;
using USCF.Backend.Services.Appwrite;

namespace USCF.Backend.Services.Identity;

public sealed class AppwriteUserGateway : IAppwriteUserGateway
{
    private readonly AppwriteService _appwriteService;

    public AppwriteUserGateway(AppwriteService appwriteService)
    {
        _appwriteService = appwriteService;
    }

    public async Task<string> CreateUserAsync(
        VerifiedFirebaseIdentity identity,
        CancellationToken cancellationToken = default)
    {
        var appwriteUser = await _appwriteService.Users.Create(
            userId: ID.Unique(),
            email: NormalizeEmail(identity),
            phone: null,
            password: null,
            name: NormalizeName(identity));

        return appwriteUser.Id;
    }

    private static string NormalizeEmail(VerifiedFirebaseIdentity identity)
    {
        if (!string.IsNullOrWhiteSpace(identity.Email))
            return identity.Email.Trim().ToLowerInvariant();

        var sanitizedUid = new string(identity.FirebaseUid
            .Where(c => char.IsLetterOrDigit(c) || c == '.' || c == '_' || c == '-')
            .ToArray());

        if (string.IsNullOrWhiteSpace(sanitizedUid))
            sanitizedUid = "firebase-user";

        return $"{sanitizedUid}@firebase.cct-uscf.invalid".ToLowerInvariant();
    }

    private static string NormalizeName(VerifiedFirebaseIdentity identity)
    {
        if (!string.IsNullOrWhiteSpace(identity.DisplayName))
            return identity.DisplayName.Trim();

        return $"Firebase user {identity.FirebaseUid}";
    }
}
