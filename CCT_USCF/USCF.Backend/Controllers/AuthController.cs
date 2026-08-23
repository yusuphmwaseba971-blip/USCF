using System.IdentityModel.Tokens.Jwt;
using System.Security.Claims;
using System.Text;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Microsoft.IdentityModel.Tokens;
using USCF.Backend.Data;
using USCF.Backend.DTOs;
using USCF.Backend.Models;
using USCF.Backend.Services;

namespace USCF.Backend.Controllers;

[ApiController]
[Route("api/[controller]")]
public class AuthController : ControllerBase
{
    private readonly USCFDbContext _db;
    private readonly IPasswordHasher _hasher;
    private readonly IConfiguration _config;

    public AuthController(USCFDbContext db, IPasswordHasher hasher, IConfiguration config)
    {
        _db = db;
        _hasher = hasher;
        _config = config;
    }

    [HttpPost("register")]
    public async Task<IActionResult> Register([FromBody] RegisterRequest req)
    {
        if (!ModelState.IsValid) return BadRequest(ModelState);

        req.Username = req.Username.Trim();
        req.Email = req.Email.Trim().ToLowerInvariant();

        if (await _db.Users.AnyAsync(u => u.Username == req.Username))
            return BadRequest(new { message = "Username already taken" });

        if (await _db.Users.AnyAsync(u => u.Email == req.Email))
            return BadRequest(new { message = "Email already registered" });

        var user = new User
        {
            FullName = req.FullName,
            Username = req.Username,
            Email = req.Email,
            PasswordHash = _hasher.HashPassword(req.Password),
            Role = string.IsNullOrWhiteSpace(req.Role) ? "Member" : req.Role,
            RegionId = req.RegionId,
            DistrictId = req.DistrictId,
            BranchId = req.BranchId,
            CreatedAt = DateTime.UtcNow,
            UpdatedAt = DateTime.UtcNow,
            IsActive = true,
            RoleVerificationStatus = "Pending"
        };

        _db.Users.Add(user);
        await _db.SaveChangesAsync();

        var dto = new UserDto
        {
            Id = user.Id,
            FullName = user.FullName,
            Username = user.Username,
            Email = user.Email,
            ProfileImageUrl = user.ProfileImageUrl,
            Role = user.Role,
            CreatedAt = user.CreatedAt
        };

        return CreatedAtAction(nameof(Me), dto);
    }

    [HttpPost("login")]
    public async Task<IActionResult> Login([FromBody] LoginRequest req)
    {
        if (!ModelState.IsValid) return BadRequest(ModelState);

        var user = await _db.Users.FirstOrDefaultAsync(u => u.Username == req.UsernameOrEmail || u.Email == req.UsernameOrEmail);
        if (user == null) return Unauthorized(new { message = "Invalid username/email or password." });

        if (!_hasher.Verify(req.Password, user.PasswordHash))
            return Unauthorized(new { message = "Invalid username/email or password." });

        var token = GenerateToken(user);

        return Ok(new { token });
    }

    [Authorize]
    [HttpGet("me")]
    public async Task<IActionResult> Me()
    {
        var sub = User.FindFirstValue(ClaimTypes.NameIdentifier);
        if (string.IsNullOrEmpty(sub)) return Unauthorized();

        if (!Guid.TryParse(sub, out var userId)) return Unauthorized();

        var user = await _db.Users.FindAsync(userId);
        if (user == null) return Unauthorized();

        // Resolve region/district/branch names if available
        string? regionName = null;
        string? districtName = null;
        string? branchName = null;

        if (user.RegionId.HasValue)
        {
            regionName = await _db.Regions.Where(r => r.Id == user.RegionId.Value)
                .Select(r => r.Name).FirstOrDefaultAsync();
        }

        if (user.DistrictId.HasValue)
        {
            districtName = await _db.Districts.Where(d => d.Id == user.DistrictId.Value)
                .Select(d => d.Name).FirstOrDefaultAsync();
        }

        if (user.BranchId.HasValue)
        {
            branchName = await _db.Branches.Where(b => b.Id == user.BranchId.Value)
                .Select(b => b.Name).FirstOrDefaultAsync();
        }

        var dto = new UserDto
        {
            Id = user.Id,
            FullName = user.FullName,
            Username = user.Username,
            Email = user.Email,
            ProfileImageUrl = user.ProfileImageUrl,
            Role = user.Role,
            CreatedAt = user.CreatedAt,
            RegionId = user.RegionId,
            Region = regionName,
            DistrictId = user.DistrictId,
            District = districtName,
            BranchId = user.BranchId,
            Branch = branchName
        };

        return Ok(dto);
    }

    private string GenerateToken(User user)
    {
        var key = _config["Authentication:JwtSigningKey"] ?? throw new InvalidOperationException("JwtSigningKey not configured");
        var issuer = _config["Authentication:Issuer"] ?? "USCF.Backend";
        var audience = _config["Authentication:Audience"] ?? "USCF.Mobile";

        var securityKey = new SymmetricSecurityKey(Encoding.UTF8.GetBytes(key));
        var creds = new SigningCredentials(securityKey, SecurityAlgorithms.HmacSha256);

        var claims = new[]
        {
            new Claim(JwtRegisteredClaimNames.Sub, user.Id.ToString()),
            new Claim(ClaimTypes.NameIdentifier, user.Id.ToString()),
            new Claim(ClaimTypes.Name, user.Username),
            new Claim(ClaimTypes.Email, user.Email),
            new Claim(ClaimTypes.Role, user.Role)
        };

        var token = new JwtSecurityToken(
            issuer: issuer,
            audience: audience,
            claims: claims,
            expires: DateTime.UtcNow.AddHours(8),
            signingCredentials: creds);

        return new JwtSecurityTokenHandler().WriteToken(token);
    }
}
