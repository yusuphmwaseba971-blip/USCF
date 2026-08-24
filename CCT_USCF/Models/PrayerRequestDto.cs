using System;

namespace CCT_USCF.Models
{
    public class PrayerRequestDto
    {
        public Guid Id { get; set; }
        public Guid UserId { get; set; }
        public string Title { get; set; } = string.Empty;
        public string Description { get; set; } = string.Empty;
        public DateTime CreatedAtUtc { get; set; }
        public DateTime UpdatedAtUtc { get; set; }
        public string Status { get; set; } = string.Empty;
        public bool IsDeleted { get; set; }
    }
}