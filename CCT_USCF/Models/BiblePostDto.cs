using System;

namespace CCT_USCF.Models
{
    public class BiblePostDto
    {
        public Guid Id { get; set; }
        public Guid UserId { get; set; }
        public string PostType { get; set; } = "BibleVerse";
        public string BookId { get; set; } = string.Empty;
        public int ChapterNumber { get; set; }
        public int VerseStart { get; set; }
        public int VerseEnd { get; set; }
        public DateTime CreatedAtUtc { get; set; }
    }
}