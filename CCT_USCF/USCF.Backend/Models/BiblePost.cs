using System;
using System.ComponentModel.DataAnnotations;

namespace USCF.Backend.Models
{
    public class BiblePost
    {
        [Key]
        public Guid Id { get; set; }
        public Guid UserId { get; set; }
        public string PostType { get; set; } = "BibleVerse";
        public string BookId { get; set; } = string.Empty; // e.g., MAT
        public int ChapterNumber { get; set; }
        public int VerseStart { get; set; }
        public int VerseEnd { get; set; }
        public DateTime CreatedAtUtc { get; set; } = DateTime.UtcNow;
        public DateTime UpdatedAtUtc { get; set; } = DateTime.UtcNow;
        public bool IsDeleted { get; set; } = false;
    }
}