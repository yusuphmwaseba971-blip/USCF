namespace CCT_USCF.Models
{
    public class BiblePostCreateDto
    {
        public string BookId { get; set; } = string.Empty;
        public int ChapterNumber { get; set; }
        public int VerseStart { get; set; }
        public int VerseEnd { get; set; }
    }
}