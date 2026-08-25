using System.ComponentModel.DataAnnotations;

namespace USCF.Backend.DTOs
{
    public class BiblePostCreateDto
    {
        [Required]
        public string BookId { get; set; } = string.Empty;
        [Required]
        public int ChapterNumber { get; set; }
        [Required]
        public int VerseStart { get; set; }
        [Required]
        public int VerseEnd { get; set; }
    }
}