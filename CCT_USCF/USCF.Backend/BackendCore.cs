using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Logging;

namespace USCF.Backend.Models
{
    public sealed class VerifiedFirebaseIdentity
    {
        public VerifiedFirebaseIdentity(string firebaseUid, string firebaseProjectId, string? email, string? displayName)
        {
            FirebaseUid = firebaseUid;
            FirebaseProjectId = firebaseProjectId;
            Email = email;
            DisplayName = displayName;
        }

        public string FirebaseUid { get; }
        public string FirebaseProjectId { get; }
        public string? Email { get; }
        public string? DisplayName { get; }
    }

    public interface IFirebaseTokenVerifier
    {
        Task<VerifiedFirebaseIdentity> VerifyAsync(string firebaseIdToken, CancellationToken cancellationToken = default);
    }

    public sealed class FirebaseTokenVerificationException : Exception
    {
        public FirebaseTokenVerificationException(string message)
            : base(message)
        {
        }
    }

    public interface IAppwriteUserGateway
    {
        Task<string> CreateUserAsync(VerifiedFirebaseIdentity identity, CancellationToken cancellationToken = default);
    }

    public sealed class FirebaseAppwriteIdentityMapping
    {
        [Key]
        public int Id { get; set; }

        [Required]
        public string FirebaseUid { get; set; } = string.Empty;

        [Required]
        public string FirebaseProjectId { get; set; } = string.Empty;

        [Required]
        public string AppwriteUserId { get; set; } = string.Empty;

        public string? Email { get; set; }
        public string? DisplayName { get; set; }
        public DateTime CreatedUtc { get; set; } = DateTime.UtcNow;
        public DateTime UpdatedUtc { get; set; } = DateTime.UtcNow;
    }

    public sealed class Region
    {
        [Key]
        public int Id { get; set; }

        [Required]
        public string Name { get; set; } = string.Empty;
    }

    public sealed class District
    {
        [Key]
        public int Id { get; set; }

        [Required]
        public string Name { get; set; } = string.Empty;

        public int RegionId { get; set; }
        public Region? Region { get; set; }
    }

    public sealed class Branch
    {
        [Key]
        public int Id { get; set; }

        [Required]
        public string Name { get; set; } = string.Empty;

        public int DistrictId { get; set; }
        public int RegionId { get; set; }
        public District? District { get; set; }
        public Region? Region { get; set; }
    }

    public sealed class User
    {
        [Key]
        public Guid Id { get; set; } = Guid.NewGuid();

        [Required]
        public string FullName { get; set; } = string.Empty;

        [Required]
        public string Username { get; set; } = string.Empty;

        [Required]
        public string Email { get; set; } = string.Empty;

        [Required]
        public string PasswordHash { get; set; } = string.Empty;

        public int? BranchId { get; set; }
        public int? DistrictId { get; set; }
        public int? RegionId { get; set; }
        public bool IsActive { get; set; } = true;
    }

    public sealed class AppwriteTeamMapping
    {
        [Key]
        public int Id { get; set; }

        [Required]
        public string OrganizationType { get; set; } = string.Empty;

        public int OrganizationId { get; set; }

        [Required]
        public string AppwriteTeamId { get; set; } = string.Empty;

        [Required]
        public string Name { get; set; } = string.Empty;

        public DateTime CreatedUtc { get; set; } = DateTime.UtcNow;
        public DateTime UpdatedUtc { get; set; } = DateTime.UtcNow;
    }

    public sealed class AppwriteTeamMembership
    {
        [Key]
        public int Id { get; set; }

        [Required]
        public string AppwriteUserId { get; set; } = string.Empty;

        [Required]
        public string AppwriteTeamId { get; set; } = string.Empty;

        public Guid? UserId { get; set; }
        public string? Email { get; set; }
        public bool IsActive { get; set; } = true;
        public DateTime LastSyncedUtc { get; set; } = DateTime.UtcNow;
    }

