namespace USCF.Backend.Services.Identity;

public interface IAppwriteUserGateway
{
    Task<string> CreateUserAsync(
        VerifiedFirebaseIdentity identity,
        CancellationToken cancellationToken = default);
}
