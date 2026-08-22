using USCF.Backend.DTOs;

namespace USCF.Backend.Services;

public interface IUserService
{
    Task<UserDto> GetByIdAsync(Guid id);
    Task<UserDto?> GetByUsernameAsync(string username);
}
