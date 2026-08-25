using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Microsoft.AspNetCore.Authorization;
using USCF.Backend.Data;
using USCF.Backend.DTOs;
using USCF.Backend.Models;

namespace USCF.Backend.Controllers
{
    [ApiController]
    [Route("api/community/bible")]
    public class CommunityBibleController : ControllerBase
    {
        private readonly USCFDbContext _db;

        public CommunityBibleController(USCFDbContext db)
        {
            _db = db;
        }

        [HttpPost]
        [Authorize]
        public async Task<IActionResult> CreateBiblePost([FromBody] BiblePostCreateDto dto)
        {
            if (!ModelState.IsValid) return BadRequest(ModelState);

            var userIdClaim = User.Claims.FirstOrDefault(c => c.Type == "sub" || c.Type == "id" || c.Type == "userId");
            if (userIdClaim == null) return Unauthorized();

            if (dto.VerseStart <= 0 || dto.VerseEnd < dto.VerseStart) return BadRequest("Invalid verse range");

            var post = new BiblePost
            {
                Id = Guid.NewGuid(),
                UserId = Guid.Parse(userIdClaim.Value),
                BookId = dto.BookId,
                ChapterNumber = dto.ChapterNumber,
                VerseStart = dto.VerseStart,
                VerseEnd = dto.VerseEnd,
                CreatedAtUtc = DateTime.UtcNow,
                UpdatedAtUtc = DateTime.UtcNow,
                IsDeleted = false
            };

            _db.BiblePosts.Add(post);
            await _db.SaveChangesAsync();

            var result = new BiblePostDto
            {
                Id = post.Id,
                UserId = post.UserId,
                BookId = post.BookId,
                ChapterNumber = post.ChapterNumber,
                VerseStart = post.VerseStart,
                VerseEnd = post.VerseEnd,
                CreatedAtUtc = post.CreatedAtUtc
            };

            return CreatedAtAction(nameof(GetBiblePost), new { id = post.Id }, result);
        }

        [HttpGet]
        [AllowAnonymous]
        public async Task<IActionResult> GetBiblePosts(int limit = 50)
        {
            var posts = await _db.BiblePosts
                .Where(p => !p.IsDeleted)
                .OrderByDescending(p => p.CreatedAtUtc)
                .Take(limit)
                .Select(p => new BiblePostDto
                {
                    Id = p.Id,
                    UserId = p.UserId,
                    BookId = p.BookId,
                    ChapterNumber = p.ChapterNumber,
                    VerseStart = p.VerseStart,
                    VerseEnd = p.VerseEnd,
                    CreatedAtUtc = p.CreatedAtUtc
                }).ToListAsync();

            return Ok(posts);
        }

        [HttpGet("mine")]
        [Authorize]
        public async Task<IActionResult> GetMyBiblePosts()
        {
            var userIdClaim = User.Claims.FirstOrDefault(c => c.Type == "sub" || c.Type == "id" || c.Type == "userId");
            if (userIdClaim == null) return Unauthorized();
            var userId = Guid.Parse(userIdClaim.Value);

            var posts = await _db.BiblePosts
                .Where(p => !p.IsDeleted && p.UserId == userId)
                .OrderByDescending(p => p.CreatedAtUtc)
                .Select(p => new BiblePostDto
                {
                    Id = p.Id,
                    UserId = p.UserId,
                    BookId = p.BookId,
                    ChapterNumber = p.ChapterNumber,
                    VerseStart = p.VerseStart,
                    VerseEnd = p.VerseEnd,
                    CreatedAtUtc = p.CreatedAtUtc
                }).ToListAsync();

            return Ok(posts);
        }

        [HttpGet("{id}")]
        [AllowAnonymous]
        public async Task<IActionResult> GetBiblePost(Guid id)
        {
            var p = await _db.BiblePosts.FindAsync(id);
            if (p == null || p.IsDeleted) return NotFound();

            var dto = new BiblePostDto
            {
                Id = p.Id,
                UserId = p.UserId,
                BookId = p.BookId,
                ChapterNumber = p.ChapterNumber,
                VerseStart = p.VerseStart,
                VerseEnd = p.VerseEnd,
                CreatedAtUtc = p.CreatedAtUtc
            };

            return Ok(dto);
        }

        [HttpDelete("{id}")]
        [Authorize]
        public async Task<IActionResult> DeleteBiblePost(Guid id)
        {
            var p = await _db.BiblePosts.FindAsync(id);
            if (p == null || p.IsDeleted) return NotFound();

            var userIdClaim = User.Claims.FirstOrDefault(c => c.Type == "sub" || c.Type == "id" || c.Type == "userId");
            if (userIdClaim == null) return Unauthorized();
            var userId = Guid.Parse(userIdClaim.Value);

            if (p.UserId != userId) return Forbid();

            p.IsDeleted = true;
            p.UpdatedAtUtc = DateTime.UtcNow;
            await _db.SaveChangesAsync();

            return NoContent();
        }
    }
}