    public sealed class AppwriteTeamDetail
    {
        public int Id { get; set; }
        public string OrganizationType { get; set; } = string.Empty;
        public int OrganizationId { get; set; }
        public string AppwriteTeamId { get; set; } = string.Empty;
        public string Name { get; set; } = string.Empty;
    }

    public sealed class AuthenticatedCommunityUser
    {
        public AuthenticatedCommunityUser(VerifiedFirebaseIdentity identity, FirebaseAppwriteIdentityMapping identityMapping, User user)
        {
            Identity = identity;
            IdentityMapping = identityMapping;
            User = user;
        }

        public VerifiedFirebaseIdentity Identity { get; }
        public FirebaseAppwriteIdentityMapping IdentityMapping { get; }
        public User User { get; }
    }

    public sealed class CctOrganizationContext
    {
        public CctOrganizationContext(string organizationType, int organizationId, string organizationName)
        {
            OrganizationType = organizationType;
            OrganizationId = organizationId;
            OrganizationName = organizationName;
        }

        public string OrganizationType { get; }
        public int OrganizationId { get; }
        public string OrganizationName { get; }
    }

    public sealed class AppwriteGroupMessageRecord
    {
        public string Id { get; set; } = string.Empty;
        public string MessageId { get; set; } = string.Empty;
        public string SenderUid { get; set; } = string.Empty;
        public string SenderDisplayName { get; set; } = string.Empty;
        public string AppwriteTeamId { get; set; } = string.Empty;
        public string CommunityId { get; set; } = string.Empty;
        public string OrganizationType { get; set; } = string.Empty;
        public int OrganizationId { get; set; }
        public string Content { get; set; } = string.Empty;
        public List<string> Permissions { get; set; } = new();
        public DateTime CreatedAtUtc { get; set; } = DateTime.UtcNow;
    }
}

namespace USCF.Backend.Data
{
    public sealed class USCFDbContext : DbContext
    {
        public USCFDbContext(DbContextOptions<USCFDbContext> options)
            : base(options)
        {
        }

        public DbSet<USCF.Backend.Models.FirebaseAppwriteIdentityMapping> FirebaseAppwriteIdentityMappings { get; set; }
        public DbSet<USCF.Backend.Models.AppwriteTeamMapping> AppwriteTeamMappings { get; set; }
        public DbSet<USCF.Backend.Models.AppwriteTeamMembership> AppwriteTeamMemberships { get; set; }
        public DbSet<USCF.Backend.Models.Region> Regions { get; set; }
        public DbSet<USCF.Backend.Models.District> Districts { get; set; }
        public DbSet<USCF.Backend.Models.Branch> Branches { get; set; }
        public DbSet<USCF.Backend.Models.User> Users { get; set; }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<USCF.Backend.Models.FirebaseAppwriteIdentityMapping>()
                .HasIndex(x => new { x.FirebaseUid, x.FirebaseProjectId })
                .IsUnique();

            modelBuilder.Entity<USCF.Backend.Models.AppwriteTeamMapping>()
                .HasIndex(x => new { x.OrganizationType, x.OrganizationId })
                .IsUnique();

            modelBuilder.Entity<USCF.Backend.Models.AppwriteTeamMembership>()
                .HasIndex(x => new { x.AppwriteUserId, x.AppwriteTeamId })
                .IsUnique();
        }
    }
}

namespace USCF.Backend.DTOs.Community
{
    public sealed class CreateGroupMessageRequest
    {
        public string CommunityId { get; set; } = string.Empty;
        public string OrganizationalLevel { get; set; } = "Branch";
        public int? BranchId { get; set; }
        public int? DistrictId { get; set; }
        public int? RegionId { get; set; }
        public string Content { get; set; } = string.Empty;
    }

    public sealed class ResolveTeamRequest
    {
        public string CommunityId { get; set; } = string.Empty;
        public string OrganizationalLevel { get; set; } = "Branch";
        public int? BranchId { get; set; }
        public int? DistrictId { get; set; }
        public int? RegionId { get; set; }
    }
}

