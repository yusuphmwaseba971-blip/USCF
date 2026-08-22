using Microsoft.EntityFrameworkCore;

namespace USCF.Backend.Data;

public class USCFDbContext : DbContext
{
    public USCFDbContext(DbContextOptions<USCFDbContext> options)
        : base(options)
    {
    }
}
