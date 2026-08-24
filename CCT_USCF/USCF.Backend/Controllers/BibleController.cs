using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using USCF.Backend.Data;
using USCF.Backend.Models;
using USCF.Backend.Options;

namespace USCF.Backend.Controllers;

[ApiController]
[Route("api/[controller]")]
public class BibleController : ControllerBase
{
    private readonly USCFDbContext _db;
    private readonly MediaOptions _mediaOptions;

    public BibleController(USCFDbContext db, Microsoft.Extensions.Options.IOptions<MediaOptions> mediaOptions)
    {
        _db = db;
        _mediaOptions = mediaOptions.Value;
    }

    [HttpGet("books")]
    public async Task<IActionResult> GetBooks()
    {
        var books = await _db.BibleVerses
            .AsNoTracking()
            .Select(v => v.Book)
            .Distinct()
            .OrderBy(b => b)
            .ToListAsync();

        return Ok(books);
    }

    [HttpGet("chapters")]
    public async Task<IActionResult> GetChapters([FromQuery] string book)
    {
        if (string.IsNullOrWhiteSpace(book))
        {
            return BadRequest(new { message = "Book is required." });
        }

        var chapters = await _db.BibleVerses
            .AsNoTracking()
            .Where(v => v.Book == book)
            .Select(v => v.Chapter)
            .Distinct()
            .OrderBy(c => c)
            .ToListAsync();

        return Ok(chapters);
    }

    [HttpGet("verse")]
    public async Task<IActionResult> GetVerse([FromQuery] string book, [FromQuery] int chapter, [FromQuery] int verse)
    {
        if (string.IsNullOrWhiteSpace(book))
        {
            return BadRequest(new { message = "Book is required." });
        }

        var verseItem = await _db.BibleVerses
            .AsNoTracking()
            .FirstOrDefaultAsync(v => v.Book == book && v.Chapter == chapter && v.VerseNumber == verse);

        if (verseItem == null)
        {
            return NotFound(new { message = "Bible verse not found." });
        }

        return Ok(verseItem);
    }

    [Authorize]
    [HttpPost("audio")]
    [RequestSizeLimit(10_000_000)]
    public async Task<IActionResult> UploadVerseAudio([FromForm] IFormFile audio)
    {
        if (audio == null || audio.Length == 0)
        {
            return BadRequest(new { message = "An audio file is required." });
        }

        if (audio.Length > _mediaOptions.MaxBibleAudioFileSizeBytes)
        {
            return BadRequest(new { message = $"Audio file exceeds the configured maximum size of {_mediaOptions.MaxBibleAudioFileSizeBytes / (1024 * 1024)} MB." });
        }

        var allowedMimeTypes = new[] { "audio/mpeg", "audio/wav", "audio/mp4", "audio/aac", "audio/ogg" };
        var extension = Path.GetExtension(audio.FileName).ToLowerInvariant();
        var validExtensions = new[] { ".mp3", ".wav", ".m4a", ".aac", ".ogg" };

        if (!validExtensions.Contains(extension) || !allowedMimeTypes.Contains(audio.ContentType?.ToLowerInvariant()))
        {
            return BadRequest(new { message = "Invalid audio format or MIME type." });
        }

        return Ok(new { message = "Bible audio accepted. Duration validation and storage can be applied in the provider workflow." });
    }
}
