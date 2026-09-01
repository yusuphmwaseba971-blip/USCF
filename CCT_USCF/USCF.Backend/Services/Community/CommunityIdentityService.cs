using Microsoft.EntityFrameworkCore;
using USCF.Backend.Data;
using USCF.Backend.Models;
using USCF.Backend.Services.Identity;

namespace USCF.Backend.Services.Community;

public sealed class CommunityIdentityService
{
    private readonly IFirebaseTokenVerifier _firebaseTokenVerifier;
    private readonly IAppwriteUserGateway _appwriteUserGateway;
    private readonly USCFDbContext _db;

    public CommunityIdentityService(
        IFirebaseTokenVerifier firebaseTokenVerifier,
        IAppwriteUserGateway appwriteUserGateway,
        USCFDbContext db)
    {
        _firebaseTokenVerifier = firebaseTokenVerifier;
        _appwriteUserGateway = appwriteUserGateway;
        _db = db;
    }

    public async Task<AuthenticatedCommunityUser> RequireUserAsync(
        string firebaseIdToken,
        CancellationToken cancellationToken = default)
    {
        var identity = await _firebaseTokenVerifier.VerifyAsync(firebaseIdToken, cancellationToken);
        var mapping = await _db.FirebaseAppwriteIdentityMappings
            .SingleOrDefaultAsync(item => item.FirebaseUid == identity.FirebaseUid, cancellationToken);

        if (mapping == null)
        {
            var appwriteUserId = await _appwriteUserGateway.CreateUserAsync(identity, cancellationToken);
            mapping = new FirebaseAppwriteIdentityMapping
            {
                FirebaseUid = identity.FirebaseUid,
                AppwriteUserId = appwriteUserId,
                FirebaseProjectId = identity.ProjectId,
                Email = identity.Email,
                DisplayName = identity.DisplayName,
                CreatedAtUtc = DateTime.UtcNow,
                UpdatedAtUtc = DateTime.UtcNow
            };

            _db.FirebaseAppwriteIdentityMappings.Add(mapping);

            try
            {
                await _db.SaveChangesAsync(cancellationToken);
            }
            catch (DbUpdateException)
            {
                mapping = await _db.FirebaseAppwriteIdentityMappings
                    .SingleAsync(item => item.FirebaseUid == identity.FirebaseUid, cancellationToken);
            }
        }

        var normalizedEmail = (mapping.Email ?? identity.Email)?.Trim().ToLowerInvariant();
        if (string.IsNullOrWhiteSpace(normalizedEmail))
            throw new UnauthorizedAccessException("A server-side CCT membership record is required.");

        var user = await _db.Users
            .AsNoTracking()
            .SingleOrDefaultAsync(
                item => item.Email.ToLower() == normalizedEmail && item.IsActive,
                cancellationToken);

        if (user == null)
            throw new UnauthorizedAccessException("A server-side CCT membership record is required.");

        return new AuthenticatedCommunityUser(identity, mapping, user);
    }
}
