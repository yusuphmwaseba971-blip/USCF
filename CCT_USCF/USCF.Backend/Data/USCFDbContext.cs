using Microsoft.EntityFrameworkCore;
using USCF.Backend.Models;

namespace USCF.Backend.Data;

public class USCFDbContext : DbContext
{
    public USCFDbContext(DbContextOptions<USCFDbContext> options)
        : base(options)
    {
    }

    public DbSet<User> Users => Set<User>();
    public DbSet<Region> Regions => Set<Region>();
    public DbSet<District> Districts => Set<District>();
    public DbSet<Branch> Branches => Set<Branch>();
    public DbSet<AppwriteTeamMapping> AppwriteTeamMappings => Set<AppwriteTeamMapping>();
    public DbSet<AppwriteTeamMembership> AppwriteTeamMemberships => Set<AppwriteTeamMembership>();
    public DbSet<BranchInvitation> BranchInvitations => Set<BranchInvitation>();

    // Community
    public DbSet<Post> Posts => Set<Post>();
    public DbSet<PostMedia> PostMedias => Set<PostMedia>();
    public DbSet<BibleVerse> BibleVerses => Set<BibleVerse>();
    public DbSet<PrayerRequest> PrayerRequests => Set<PrayerRequest>();
    public DbSet<USCF.Backend.Models.BiblePost> BiblePosts => Set<USCF.Backend.Models.BiblePost>();
    public DbSet<FirebaseAppwriteIdentityMapping> FirebaseAppwriteIdentityMappings => Set<FirebaseAppwriteIdentityMapping>();
    public DbSet<NationalCommunityPost> NationalCommunityPosts => Set<NationalCommunityPost>();
    public DbSet<NationalCommunityLike> NationalCommunityLikes => Set<NationalCommunityLike>();
    public DbSet<NationalCommunityComment> NationalCommunityComments => Set<NationalCommunityComment>();
    public DbSet<NationalCommunityEvent> NationalCommunityEvents => Set<NationalCommunityEvent>();
    public DbSet<ChurchAnnouncement> ChurchAnnouncements => Set<ChurchAnnouncement>();
    public DbSet<ChurchNotification> ChurchNotifications => Set<ChurchNotification>();

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        base.OnModelCreating(modelBuilder);

        modelBuilder.Entity<Region>()
            .HasMany(r => r.Districts)
            .WithOne(d => d.Region)
            .HasForeignKey(d => d.RegionId)
            .OnDelete(DeleteBehavior.Restrict);

        modelBuilder.Entity<District>()
            .HasMany(d => d.Branches)
            .WithOne(b => b.District)
            .HasForeignKey(b => b.DistrictId)
            .OnDelete(DeleteBehavior.Restrict);

        modelBuilder.Entity<User>()
            .HasOne<Region>()
            .WithMany()
            .HasForeignKey(u => u.RegionId)
            .OnDelete(DeleteBehavior.Restrict);

        modelBuilder.Entity<User>()
            .HasOne<District>()
            .WithMany()
            .HasForeignKey(u => u.DistrictId)
            .OnDelete(DeleteBehavior.Restrict);

        modelBuilder.Entity<User>()
            .HasOne<Branch>()
            .WithMany()
            .HasForeignKey(u => u.BranchId)
            .OnDelete(DeleteBehavior.Restrict);

        modelBuilder.Entity<User>()
            .HasIndex(u => u.Username)
            .IsUnique();

        modelBuilder.Entity<User>()
            .HasIndex(u => u.Email)
            .IsUnique();

        modelBuilder.Entity<PostMedia>()
            .HasIndex(m => new { m.PostId, m.CreatedAt });

        modelBuilder.Entity<BibleVerse>()
            .HasIndex(v => new { v.Book, v.Chapter, v.VerseNumber })
            .IsUnique();

        modelBuilder.Entity<PrayerRequest>()
            .HasIndex(p => new { p.UserId, p.CreatedAtUtc });

        modelBuilder.Entity<FirebaseAppwriteIdentityMapping>()
            .HasIndex(mapping => mapping.FirebaseUid)
            .IsUnique();

        modelBuilder.Entity<FirebaseAppwriteIdentityMapping>()
            .HasIndex(mapping => mapping.AppwriteUserId)
            .IsUnique();

        modelBuilder.Entity<AppwriteTeamMapping>()
            .HasIndex(mapping => new { mapping.OrganizationType, mapping.OrganizationId })
            .IsUnique();

        modelBuilder.Entity<AppwriteTeamMapping>()
            .HasIndex(mapping => mapping.AppwriteTeamId)
            .IsUnique();

        modelBuilder.Entity<AppwriteTeamMembership>()
            .HasIndex(membership => new { membership.TeamMappingId, membership.AppwriteUserId })
            .IsUnique();
        modelBuilder.Entity<BranchInvitation>()
            .HasIndex(invitation => invitation.TokenHash)
            .IsUnique();

        modelBuilder.Entity<NationalCommunityPost>()
            .HasMany(p => p.Likes).WithOne().HasForeignKey(l => l.PostId).OnDelete(DeleteBehavior.Cascade);
        modelBuilder.Entity<NationalCommunityPost>()
            .HasMany(p => p.Comments).WithOne().HasForeignKey(c => c.PostId).OnDelete(DeleteBehavior.Cascade);
        modelBuilder.Entity<NationalCommunityLike>()
            .HasIndex(l => new { l.PostId, l.UserUid }).IsUnique();
        modelBuilder.Entity<NationalCommunityPost>()
            .HasIndex(p => new { p.Visibility, p.CreatedAtUtc });
        modelBuilder.Entity<NationalCommunityEvent>()
            .HasIndex(e => new { e.RecipientUid, e.CreatedAtUtc });
        modelBuilder.Entity<ChurchAnnouncement>()
            .HasMany(x => x.Notifications).WithOne().HasForeignKey(x => x.AnnouncementId)
            .OnDelete(DeleteBehavior.Cascade);
        modelBuilder.Entity<ChurchNotification>()
            .HasIndex(x => new { x.AnnouncementId, x.RecipientUid }).IsUnique();
        modelBuilder.Entity<ChurchNotification>()
            .HasIndex(x => new { x.RecipientUid, x.CreatedAtUtc });
    }
}
