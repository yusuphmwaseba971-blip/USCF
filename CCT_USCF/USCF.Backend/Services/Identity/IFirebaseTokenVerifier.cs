namespace USCF.Backend.Services.Identity;

public interface IFirebaseTokenVerifier
{
    Task<VerifiedFirebaseIdentity> VerifyAsync(
        string firebaseIdToken,
        CancellationToken cancellationToken = default);
}
