using System;

namespace CCT_USCF.Models
{
    public class BibleDisplayModel
    {
        public Guid Id { get; set; }
        public Guid UserId { get; set; }
        public string BookDisplay { get; set; } = string.Empty;
        public int Chapter { get; set; }
        public int VerseStart { get; set; }
        public int VerseEnd { get; set; }
        public string PassageText { get; set; } = string.Empty;
        public DateTime CreatedAtUtc { get; set; }
    }
}