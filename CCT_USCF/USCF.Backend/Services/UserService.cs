using Microsoft.EntityFrameworkCore;
using USCF.Backend.Data;
using USCF.Backend.DTOs;
using USCF.Backend.Models;

namespace USCF.Backend.Services;

public class UserService : IUserService
{
    private readonly USCFDbContext _db;

    public UserService(USCFDbContext db)
    {
        _db = db;
    }

    public async Task<UserDto> GetByIdAsync(Guid id)
    {
        var u = await _db.Users.FindAsync(id);
        if (u == null) throw new KeyNotFoundException();
        return ToDto(u);
    }

    public async Task<UserDto?> GetByUsernameAsync(string username)
    {
        var u = await _db.Users.FirstOrDefaultAsync(x => x.Username == username);
        return u == null ? null : ToDto(u);
    }

    private static UserDto ToDto(User u) => new UserDto
    {
        Id = u.Id,
        FullName = u.FullName,
        Username = u.Username,
        Email = u.Email,
        ProfileImageUrl = u.ProfileImageUrl,
        Role = u.Role,
        CreatedAt = u.CreatedAt
    };
}
