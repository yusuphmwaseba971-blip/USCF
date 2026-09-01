using Microsoft.EntityFrameworkCore;
using USCF.Backend.Data;
using USCF.Backend.DTOs.Identity;
using USCF.Backend.Models;

namespace USCF.Backend.Services.Identity;

public sealed class FirebaseIdentityBridgeService
{
    private readonly IFirebaseTokenVerifier _firebaseTokenVerifier;
    private readonly IAppwriteUserGateway _appwriteUserGateway;
    private readonly USCFDbContext _db;
    private readonly ILogger<FirebaseIdentityBridgeService> _logger;

    public FirebaseIdentityBridgeService(
        IFirebaseTokenVerifier firebaseTokenVerifier,
        IAppwriteUserGateway appwriteUserGateway,
        USCFDbContext db,
        ILogger<FirebaseIdentityBridgeService> logger)
    {
        _firebaseTokenVerifier = firebaseTokenVerifier;
        _appwriteUserGateway = appwriteUserGateway;
        _db = db;
        _logger = logger;
    }

    public async Task<FirebaseIdentityBridgeResponse> BridgeAsync(
        string firebaseIdToken,
        CancellationToken cancellationToken = default)
    {
        var identity = await _firebaseTokenVerifier.VerifyAsync(
            firebaseIdToken,
            cancellationToken);

        var existingMapping = await FindMappingAsync(
            identity.FirebaseUid,
            cancellationToken);

        if (existingMapping != null)
        {
            _logger.LogInformation(
                "Appwrite identity mapping found for Firebase UID {FirebaseUid}: {AppwriteUserId}.",
                identity.FirebaseUid,
                existingMapping.AppwriteUserId);

            return CreateResponse(existingMapping);
        }

        var appwriteUserId = await _appwriteUserGateway.CreateUserAsync(
            identity,
            cancellationToken);

        var mapping = new FirebaseAppwriteIdentityMapping
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
            var concurrentMapping = await FindMappingAsync(
                identity.FirebaseUid,
                cancellationToken);

            if (concurrentMapping != null)
            {
                _logger.LogInformation(
                    "Concurrent Appwrite identity mapping reused for Firebase UID {FirebaseUid}: {AppwriteUserId}.",
                    identity.FirebaseUid,
                    concurrentMapping.AppwriteUserId);

                return CreateResponse(concurrentMapping);
            }

            throw;
        }

        _logger.LogInformation(
            "Appwrite identity mapping created for Firebase UID {FirebaseUid}: {AppwriteUserId}.",
            identity.FirebaseUid,
            mapping.AppwriteUserId);

        return CreateResponse(mapping);
    }

    private Task<FirebaseAppwriteIdentityMapping?> FindMappingAsync(
        string firebaseUid,
        CancellationToken cancellationToken)
    {
        return _db.FirebaseAppwriteIdentityMappings
            .AsNoTracking()
            .SingleOrDefaultAsync(
                mapping => mapping.FirebaseUid == firebaseUid,
                cancellationToken);
    }

    private static FirebaseIdentityBridgeResponse CreateResponse(
        FirebaseAppwriteIdentityMapping mapping)
    {
        return new FirebaseIdentityBridgeResponse
        {
            Success = true,
            FirebaseUid = mapping.FirebaseUid,
            AppwriteUserId = mapping.AppwriteUserId
        };
    }
}
