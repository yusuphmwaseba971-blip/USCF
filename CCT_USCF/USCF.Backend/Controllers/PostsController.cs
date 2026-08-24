using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System.Linq;
using System.Security.Claims;
using USCF.Backend.Data;
using USCF.Backend.Models;
using USCF.Backend.Services;

namespace USCF.Backend.Controllers;

[ApiController]
[Route("api/[controller]")]
public class PostsController : ControllerBase
{
    private readonly USCFDbContext _db;
    private readonly IWebHostEnvironment _env;
    private readonly LeaderMediaPolicyService _leaderMediaPolicy;
    private readonly MediaStorageService _mediaStorage;

    public PostsController(USCFDbContext db, IWebHostEnvironment env, LeaderMediaPolicyService leaderMediaPolicy, MediaStorageService mediaStorage)
    {
        _db = db;
        _env = env;
        _leaderMediaPolicy = leaderMediaPolicy;
        _mediaStorage = mediaStorage;
    }

    [Authorize]
    [HttpPost]
    [RequestSizeLimit(50_000_000)]
    public async Task<IActionResult> CreatePost([FromForm] string content, [FromForm] string? caption, [FromForm] double? trimStart, [FromForm] double? trimEnd)
    {
        if (string.IsNullOrWhiteSpace(content))
            return BadRequest(new { message = "Content is required." });

        var sub = User.FindFirstValue(ClaimTypes.NameIdentifier);
        if (string.IsNullOrEmpty(sub)) return Unauthorized();
        if (!Guid.TryParse(sub, out var userId)) return Unauthorized();

        var user = await _db.Users.AsNoTracking().FirstOrDefaultAsync(u => u.Id == userId);
        if (user == null)
        {
            return Unauthorized();
        }

        var post = new Post
        {
            UserId = userId,
            Content = content.Trim(),
            Caption = caption?.Trim()
        };

        var file = Request.Form.Files.FirstOrDefault();
        if (file != null && file.Length > 0)
        {
            var ext = Path.GetExtension(file.FileName).ToLowerInvariant();
            var isVideo = new[] { ".mp4", ".mov", ".avi", ".m4v", ".wmv" }.Contains(ext);
            var isImage = new[] { ".jpg", ".jpeg", ".png", ".gif", ".webp" }.Contains(ext);
            var isAudio = new[] { ".mp3", ".wav", ".m4a", ".aac", ".ogg" }.Contains(ext);

            if (!isAudio && !isImage && !isVideo)
            {
                return BadRequest(new { message = "Unsupported media format." });
            }

            if (isVideo && file.Length > 50L * 1024L * 1024L)
            {
                return BadRequest(new { message = "Maximum video size: 50 MB." });
            }

            if (isVideo || isImage)
            {
                var policy = await _leaderMediaPolicy.CheckUploadAsync(userId, isVideo ? LeaderMediaKind.Video : LeaderMediaKind.Image, file.Length);
                if (!policy.IsAllowed)
                {
                    return BadRequest(new { message = policy.Message });
                }
            }

            var storageCheck = await _mediaStorage.CanAcceptUploadAsync(file.Length);
            if (!storageCheck.Allowed)
            {
                return BadRequest(new { message = storageCheck.Message });
            }

            var uploads = _mediaStorage.GetUploadsDirectory();
            var fileName = $"{Guid.NewGuid()}{ext}";
            var filePath = Path.Combine(uploads, fileName);

            await using (var fs = System.IO.File.Create(filePath))
            {
                await file.CopyToAsync(fs);
            }

            var relativePath = fileName;
            var url = $"/uploads/{fileName}";

            var media = new PostMedia
            {
                MediaType = isVideo ? "video" : isImage ? "image" : "audio",
                FileName = file.FileName,
                Url = url,
                StoragePath = relativePath,
                FileSizeBytes = file.Length,
                UploadedByUserId = userId,
                IsTemporary = true,
                ExpiresAt = DateTime.UtcNow.AddDays(7),
                Duration = null,
                TrimStart = trimStart,
                TrimEnd = trimEnd
            };

            post.Media.Add(media);
        }

        _db.Posts.Add(post);
        await _db.SaveChangesAsync();

        var result = new
        {
            post.Id,
            post.UserId,
            post.Content,
            post.Caption,
            post.CreatedAt,
            Media = post.Media.Select(m => new { m.Id, m.MediaType, m.FileName, m.Url, m.Duration, m.TrimStart, m.TrimEnd, m.FileSizeBytes, m.ExpiresAt })
        };

        return CreatedAtAction(nameof(GetPost), new { id = post.Id }, result);
    }

    [HttpGet("{id:guid}")]
    public async Task<IActionResult> GetPost(Guid id)
    {
        var p = await _db.Posts.FindAsync(id);
        if (p == null) return NotFound();

        var media = await _db.PostMedias
            .Where(m => m.PostId == p.Id)
            .Select(m => new { m.Id, m.MediaType, m.FileName, m.Url, m.Duration, m.TrimStart, m.TrimEnd, m.FileSizeBytes, m.ExpiresAt })
            .ToListAsync();

        return Ok(new { p.Id, p.UserId, p.Content, p.Caption, p.CreatedAt, Media = media });
    }
}