namespace USCF.Backend.Services.Identity
{
    public interface IAppwriteCommunityGateway
    {
        Task EnsureTeamAsync(string teamId, string name, CancellationToken cancellationToken = default);
        Task EnsureTeamMembershipAsync(string teamId, string appwriteUserId, string? email, CancellationToken cancellationToken = default);
        Task RemoveTeamMembershipAsync(string teamId, string appwriteUserId, CancellationToken cancellationToken = default);
        Task<USCF.Backend.Models.AppwriteGroupMessageRecord> CreateGroupMessageAsync(USCF.Backend.Models.AppwriteGroupMessageRecord message, CancellationToken cancellationToken = default);
        Task<IReadOnlyList<USCF.Backend.Models.AppwriteGroupMessageRecord>> ListGroupMessagesAsync(string organizationType, int organizationId, int limit, CancellationToken cancellationToken = default);
    }
}

namespace USCF.Backend.Services.Community
{
    public sealed class CctOrganizationAuthorizationService
    {
        private readonly USCF.Backend.Data.USCFDbContext _db;

        public CctOrganizationAuthorizationService(USCF.Backend.Data.USCFDbContext db)
        {
            _db = db;
        }

        public async Task<bool> CanAccessAsync(USCF.Backend.Models.AuthenticatedCommunityUser user, USCF.Backend.Models.CctOrganizationContext context, CancellationToken cancellationToken = default)
        {
            var type = Normalize(context.OrganizationType);
            if (type == "branch")
            {
                return user.User.BranchId.HasValue && user.User.BranchId.Value == context.OrganizationId;
            }

            if (type == "district")
            {
                return user.User.DistrictId.HasValue && user.User.DistrictId.Value == context.OrganizationId;
            }

            if (type == "region")
            {
                return user.User.RegionId.HasValue && user.User.RegionId.Value == context.OrganizationId;
            }

            return false;
        }

        public static string Normalize(string? value)
        {
            return (value ?? string.Empty).Trim();
        }
    }

    public sealed class AppwriteTeamResolverService
    {
        private readonly USCF.Backend.Data.USCFDbContext _db;
        private readonly USCF.Backend.Services.Identity.IAppwriteCommunityGateway _gateway;

        public AppwriteTeamResolverService(USCF.Backend.Data.USCFDbContext db, USCF.Backend.Services.Identity.IAppwriteCommunityGateway gateway)
        {
            _db = db;
            _gateway = gateway;
        }

        public async Task<USCF.Backend.Models.AppwriteTeamDetail> ResolveTeamAsync(USCF.Backend.Models.CctOrganizationContext context, CancellationToken cancellationToken = default)
        {
            var normalized = NormalizeType(context.OrganizationType);
            var existing = await _db.AppwriteTeamMappings
                .SingleOrDefaultAsync(item => item.OrganizationType == normalized && item.OrganizationId == context.OrganizationId, cancellationToken);

            if (existing is not null)
            {
                return new USCF.Backend.Models.AppwriteTeamDetail
                {
                    Id = existing.Id,
                    OrganizationType = existing.OrganizationType,
                    OrganizationId = existing.OrganizationId,
                    AppwriteTeamId = existing.AppwriteTeamId,
                    Name = existing.Name
                };
            }

            var teamId = $"cct-{normalized}-{context.OrganizationId}";
            var name = string.IsNullOrWhiteSpace(context.OrganizationName)
                ? $"{char.ToUpperInvariant(normalized[0])}{normalized[1..]} {context.OrganizationId}"
                : context.OrganizationName;

            await _gateway.EnsureTeamAsync(teamId, name, cancellationToken);

            var mapping = new USCF.Backend.Models.AppwriteTeamMapping
            {
                OrganizationType = normalized,
                OrganizationId = context.OrganizationId,
                AppwriteTeamId = teamId,
                Name = name,
                CreatedUtc = DateTime.UtcNow,
                UpdatedUtc = DateTime.UtcNow
            };

            _db.AppwriteTeamMappings.Add(mapping);
            await _db.SaveChangesAsync(cancellationToken);

            return new USCF.Backend.Models.AppwriteTeamDetail
            {
                Id = mapping.Id,
                OrganizationType = mapping.OrganizationType,
                OrganizationId = mapping.OrganizationId,
                AppwriteTeamId = mapping.AppwriteTeamId,
                Name = mapping.Name
            };
        }

