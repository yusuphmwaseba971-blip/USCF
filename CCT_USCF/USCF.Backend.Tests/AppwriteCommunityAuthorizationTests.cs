using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Logging.Abstractions;
using USCF.Backend.Data;
using USCF.Backend.DTOs.Community;
using USCF.Backend.Models;
using USCF.Backend.Services.Community;
using USCF.Backend.Services.Identity;

namespace USCF.Backend.Tests;

public sealed class AppwriteCommunityAuthorizationTests
{
    [Fact]
    public async Task Phase5_ValidOrganizationResolvesToStableTeam()
    {
        await using var db = CreateDb();
        db.Branches.Add(new Branch { Id = 10, Name = "Branch X", DistrictId = 1, RegionId = 1 });
        await db.SaveChangesAsync();

        var gateway = new FakeAppwriteCommunityGateway();
        var resolver = new AppwriteTeamResolverService(db, gateway);
        var context = new CctOrganizationContext("Branch", 10, "Branch X");

        var first = await resolver.ResolveTeamAsync(context);
        var second = await resolver.ResolveTeamAsync(context);

        Assert.Equal("cct-branch-10", first.AppwriteTeamId);
        Assert.Equal(first.Id, second.Id);
        Assert.Equal(1, await db.AppwriteTeamMappings.CountAsync());
        Assert.Equal(1, gateway.CreatedTeams.Count);
    }

    [Fact]
    public async Task Phase6_MembershipSynchronizationIsExplicitAndIdempotent()
    {
        await using var db = CreateDb();
        SeedOrganizations(db);
        var userA = SeedUser(db, "a@example.com", branchId: 10, districtId: 1, regionId: 1);
        var userB = SeedUser(db, "b@example.com", branchId: 20, districtId: 2, regionId: 2);
        var userC = SeedUser(db, "c@example.com", branchId: null, districtId: null, regionId: null);
        await db.SaveChangesAsync();

        var gateway = new FakeAppwriteCommunityGateway();
        var authz = new CctOrganizationAuthorizationService(db);
        var resolver = new AppwriteTeamResolverService(db, gateway);
        var sync = new AppwriteMembershipSynchronizationService(db, authz, resolver, gateway);

        await sync.SynchronizeAsync(MakeCommunityUser("firebase-a", "appwrite-a", "a@example.com", userA));
        await sync.SynchronizeAsync(MakeCommunityUser("firebase-a", "appwrite-a", "a@example.com", userA));
        await sync.SynchronizeAsync(MakeCommunityUser("firebase-b", "appwrite-b", "b@example.com", userB));
        await sync.SynchronizeAsync(MakeCommunityUser("firebase-c", "appwrite-c", "c@example.com", userC));

        Assert.Contains(("cct-branch-10", "appwrite-a"), gateway.Memberships);
        Assert.DoesNotContain(("cct-branch-20", "appwrite-a"), gateway.Memberships);
        Assert.Contains(("cct-branch-20", "appwrite-b"), gateway.Memberships);
        Assert.DoesNotContain(gateway.Memberships, item => item.Item2 == "appwrite-c");
        Assert.Equal(gateway.Memberships.Count, gateway.Memberships.Distinct().Count());
    }

    [Fact]
    public async Task Phase6_RemovesMembershipWhenAuthoritativeMembershipChanges()
    {
        await using var db = CreateDb();
        SeedOrganizations(db);
        var user = SeedUser(db, "a@example.com", branchId: 10, districtId: null, regionId: null);
        await db.SaveChangesAsync();

        var gateway = new FakeAppwriteCommunityGateway();
        var authz = new CctOrganizationAuthorizationService(db);
        var resolver = new AppwriteTeamResolverService(db, gateway);
        var sync = new AppwriteMembershipSynchronizationService(db, authz, resolver, gateway);
        var communityUser = MakeCommunityUser("firebase-a", "appwrite-a", "a@example.com", user);

        await sync.SynchronizeAsync(communityUser);
        Assert.Contains(("cct-branch-10", "appwrite-a"), gateway.Memberships);

        user.BranchId = null;
        db.Users.Update(user);
        await db.SaveChangesAsync();

        var changedUser = await db.Users.AsNoTracking().SingleAsync(item => item.Email == "a@example.com");
        await sync.SynchronizeAsync(MakeCommunityUser("firebase-a", "appwrite-a", "a@example.com", changedUser));

        Assert.DoesNotContain(("cct-branch-10", "appwrite-a"), gateway.Memberships);
        Assert.Contains(await db.AppwriteTeamMemberships.ToListAsync(), item => !item.IsActive);
    }

