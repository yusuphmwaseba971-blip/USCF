using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using USCF.Backend.Data;
using USCF.Backend.DTOs;

namespace USCF.Backend.Controllers;

[ApiController]
[Route("api/[controller]")]
public class UsersController : ControllerBase
{
    private readonly USCFDbContext _db;

    public UsersController(USCFDbContext db)
    {
        _db = db;
    }

    [Authorize]
    [HttpGet("search")]
    public async Task<IActionResult> Search([FromQuery] string q)
    {
        if (string.IsNullOrWhiteSpace(q)) return BadRequest(new { message = "q is required" });

        q = q.Trim();

        var users = await _db.Users
            .Where(u => u.FullName.Contains(q) || u.Username.Contains(q))
            .OrderBy(u => u.FullName)
            .Select(u => new UserDto
            {
                Id = u.Id,
                FullName = u.FullName,
                Username = u.Username,
                Email = u.Email,
                ProfileImageUrl = u.ProfileImageUrl,
                Role = u.Role,
                CreatedAt = u.CreatedAt
            })
            .Take(50)
            .ToListAsync();

        return Ok(users);
    }

    [Authorize]
    [HttpGet("{id:guid}")]
    public async Task<IActionResult> Get(Guid id)
    {
        var u = await _db.Users.FindAsync(id);
        if (u == null) return NotFound();

        var dto = new UserDto
        {
            Id = u.Id,
            FullName = u.FullName,
            Username = u.Username,
            Email = u.Email,
            ProfileImageUrl = u.ProfileImageUrl,
            Role = u.Role,
            CreatedAt = u.CreatedAt
        };

        return Ok(dto);
    }
}