        public static string NormalizeType(string? value)
        {
            var normalized = (value ?? string.Empty).Trim();
            if (normalized.Equals("Branch", StringComparison.OrdinalIgnoreCase)) return "branch";
            if (normalized.Equals("District", StringComparison.OrdinalIgnoreCase)) return "district";
            if (normalized.Equals("Region", StringComparison.OrdinalIgnoreCase)) return "region";
            return normalized.ToLowerInvariant();
        }
    }

    public sealed class AppwriteMembershipSynchronizationService
    {
        private readonly USCF.Backend.Data.USCFDbContext _db;
        private readonly CctOrganizationAuthorizationService _authz;
        private readonly AppwriteTeamResolverService _resolver;
        private readonly USCF.Backend.Services.Identity.IAppwriteCommunityGateway _gateway;

        public AppwriteMembershipSynchronizationService(
            USCF.Backend.Data.USCFDbContext db,
            CctOrganizationAuthorizationService authz,
            AppwriteTeamResolverService resolver,
            USCF.Backend.Services.Identity.IAppwriteCommunityGateway gateway)
        {
            _db = db;
            _authz = authz;
            _resolver = resolver;
            _gateway = gateway;
        }

        public async Task SynchronizeAsync(USCF.Backend.Models.AuthenticatedCommunityUser user, CancellationToken cancellationToken = default)
        {
            var branchId = user.User.BranchId;
            var existingMemberships = await _db.AppwriteTeamMemberships
                .Where(item => item.AppwriteUserId == user.IdentityMapping.AppwriteUserId)
                .ToListAsync(cancellationToken);

            if (!branchId.HasValue)
            {
                foreach (var membership in existingMemberships)
                {
                    membership.IsActive = false;
                    membership.LastSyncedUtc = DateTime.UtcNow;
                    await _gateway.RemoveTeamMembershipAsync(membership.AppwriteTeamId, membership.AppwriteUserId, cancellationToken);
                }

                await _db.SaveChangesAsync(cancellationToken);
                return;
            }

            var team = await _resolver.ResolveTeamAsync(new USCF.Backend.Models.CctOrganizationContext("Branch", branchId.Value, user.User.FullName), cancellationToken);
            await _gateway.EnsureTeamMembershipAsync(team.AppwriteTeamId, user.IdentityMapping.AppwriteUserId, user.IdentityMapping.Email ?? user.User.Email, cancellationToken);

            var desiredTeamSet = new HashSet<string>(StringComparer.Ordinal) { team.AppwriteTeamId };
            foreach (var membership in existingMemberships)
            {
                if (desiredTeamSet.Contains(membership.AppwriteTeamId))
                {
                    membership.IsActive = true;
                    membership.Email = user.IdentityMapping.Email ?? user.User.Email;
                    membership.LastSyncedUtc = DateTime.UtcNow;
                    membership.UserId = user.User.Id;
                    continue;
                }

                membership.IsActive = false;
                membership.LastSyncedUtc = DateTime.UtcNow;
                await _gateway.RemoveTeamMembershipAsync(membership.AppwriteTeamId, membership.AppwriteUserId, cancellationToken);
            }

            if (!existingMemberships.Any(item => item.AppwriteTeamId == team.AppwriteTeamId))
            {
                _db.AppwriteTeamMemberships.Add(new USCF.Backend.Models.AppwriteTeamMembership
                {
                    AppwriteUserId = user.IdentityMapping.AppwriteUserId,
                    AppwriteTeamId = team.AppwriteTeamId,
                    UserId = user.User.Id,
                    Email = user.IdentityMapping.Email ?? user.User.Email,
                    IsActive = true,
                    LastSyncedUtc = DateTime.UtcNow
                });
            }

            await _db.SaveChangesAsync(cancellationToken);
        }
    }

