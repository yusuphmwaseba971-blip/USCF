using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using USCF.Backend.Data;

namespace USCF.Backend.Controllers;

[ApiController]
public class HealthController : ControllerBase
{
    private readonly USCFDbContext _dbContext;

    public HealthController(USCFDbContext dbContext)
    {
        _dbContext = dbContext;
    }

    [HttpGet("/health")]
    public async Task<IActionResult> GetAsync()
    {
        var databaseName = "unknown";

        try
        {
            await _dbContext.Database.OpenConnectionAsync();
            using var command = _dbContext.Database.GetDbConnection().CreateCommand();
            command.CommandText = "SELECT DB_NAME()";
            var result = await command.ExecuteScalarAsync();
            databaseName = result?.ToString() ?? "unknown";

            if (string.IsNullOrWhiteSpace(databaseName) || !string.Equals(databaseName, "USCF_DB", StringComparison.OrdinalIgnoreCase))
            {
                return StatusCode(StatusCodes.Status503ServiceUnavailable, new
                {
                    status = "degraded",
                    application = "USCF Backend",
                    database = new
                    {
                        status = "unexpected_database",
                        name = databaseName
                    }
                });
            }

            return Ok(new
            {
                status = "ok",
                application = "USCF Backend",
                database = new
                {
                    status = "healthy",
                    name = databaseName
                }
            });
        }
        catch (Exception)
        {
            return StatusCode(StatusCodes.Status503ServiceUnavailable, new
            {
                status = "degraded",
                application = "USCF Backend",
                database = new
                {
                    status = "unavailable",
                    name = databaseName
                }
            });
        }
    }
}
