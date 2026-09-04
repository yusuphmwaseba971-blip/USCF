using System.ComponentModel.DataAnnotations;

namespace USCF.Backend.Models;

public sealed class ChurchAnnouncement
{
    [Key]
    public Guid Id { get; set; } = Guid.NewGuid();
    [Required] public string SenderUid { get; set; } = string.Empty;
    [Required] public string SenderName { get; set; } = string.Empty;
    [Required] public string SenderLeadershipLevel { get; set; } = string.Empty;
    [Required] public string TargetLevel { get; set; } = string.Empty;
    public int? TargetRegionId { get; set; }
    public int? TargetDistrictId { get; set; }
    public int? TargetBranchId { get; set; }
    [Required, MaxLength(200)] public string Title { get; set; } = string.Empty;
    [Required] public string Message { get; set; } = string.Empty;
    public DateTime CreatedAtUtc { get; set; } = DateTime.UtcNow;
    [Required] public string Status { get; set; } = "Created";
    public ICollection<ChurchNotification> Notifications { get; set; } = new List<ChurchNotification>();
}

public sealed class ChurchNotification
{
    [Key]
    public Guid Id { get; set; } = Guid.NewGuid();
    public Guid AnnouncementId { get; set; }
    [Required] public string RecipientUid { get; set; } = string.Empty;
    [Required] public string Title { get; set; } = string.Empty;
    [Required] public string Message { get; set; } = string.Empty;
    [Required] public string SenderName { get; set; } = string.Empty;
    [Required] public string TargetLevel { get; set; } = string.Empty;
    public DateTime CreatedAtUtc { get; set; } = DateTime.UtcNow;
    public bool IsRead { get; set; }
}