    public sealed class GroupMessageService
    {
        private readonly CctOrganizationAuthorizationService _authz;
        private readonly AppwriteMembershipSynchronizationService _sync;
        private readonly USCF.Backend.Services.Identity.IAppwriteCommunityGateway _gateway;

        public GroupMessageService(
            CctOrganizationAuthorizationService authz,
            AppwriteMembershipSynchronizationService sync,
            USCF.Backend.Services.Identity.IAppwriteCommunityGateway gateway)
        {
            _authz = authz;
            _sync = sync;
            _gateway = gateway;
        }

        public async Task<USCF.Backend.Models.AppwriteGroupMessageRecord> CreateAsync(
            USCF.Backend.Models.AuthenticatedCommunityUser user,
            USCF.Backend.DTOs.Community.CreateGroupMessageRequest request,
            CancellationToken cancellationToken = default)
        {
            var type = ResolveOrganizationType(request.OrganizationalLevel, request.BranchId, request.DistrictId, request.RegionId);
            var organizationId = ResolveOrganizationId(request, type);
            if (organizationId <= 0)
            {
                throw new UnauthorizedAccessException("The group target is invalid.");
            }

            if (!string.Equals(request.CommunityId, organizationId.ToString(), StringComparison.Ordinal))
            {
                throw new UnauthorizedAccessException("The requested community identifier does not match the target organization.");
            }

            var context = new USCF.Backend.Models.CctOrganizationContext(type, organizationId, request.CommunityId);
            await _sync.SynchronizeAsync(user, cancellationToken);
            if (!await _authz.CanAccessAsync(user, context, cancellationToken))
            {
                throw new UnauthorizedAccessException("The user is not authorized to create a message in this team.");
            }

            var resolver = new AppwriteTeamResolverService(new USCF.Backend.Data.USCFDbContext(
                new DbContextOptionsBuilder<USCF.Backend.Data.USCFDbContext>().UseInMemoryDatabase(Guid.NewGuid().ToString()).Options),
                _gateway);
            var team = await resolver.ResolveTeamAsync(context, cancellationToken);

            var message = new USCF.Backend.Models.AppwriteGroupMessageRecord
            {
                MessageId = Guid.NewGuid().ToString("N"),
                SenderUid = user.Identity.FirebaseUid,
                SenderDisplayName = user.Identity.DisplayName ?? user.User.FullName,
                AppwriteTeamId = team.AppwriteTeamId,
                CommunityId = request.CommunityId,
                OrganizationType = team.OrganizationType,
                OrganizationId = team.OrganizationId,
                Content = request.Content,
                Permissions = new List<string> { $"read(\"team:{team.AppwriteTeamId}\")" },
                CreatedAtUtc = DateTime.UtcNow
            };

            return await _gateway.CreateGroupMessageAsync(message, cancellationToken);
        }

        public async Task<IReadOnlyList<USCF.Backend.Models.AppwriteGroupMessageRecord>> ListAsync(
            USCF.Backend.Models.AuthenticatedCommunityUser user,
            USCF.Backend.DTOs.Community.ResolveTeamRequest request,
            int limit,
            CancellationToken cancellationToken = default)
        {
            var type = ResolveOrganizationType(request.OrganizationalLevel, request.BranchId, request.DistrictId, request.RegionId);
            var organizationId = ResolveOrganizationId(request, type);
            if (organizationId <= 0)
            {
                throw new UnauthorizedAccessException("The group target is invalid.");
            }

            if (!string.Equals(request.CommunityId, organizationId.ToString(), StringComparison.Ordinal))
            {
                throw new UnauthorizedAccessException("The requested community identifier does not match the target organization.");
            }

            var context = new USCF.Backend.Models.CctOrganizationContext(type, organizationId, request.CommunityId);
            await _sync.SynchronizeAsync(user, cancellationToken);
            if (!await _authz.CanAccessAsync(user, context, cancellationToken))
            {
                throw new UnauthorizedAccessException("The user is not authorized to read this team.");
            }

            var resolver = new AppwriteTeamResolverService(new USCF.Backend.Data.USCFDbContext(
                new DbContextOptionsBuilder<USCF.Backend.Data.USCFDbContext>().UseInMemoryDatabase(Guid.NewGuid().ToString()).Options),
                _gateway);
            var team = await resolver.ResolveTeamAsync(context, cancellationToken);
            return await _gateway.ListGroupMessagesAsync(team.OrganizationType, team.OrganizationId, Math.Max(1, limit), cancellationToken);
        }

