using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.Hosting;
using System;
using System.Data.SqlClient;
using USCF.Backend.Data;

namespace USCF.Backend.Controllers
{
    [ApiController]
    [Route("api/[controller]")]
    public class DiagnosticsController : ControllerBase
    {
        private readonly IConfiguration _config;
        private readonly IHostEnvironment _env;
        private readonly USCFDbContext _db;

        public DiagnosticsController(IConfiguration config, IHostEnvironment env, USCFDbContext db)
        {
            _config = config;
            _env = env;
            _db = db;
        }

        [HttpGet("health")]
        public IActionResult Health()
        {
            return Ok(new { status = "ok" });
        }

        [HttpGet("auth/diagnostics")]
        public IActionResult AuthDiagnostics()
        {
            if (!_env.IsDevelopment()) return NotFound();

            var issuer = _config["Authentication:Issuer"] ?? "(not set)";
            var audience = _config["Authentication:Audience"] ?? "(not set)";
            var keyConfigured = !string.IsNullOrEmpty(_config["Authentication:JwtSigningKey"]);
            bool dbOk = false;
            try
            {
                // quick DB connectivity check
                _db.Database.CanConnect();
                dbOk = true;
            }
            catch { dbOk = false; }

            return Ok(new
            {
                serverTimeUtc = DateTime.UtcNow,
                environment = _env.EnvironmentName,
                issuer,
                audience,
                signingKeyConfigured = keyConfigured,
                databaseReachable = dbOk
            });
        }
    }
}
