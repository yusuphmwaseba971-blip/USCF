using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Logging.Abstractions;
using USCF.Backend.Controllers;
using USCF.Backend.Data;
using USCF.Backend.Models;
using USCF.Backend.Services.Identity;

namespace USCF.Backend.Tests;

public sealed class FirebaseIdentityBridgeTests
{
    [Fact]
    public async Task ValidFirebaseTokenCreatesAppwriteMapping()
    {
        await using var db = CreateDbContext();
        var verifier = new FakeFirebaseTokenVerifier(
            new VerifiedFirebaseIdentity("firebase-uid-1", "cct-uscf", "user@example.com", "Test User"));
        var appwrite = new FakeAppwriteUserGateway("appwrite-user-1");
        var service = CreateService(db, verifier, appwrite);

        var response = await service.BridgeAsync("valid-token");

        Assert.True(response.Success);
        Assert.Equal("firebase-uid-1", response.FirebaseUid);
        Assert.Equal("appwrite-user-1", response.AppwriteUserId);
        Assert.Equal(1, appwrite.CreateCalls);
        Assert.Equal(1, await db.FirebaseAppwriteIdentityMappings.CountAsync());
    }

    [Fact]
    public async Task MissingBearerTokenReturnsUnauthorized()
    {
        await using var db = CreateDbContext();
        var controller = CreateController(db, new FakeFirebaseTokenVerifier(
            new VerifiedFirebaseIdentity("firebase-uid-1", "cct-uscf", null, null)));

        var result = await controller.BridgeFirebaseIdentity(CancellationToken.None);

        Assert.IsType<UnauthorizedObjectResult>(result);
    }

    [Theory]
    [InlineData("invalid-token")]
    [InlineData("expired-token")]
    [InlineData("tampered-token")]
    [InlineData("wrong-project-token")]
    [InlineData("firebase-uid-only")]
    public async Task UnverifiedFirebaseTokenReturnsUnauthorized(string token)
    {
        await using var db = CreateDbContext();
        var controller = CreateController(
            db,
            FakeFirebaseTokenVerifier.Rejecting("Token did not verify."));
        controller.ControllerContext.HttpContext.Request.Headers.Authorization = $"Bearer {token}";

        var result = await controller.BridgeFirebaseIdentity(CancellationToken.None);

        Assert.IsType<UnauthorizedObjectResult>(result);
    }

    [Fact]
    public async Task ExistingFirebaseUserMappingIsReused()
    {
        await using var db = CreateDbContext();
        db.FirebaseAppwriteIdentityMappings.Add(new FirebaseAppwriteIdentityMapping
        {
            FirebaseUid = "firebase-uid-existing",
            AppwriteUserId = "appwrite-user-existing",
            FirebaseProjectId = "cct-uscf"
        });
        await db.SaveChangesAsync();

        var verifier = new FakeFirebaseTokenVerifier(
            new VerifiedFirebaseIdentity("firebase-uid-existing", "cct-uscf", null, null));
        var appwrite = new FakeAppwriteUserGateway("should-not-create");
        var service = CreateService(db, verifier, appwrite);

        var response = await service.BridgeAsync("valid-token");

        Assert.Equal("appwrite-user-existing", response.AppwriteUserId);
        Assert.Equal(0, appwrite.CreateCalls);
        Assert.Equal(1, await db.FirebaseAppwriteIdentityMappings.CountAsync());
    }

    [Fact]
    public async Task NewFirebaseUserCreatesMapping()
    {
        await using var db = CreateDbContext();
        var verifier = new FakeFirebaseTokenVerifier(
            new VerifiedFirebaseIdentity("firebase-uid-new", "cct-uscf", null, "New User"));
        var appwrite = new FakeAppwriteUserGateway("appwrite-user-new");
        var service = CreateService(db, verifier, appwrite);

        var response = await service.BridgeAsync("valid-token");

        Assert.Equal("appwrite-user-new", response.AppwriteUserId);
        Assert.Equal(1, appwrite.CreateCalls);
        Assert.Equal(1, await db.FirebaseAppwriteIdentityMappings.CountAsync(
            mapping => mapping.FirebaseUid == "firebase-uid-new"));
    }

    [Fact]
    public async Task RepeatedRequestForSameFirebaseIdentityDoesNotDuplicateAppwriteUsers()
    {
        await using var db = CreateDbContext();
        var verifier = new FakeFirebaseTokenVerifier(
            new VerifiedFirebaseIdentity("firebase-uid-repeat", "cct-uscf", "repeat@example.com", null));
        var appwrite = new FakeAppwriteUserGateway("appwrite-user-repeat");
        var service = CreateService(db, verifier, appwrite);

        var first = await service.BridgeAsync("valid-token");
        var second = await service.BridgeAsync("valid-token");
        var third = await service.BridgeAsync("valid-token");

        Assert.Equal(first.AppwriteUserId, second.AppwriteUserId);
        Assert.Equal(second.AppwriteUserId, third.AppwriteUserId);
        Assert.Equal(1, appwrite.CreateCalls);
        Assert.Equal(1, await db.FirebaseAppwriteIdentityMappings.CountAsync());
    }

    private static IdentityController CreateController(
        USCFDbContext db,
        IFirebaseTokenVerifier verifier)
    {
        var service = CreateService(db, verifier, new FakeAppwriteUserGateway("appwrite-user"));
        var controller = new IdentityController(
            service,
            NullLogger<IdentityController>.Instance)
        {
            ControllerContext = new ControllerContext
            {
                HttpContext = new DefaultHttpContext()
            }
        };

        return controller;
    }

    private static FirebaseIdentityBridgeService CreateService(
        USCFDbContext db,
        IFirebaseTokenVerifier verifier,
        IAppwriteUserGateway appwrite)
    {
        return new FirebaseIdentityBridgeService(
            verifier,
            appwrite,
            db,
            NullLogger<FirebaseIdentityBridgeService>.Instance);
    }

    private static USCFDbContext CreateDbContext()
    {
        var options = new DbContextOptionsBuilder<USCFDbContext>()
            .UseInMemoryDatabase(Guid.NewGuid().ToString())
            .Options;

        return new USCFDbContext(options);
    }

    private sealed class FakeFirebaseTokenVerifier : IFirebaseTokenVerifier
    {
        private readonly VerifiedFirebaseIdentity? _identity;
        private readonly string? _error;

        public FakeFirebaseTokenVerifier(VerifiedFirebaseIdentity identity)
        {
            _identity = identity;
        }

        private FakeFirebaseTokenVerifier(string error)
        {
            _error = error;
        }

        public static FakeFirebaseTokenVerifier Rejecting(string error) => new(error);

        public Task<VerifiedFirebaseIdentity> VerifyAsync(
            string firebaseIdToken,
            CancellationToken cancellationToken = default)
        {
            if (_error != null)
                throw new FirebaseTokenVerificationException(_error);

            return Task.FromResult(_identity!);
        }
    }

    private sealed class FakeAppwriteUserGateway : IAppwriteUserGateway
    {
        private readonly string _appwriteUserId;

        public FakeAppwriteUserGateway(string appwriteUserId)
        {
            _appwriteUserId = appwriteUserId;
        }

        public int CreateCalls { get; private set; }

        public Task<string> CreateUserAsync(
            VerifiedFirebaseIdentity identity,
            CancellationToken cancellationToken = default)
        {
            CreateCalls++;
            return Task.FromResult(_appwriteUserId);
        }
    }
}