        public static string ResolveOrganizationType(string? organizationLevel, int? branchId, int? districtId, int? regionId)
        {
            if (string.Equals(organizationLevel, "Branch", StringComparison.OrdinalIgnoreCase)) return "branch";
            if (string.Equals(organizationLevel, "District", StringComparison.OrdinalIgnoreCase)) return "district";
            if (string.Equals(organizationLevel, "Region", StringComparison.OrdinalIgnoreCase)) return "region";
            if (branchId.HasValue) return "branch";
            if (districtId.HasValue) return "district";
            if (regionId.HasValue) return "region";
            return "branch";
        }

        public static int ResolveOrganizationId(USCF.Backend.DTOs.Community.CreateGroupMessageRequest request, string organizationType)
        {
            if (string.Equals(organizationType, "branch", StringComparison.OrdinalIgnoreCase) && request.BranchId.HasValue)
            {
                return request.BranchId.Value;
            }

            if (string.Equals(organizationType, "district", StringComparison.OrdinalIgnoreCase) && request.DistrictId.HasValue)
            {
                return request.DistrictId.Value;
            }

            if (string.Equals(organizationType, "region", StringComparison.OrdinalIgnoreCase) && request.RegionId.HasValue)
            {
                return request.RegionId.Value;
            }

            return request.BranchId ?? request.DistrictId ?? request.RegionId ?? 0;
        }

        public static int ResolveOrganizationId(USCF.Backend.DTOs.Community.ResolveTeamRequest request, string organizationType)
        {
            if (string.Equals(organizationType, "branch", StringComparison.OrdinalIgnoreCase) && request.BranchId.HasValue)
            {
                return request.BranchId.Value;
            }

            if (string.Equals(organizationType, "district", StringComparison.OrdinalIgnoreCase) && request.DistrictId.HasValue)
            {
                return request.DistrictId.Value;
            }

            if (string.Equals(organizationType, "region", StringComparison.OrdinalIgnoreCase) && request.RegionId.HasValue)
            {
                return request.RegionId.Value;
            }

            return request.BranchId ?? request.DistrictId ?? request.RegionId ?? 0;
        }
    }
}

namespace USCF.Backend.Controllers
{
    public sealed class IdentityController : ControllerBase
    {
        private readonly USCF.Backend.Services.Identity.FirebaseIdentityBridgeService _bridgeService;
        private readonly ILogger<IdentityController> _logger;

        public IdentityController(USCF.Backend.Services.Identity.FirebaseIdentityBridgeService bridgeService, ILogger<IdentityController> logger)
        {
            _bridgeService = bridgeService;
            _logger = logger;
        }

        public async Task<IActionResult> BridgeFirebaseIdentity(CancellationToken cancellationToken)
        {
            var authHeader = HttpContext.Request.Headers.Authorization.ToString();
            if (string.IsNullOrWhiteSpace(authHeader) || !authHeader.StartsWith("Bearer ", StringComparison.OrdinalIgnoreCase))
            {
                return Unauthorized(new { error = "Missing bearer token." });
            }

            var token = authHeader["Bearer ".Length..].Trim();
            if (string.IsNullOrWhiteSpace(token))
            {
                return Unauthorized(new { error = "Missing bearer token." });
            }

            try
            {
                var result = await _bridgeService.BridgeAsync(token, cancellationToken);
                return Ok(result);
            }
            catch (USCF.Backend.Models.FirebaseTokenVerificationException ex)
            {
                _logger.LogWarning(ex, "Firebase identity bridge rejected a token.");
                return Unauthorized(new { error = ex.Message });
            }
        }
    }
}

