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

    // Community
    public DbSet<Post> Posts => Set<Post>();
    public DbSet<PostMedia> PostMedias => Set<PostMedia>();
    public DbSet<BibleVerse> BibleVerses => Set<BibleVerse>();
    public DbSet<PrayerRequest> PrayerRequests => Set<PrayerRequest>();

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
    }
}
