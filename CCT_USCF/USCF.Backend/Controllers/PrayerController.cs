using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System.Security.Claims;
using USCF.Backend.Data;
using USCF.Backend.DTOs;
using USCF.Backend.Models;

namespace USCF.Backend.Controllers
{
    [ApiController]
    [Route("api/[controller]")]
    public class PrayerController : ControllerBase
    {
        private readonly USCFDbContext _db;

        public PrayerController(USCFDbContext db)
        {
            _db = db;
        }

        private Guid? GetUserId()
        {
            var sub = User?.FindFirstValue(ClaimTypes.NameIdentifier);
            if (string.IsNullOrWhiteSpace(sub)) return null;
            return Guid.TryParse(sub, out var g) ? g : (Guid?)null;
        }

        [HttpPost]
        [Authorize]
        public async Task<IActionResult> Create([FromBody] PrayerRequestCreateDto dto)
        {
            if (dto == null) return BadRequest("Invalid payload.");
            if (string.IsNullOrWhiteSpace(dto.Title) || string.IsNullOrWhiteSpace(dto.Description))
                return BadRequest("Title and Description are required.");

            var userId = GetUserId();
            if (!userId.HasValue) return Unauthorized();

            var pr = new PrayerRequest
            {
                UserId = userId.Value,
                Title = dto.Title.Trim(),
                Description = dto.Description.Trim(),
                CreatedAtUtc = DateTime.UtcNow,
                UpdatedAtUtc = DateTime.UtcNow,
                Status = "Active",
                IsDeleted = false
            };

            _db.PrayerRequests.Add(pr);
            await _db.SaveChangesAsync();

            var result = new PrayerRequestDto
            {
                Id = pr.Id,
                UserId = pr.UserId,
                Title = pr.Title,
                Description = pr.Description,
                CreatedAtUtc = pr.CreatedAtUtc,
                UpdatedAtUtc = pr.UpdatedAtUtc,
                Status = pr.Status
            };

            return CreatedAtAction(nameof(GetById), new { id = pr.Id }, result);
        }

        [HttpGet]
        public async Task<IActionResult> GetAll()
        {
            var items = await _db.PrayerRequests
                .Where(p => !p.IsDeleted)
                .OrderByDescending(p => p.CreatedAtUtc)
                .Select(p => new PrayerRequestDto
                {
                    Id = p.Id,
                    UserId = p.UserId,
                    Title = p.Title,
                    Description = p.Description,
                    CreatedAtUtc = p.CreatedAtUtc,
                    UpdatedAtUtc = p.UpdatedAtUtc,
                    Status = p.Status
                })
                .ToListAsync();

            return Ok(items);
        }

        [HttpGet("mine")]
        [Authorize]
        public async Task<IActionResult> GetMine()
        {
            var userId = GetUserId();
            if (!userId.HasValue) return Unauthorized();

            var items = await _db.PrayerRequests
                .Where(p => !p.IsDeleted && p.UserId == userId.Value)
                .OrderByDescending(p => p.CreatedAtUtc)
                .Select(p => new PrayerRequestDto
                {
                    Id = p.Id,
                    UserId = p.UserId,
                    Title = p.Title,
                    Description = p.Description,
                    CreatedAtUtc = p.CreatedAtUtc,
                    UpdatedAtUtc = p.UpdatedAtUtc,
                    Status = p.Status
                })
                .ToListAsync();

            return Ok(items);
        }

        [HttpGet("{id:guid}")]
        public async Task<IActionResult> GetById(Guid id)
        {
            var p = await _db.PrayerRequests.FirstOrDefaultAsync(x => x.Id == id && !x.IsDeleted);
            if (p == null) return NotFound();

            var dto = new PrayerRequestDto
            {
                Id = p.Id,
                UserId = p.UserId,
                Title = p.Title,
                Description = p.Description,
                CreatedAtUtc = p.CreatedAtUtc,
                UpdatedAtUtc = p.UpdatedAtUtc,
                Status = p.Status
            };

            return Ok(dto);
        }

        [HttpDelete("{id:guid}")]
        [Authorize]
        public async Task<IActionResult> Delete(Guid id)
        {
            var userId = GetUserId();
            if (!userId.HasValue) return Unauthorized();

            var p = await _db.PrayerRequests.FirstOrDefaultAsync(x => x.Id == id && !x.IsDeleted);
            if (p == null) return NotFound();
            if (p.UserId != userId.Value) return Forbid();

            p.IsDeleted = true;
            p.UpdatedAtUtc = DateTime.UtcNow;
            _db.PrayerRequests.Update(p);
            await _db.SaveChangesAsync();

            return NoContent();
        }
    }
}