    [Fact]
    public async Task Phase8_GroupMessageCreationUsesServerMembershipAndTeamReadPermissionOnly()
    {
        await using var db = CreateDb();
        SeedOrganizations(db);
        var userA = SeedUser(db, "a@example.com", branchId: 10, districtId: null, regionId: null);
        var userC = SeedUser(db, "c@example.com", branchId: 20, districtId: null, regionId: null);
        await db.SaveChangesAsync();

        var gateway = new FakeAppwriteCommunityGateway();
        var authz = new CctOrganizationAuthorizationService(db);
        var resolver = new AppwriteTeamResolverService(db, gateway);
        var sync = new AppwriteMembershipSynchronizationService(db, authz, resolver, gateway);
        var messages = new GroupMessageService(authz, sync, gateway);

        var created = await messages.CreateAsync(
            MakeCommunityUser("firebase-a", "appwrite-a", "a@example.com", userA),
            new CreateGroupMessageRequest
            {
                CommunityId = "10",
                OrganizationalLevel = "Branch",
                BranchId = 10,
                Content = "TEST MESSAGE A"
            });

        Assert.Equal("firebase-a", created.SenderUid);
        Assert.Equal("cct-branch-10", created.AppwriteTeamId);
        var permission = Assert.Single(gateway.CreatedMessages.Single().Permissions);
        Assert.Equal("read(\"team:cct-branch-10\")", permission);
        Assert.DoesNotContain("any", permission, StringComparison.OrdinalIgnoreCase);

        await Assert.ThrowsAsync<UnauthorizedAccessException>(() => messages.CreateAsync(
            MakeCommunityUser("firebase-c", "appwrite-c", "c@example.com", userC),
            new CreateGroupMessageRequest
            {
                CommunityId = "10",
                OrganizationalLevel = "Branch",
                BranchId = 10,
                Content = "blocked"
            }));
    }

    [Fact]
    public async Task Phase8_GroupMessageReadsAreIsolatedByServerAuthorization()
    {
        await using var db = CreateDb();
        SeedOrganizations(db);
        var userA = SeedUser(db, "a@example.com", branchId: 10, districtId: null, regionId: null);
        var userB = SeedUser(db, "b@example.com", branchId: 10, districtId: null, regionId: null);
        var userC = SeedUser(db, "c@example.com", branchId: 20, districtId: null, regionId: null);
        var userD = SeedUser(db, "d@example.com", branchId: null, districtId: null, regionId: null);
        await db.SaveChangesAsync();

        var gateway = new FakeAppwriteCommunityGateway();
        var authz = new CctOrganizationAuthorizationService(db);
        var resolver = new AppwriteTeamResolverService(db, gateway);
        var sync = new AppwriteMembershipSynchronizationService(db, authz, resolver, gateway);
        var messages = new GroupMessageService(authz, sync, gateway);
        var requestX = new ResolveTeamRequest { CommunityId = "10", OrganizationalLevel = "Branch", BranchId = 10 };
        var requestY = new ResolveTeamRequest { CommunityId = "20", OrganizationalLevel = "Branch", BranchId = 20 };

        await messages.CreateAsync(
            MakeCommunityUser("firebase-a", "appwrite-a", "a@example.com", userA),
            new CreateGroupMessageRequest { CommunityId = "10", OrganizationalLevel = "Branch", BranchId = 10, Content = "A to X" });

        var teamXMessages = await messages.ListAsync(MakeCommunityUser("firebase-b", "appwrite-b", "b@example.com", userB), requestX, 100);
        Assert.Single(teamXMessages);

        await Assert.ThrowsAsync<UnauthorizedAccessException>(() => messages.ListAsync(MakeCommunityUser("firebase-c", "appwrite-c", "c@example.com", userC), requestX, 100));
        await Assert.ThrowsAsync<UnauthorizedAccessException>(() => messages.ListAsync(MakeCommunityUser("firebase-d", "appwrite-d", "d@example.com", userD), requestX, 100));
        await Assert.ThrowsAsync<UnauthorizedAccessException>(() => messages.ListAsync(MakeCommunityUser("firebase-a", "appwrite-a", "a@example.com", userA), requestY, 100));
    }