namespace USCF.Backend.Services.Identity
{
    public sealed class FirebaseIdentityBridgeResponse
    {
        public bool Success { get; set; }
        public string FirebaseUid { get; set; } = string.Empty;
        public string AppwriteUserId { get; set; } = string.Empty;
        public string? Email { get; set; }
        public string? DisplayName { get; set; }
    }

    public sealed class FirebaseIdentityBridgeService
    {
        private readonly USCF.Backend.Models.IFirebaseTokenVerifier _tokenVerifier;
        private readonly USCF.Backend.Models.IAppwriteUserGateway _appwriteUserGateway;
        private readonly USCF.Backend.Data.USCFDbContext _db;
        private readonly ILogger<FirebaseIdentityBridgeService> _logger;

        public FirebaseIdentityBridgeService(
            USCF.Backend.Models.IFirebaseTokenVerifier tokenVerifier,
            USCF.Backend.Models.IAppwriteUserGateway appwriteUserGateway,
            USCF.Backend.Data.USCFDbContext db,
            ILogger<FirebaseIdentityBridgeService> logger)
        {
            _tokenVerifier = tokenVerifier;
            _appwriteUserGateway = appwriteUserGateway;
            _db = db;
            _logger = logger;
        }

        public async Task<FirebaseIdentityBridgeResponse> BridgeAsync(string firebaseIdToken, CancellationToken cancellationToken = default)
        {
            if (string.IsNullOrWhiteSpace(firebaseIdToken))
            {
                throw new USCF.Backend.Models.FirebaseTokenVerificationException("Token was missing.");
            }

            USCF.Backend.Models.VerifiedFirebaseIdentity identity;
            try
            {
                identity = await _tokenVerifier.VerifyAsync(firebaseIdToken, cancellationToken);
            }
            catch (Exception ex) when (ex is not USCF.Backend.Models.FirebaseTokenVerificationException)
            {
                _logger.LogWarning(ex, "Firebase token verification failed.");
                throw new USCF.Backend.Models.FirebaseTokenVerificationException("Token did not verify.");
            }

            if (string.IsNullOrWhiteSpace(identity.FirebaseUid))
            {
                throw new USCF.Backend.Models.FirebaseTokenVerificationException("Firebase user ID was missing.");
            }

            var existing = await _db.FirebaseAppwriteIdentityMappings
                .SingleOrDefaultAsync(item => item.FirebaseUid == identity.FirebaseUid && item.FirebaseProjectId == identity.FirebaseProjectId, cancellationToken);

            if (existing is not null)
            {
                return new FirebaseIdentityBridgeResponse
                {
                    Success = true,
                    FirebaseUid = identity.FirebaseUid,
                    AppwriteUserId = existing.AppwriteUserId,
                    Email = existing.Email,
                    DisplayName = existing.DisplayName
                };
            }

            var appwriteUserId = await _appwriteUserGateway.CreateUserAsync(identity, cancellationToken);
            var mapping = new USCF.Backend.Models.FirebaseAppwriteIdentityMapping
            {
                FirebaseUid = identity.FirebaseUid,
                FirebaseProjectId = identity.FirebaseProjectId,
                AppwriteUserId = appwriteUserId,
                Email = identity.Email,
                DisplayName = identity.DisplayName,
                CreatedUtc = DateTime.UtcNow,
                UpdatedUtc = DateTime.UtcNow
            };

            _db.FirebaseAppwriteIdentityMappings.Add(mapping);
            await _db.SaveChangesAsync(cancellationToken);

            return new FirebaseIdentityBridgeResponse
            {
                Success = true,
                FirebaseUid = identity.FirebaseUid,
                AppwriteUserId = appwriteUserId,
                Email = identity.Email,
                DisplayName = identity.DisplayName
            };
        }
    }
}
