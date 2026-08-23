using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System.Linq;
using USCF.Backend.Data;
using USCF.Backend.Models;
using System.Security.Claims;

namespace USCF.Backend.Controllers;

[ApiController]
[Route("api/[controller]")]
public class PostsController : ControllerBase
{
    private readonly USCFDbContext _db;
    private readonly IWebHostEnvironment _env;

    public PostsController(USCFDbContext db, IWebHostEnvironment env)
    {
        _db = db;
        _env = env;
    }

    [Authorize]
    [HttpPost]
    [RequestSizeLimit(50_000_000)] // allow up to ~50MB uploads
    public async Task<IActionResult> CreatePost([FromForm] string content, [FromForm] string? caption, [FromForm] double? trimStart, [FromForm] double? trimEnd)
    {
        if (string.IsNullOrWhiteSpace(content))
            return BadRequest(new { message = "Content is required." });

        var sub = User.FindFirstValue(ClaimTypes.NameIdentifier);
        if (string.IsNullOrEmpty(sub)) return Unauthorized();
        if (!Guid.TryParse(sub, out var userId)) return Unauthorized();

        var post = new Post
        {
            UserId = userId,
            Content = content.Trim(),
            Caption = caption?.Trim()
        };

        // handle file if present
        var file = Request.Form.Files.FirstOrDefault();

        if (file != null && file.Length > 0)
        {
            // basic validation
            var allowed = new[] { ".mp3", ".wav", ".m4a", ".aac", ".ogg" };
            var ext = Path.GetExtension(file.FileName).ToLowerInvariant();
            if (!allowed.Contains(ext))
                return BadRequest(new { message = "Unsupported audio format." });

            // ensure upload folder
            var uploads = Path.Combine(_env.WebRootPath ?? Path.Combine(Directory.GetCurrentDirectory(), "wwwroot"), "uploads");
            if (!Directory.Exists(uploads)) Directory.CreateDirectory(uploads);

            var fileName = $"{Guid.NewGuid()}{ext}";
            var filePath = Path.Combine(uploads, fileName);

            using (var fs = System.IO.File.Create(filePath))
            {
                await file.CopyToAsync(fs);
            }

            // store media metadata (url path relative to wwwroot)
            var url = $"/uploads/{fileName}";

            var media = new PostMedia
            {
                MediaType = "audio",
                FileName = file.FileName,
                Url = url,
                Duration = null, // client may provide; otherwise set null
                TrimStart = trimStart,
                TrimEnd = trimEnd
            };

            post.Media.Add(media);
        }

        _db.Posts.Add(post);
        await _db.SaveChangesAsync();

        // return created post info
        var result = new
        {
            post.Id,
            post.UserId,
            post.Content,
            post.Caption,
            post.CreatedAt,
            Media = post.Media.Select(m => new { m.Id, m.MediaType, m.FileName, m.Url, m.Duration, m.TrimStart, m.TrimEnd })
        };

        return CreatedAtAction(nameof(GetPost), new { id = post.Id }, result);
    }

    [HttpGet("{id:guid}")]
    public async Task<IActionResult> GetPost(Guid id)
    {
        var p = await _db.Posts.FindAsync(id);
        if (p == null) return NotFound();
        var media = await _db.PostMedias.Where(m => m.PostId == p.Id).Select(m => new { m.Id, m.MediaType, m.FileName, m.Url, m.Duration, m.TrimStart, m.TrimEnd }).ToListAsync();
        return Ok(new { p.Id, p.UserId, p.Content, p.Caption, p.CreatedAt, Media = media });
    }
}