    [Fact]
    public async Task Phase8_GroupMessageAuthorizationMatrixEnforcesMembershipIsolationAndSenderAuthority()
    {
        await using var db = CreateDb();
        SeedOrganizations(db);
        var userA = SeedUser(db, "a@example.com", branchId: 10, districtId: null, regionId: null);
        var userB = SeedUser(db, "b@example.com", branchId: 10, districtId: null, regionId: null);
        var userC = SeedUser(db, "c@example.com", branchId: 20, districtId: null, regionId: null);
        var userD = SeedUser(db, "d@example.com", branchId: null, districtId: null, regionId: null);
        await db.SaveChangesAsync();

        var gateway = new FakeAppwriteCommunityGateway();
        var authz = new CctOrganizationAuthorizationService(db);
        var resolver = new AppwriteTeamResolverService(db, gateway);
        var sync = new AppwriteMembershipSynchronizationService(db, authz, resolver, gateway);
        var messages = new GroupMessageService(authz, sync, gateway);
        var communityA = MakeCommunityUser("firebase-a", "appwrite-a", "a@example.com", userA);
        var communityB = MakeCommunityUser("firebase-b", "appwrite-b", "b@example.com", userB);
        var communityC = MakeCommunityUser("firebase-c", "appwrite-c", "c@example.com", userC);
        var communityD = MakeCommunityUser("firebase-d", "appwrite-d", "d@example.com", userD);
        var requestX = new ResolveTeamRequest { CommunityId = "10", OrganizationalLevel = "Branch", BranchId = 10 };
        var requestY = new ResolveTeamRequest { CommunityId = "20", OrganizationalLevel = "Branch", BranchId = 20 };

        var first = await messages.CreateAsync(
            communityA,
            new CreateGroupMessageRequest
            {
                CommunityId = "10",
                OrganizationalLevel = "Branch",
                BranchId = 10,
                Content = "TEST MESSAGE A"
            });

        Assert.Equal("firebase-a", first.SenderUid);
        Assert.Equal("cct-branch-10", first.AppwriteTeamId);
        Assert.Equal("10", first.CommunityId);
        Assert.Single(gateway.CreatedMessages);

        var second = await messages.CreateAsync(
            communityA,
            new CreateGroupMessageRequest
            {
                CommunityId = "10",
                OrganizationalLevel = "Branch",
                BranchId = 10,
                Content = "TEST MESSAGE A"
            });

        Assert.NotEqual(first.MessageId, second.MessageId);
        Assert.Equal(2, gateway.CreatedMessages.Count);

        var teamXMessagesForB = await messages.ListAsync(communityB, requestX, 100);
        Assert.Equal(2, teamXMessagesForB.Count);

        await messages.CreateAsync(
            communityC,
            new CreateGroupMessageRequest
            {
                CommunityId = "20",
                OrganizationalLevel = "Branch",
                BranchId = 20,
                Content = "TEST MESSAGE C"
            });

        await Assert.ThrowsAsync<UnauthorizedAccessException>(() => messages.ListAsync(communityC, requestX, 100));
        await Assert.ThrowsAsync<UnauthorizedAccessException>(() => messages.ListAsync(communityD, requestX, 100));
        await Assert.ThrowsAsync<UnauthorizedAccessException>(() => messages.CreateAsync(
            communityC,
            new CreateGroupMessageRequest { CommunityId = "10", OrganizationalLevel = "Branch", BranchId = 10, Content = "blocked" }));
        await Assert.ThrowsAsync<UnauthorizedAccessException>(() => messages.CreateAsync(
            communityD,
            new CreateGroupMessageRequest { CommunityId = "10", OrganizationalLevel = "Branch", BranchId = 10, Content = "blocked" }));
        await Assert.ThrowsAsync<UnauthorizedAccessException>(() => messages.CreateAsync(
            communityA,
            new CreateGroupMessageRequest { CommunityId = "20", OrganizationalLevel = "Branch", BranchId = 20, Content = "tamper" }));
        await Assert.ThrowsAsync<UnauthorizedAccessException>(() => messages.CreateAsync(
            communityA,
            new CreateGroupMessageRequest { CommunityId = "20", OrganizationalLevel = "Branch", BranchId = 10, Content = "mismatched tamper" }));
        await Assert.ThrowsAsync<UnauthorizedAccessException>(() => messages.CreateAsync(
            communityC,
            new CreateGroupMessageRequest { CommunityId = "10", OrganizationalLevel = "Branch", BranchId = 20, Content = "mismatched claim" }));

        Assert.Equal(3, gateway.CreatedMessages.Count);
        Assert.All(gateway.CreatedMessages, message =>
        {
            var permission = Assert.Single(message.Permissions);
            Assert.StartsWith("read(\"team:cct-branch-", permission, StringComparison.Ordinal);
            Assert.DoesNotContain("any", permission, StringComparison.OrdinalIgnoreCase);
            Assert.DoesNotContain("update", permission, StringComparison.OrdinalIgnoreCase);
            Assert.DoesNotContain("delete", permission, StringComparison.OrdinalIgnoreCase);
        });

        var teamXMessagesForA = await messages.ListAsync(communityA, requestX, 100);
        var teamYMessagesForC = await messages.ListAsync(communityC, requestY, 100);
        Assert.Equal(2, teamXMessagesForA.Count);
        Assert.Single(teamYMessagesForC);
        Assert.DoesNotContain(teamXMessagesForA, message => message.CommunityId == "20");
        Assert.DoesNotContain(teamYMessagesForC, message => message.CommunityId == "10");
    }
    private static USCFDbContext CreateDb()
    {
        var options = new DbContextOptionsBuilder<USCFDbContext>()
            .UseInMemoryDatabase(Guid.NewGuid().ToString("N"))
            .Options;
        return new USCFDbContext(options);
    }

