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
        try
        {
            var canConnect = await _dbContext.Database.CanConnectAsync();

            if (!canConnect)
            {
                return StatusCode(StatusCodes.Status503ServiceUnavailable, new
                {
                    status = "degraded",
                    application = "USCF Backend",
                    database = new { status = "unavailable" }
                });
            }

            // Try to obtain the current database name in a provider-agnostic way
            string dbName = "unknown";
            try
            {
                var conn = _dbContext.Database.GetDbConnection();
                await _dbContext.Database.OpenConnectionAsync();
                using var cmd = conn.CreateCommand();
                // Try PostgreSQL function first
                cmd.CommandText = "SELECT current_database()";
                var result = await cmd.ExecuteScalarAsync();
                dbName = result?.ToString() ?? "unknown";
            }
            catch
            {
                // ignore, leave dbName unknown
            }

            return Ok(new
            {
                status = "ok",
                application = "USCF Backend",
                database = new { status = "healthy", name = dbName }
            });
        }
        catch (Exception ex)
        {
            return StatusCode(StatusCodes.Status503ServiceUnavailable, new
            {
                status = "degraded",
                application = "USCF Backend",
                error = ex.Message
            });
        }
    }
}