    private static void SeedOrganizations(USCFDbContext db)
    {
        db.Regions.AddRange(
            new Region { Id = 1, Name = "Region X" },
            new Region { Id = 2, Name = "Region Y" });
        db.Districts.AddRange(
            new District { Id = 1, Name = "District X", RegionId = 1 },
            new District { Id = 2, Name = "District Y", RegionId = 2 });
        db.Branches.AddRange(
            new Branch { Id = 10, Name = "Branch X", DistrictId = 1, RegionId = 1 },
            new Branch { Id = 20, Name = "Branch Y", DistrictId = 2, RegionId = 2 });
    }

    private static User SeedUser(USCFDbContext db, string email, int? branchId, int? districtId, int? regionId)
    {
        var user = new User
        {
            Id = Guid.NewGuid(),
            FullName = email,
            Username = email.Replace("@", "-"),
            Email = email,
            PasswordHash = "test",
            BranchId = branchId,
            DistrictId = districtId,
            RegionId = regionId,
            IsActive = true
        };
        db.Users.Add(user);
        return user;
    }

    private static AuthenticatedCommunityUser MakeCommunityUser(
        string firebaseUid,
        string appwriteUserId,
        string email,
        User user)
    {
        return new AuthenticatedCommunityUser(
            new VerifiedFirebaseIdentity(firebaseUid, "cct-uscf", email, user.FullName),
            new FirebaseAppwriteIdentityMapping
            {
                FirebaseUid = firebaseUid,
                AppwriteUserId = appwriteUserId,
                FirebaseProjectId = "cct-uscf",
                Email = email,
                DisplayName = user.FullName
            },
            user);
    }

    private sealed class FakeAppwriteCommunityGateway : IAppwriteCommunityGateway
    {
        public HashSet<string> CreatedTeams { get; } = new(StringComparer.Ordinal);
        public HashSet<(string, string)> Memberships { get; } = new();
        public List<AppwriteGroupMessageRecord> CreatedMessages { get; } = new();

        public Task EnsureTeamAsync(string teamId, string name, CancellationToken cancellationToken = default)
        {
            CreatedTeams.Add(teamId);
            return Task.CompletedTask;
        }

        public Task EnsureTeamMembershipAsync(string teamId, string appwriteUserId, string? email, CancellationToken cancellationToken = default)
        {
            Memberships.Add((teamId, appwriteUserId));
            return Task.CompletedTask;
        }

        public Task RemoveTeamMembershipAsync(string teamId, string appwriteUserId, CancellationToken cancellationToken = default)
        {
            Memberships.Remove((teamId, appwriteUserId));
            return Task.CompletedTask;
        }

        public Task<AppwriteGroupMessageRecord> CreateGroupMessageAsync(AppwriteGroupMessageRecord message, CancellationToken cancellationToken = default)
        {
            message.Id = message.MessageId;
            message.Permissions = [$"read(\"team:{message.AppwriteTeamId}\")"];
            CreatedMessages.Add(message);
            return Task.FromResult(message);
        }

        public Task<IReadOnlyList<AppwriteGroupMessageRecord>> ListGroupMessagesAsync(string organizationType, int organizationId, int limit, CancellationToken cancellationToken = default)
        {
            var messages = CreatedMessages
                .Where(message => message.OrganizationType == organizationType && message.OrganizationId == organizationId)
                .Take(limit)
                .ToList();
            return Task.FromResult<IReadOnlyList<AppwriteGroupMessageRecord>>(messages);
        }
    }
}
