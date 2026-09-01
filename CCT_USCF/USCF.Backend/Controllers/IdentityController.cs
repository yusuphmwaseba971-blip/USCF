using Microsoft.AspNetCore.Mvc;
using USCF.Backend.Services.Identity;

namespace USCF.Backend.Controllers;

[ApiController]
[Route("api/identity")]
public sealed class IdentityController : ControllerBase
{
    private readonly FirebaseIdentityBridgeService _identityBridgeService;
    private readonly ILogger<IdentityController> _logger;

    public IdentityController(
        FirebaseIdentityBridgeService identityBridgeService,
        ILogger<IdentityController> logger)
    {
        _identityBridgeService = identityBridgeService;
        _logger = logger;
    }

    [HttpPost("firebase")]
    public async Task<IActionResult> BridgeFirebaseIdentity(
        CancellationToken cancellationToken)
    {
        var firebaseIdToken = GetBearerToken();
        if (string.IsNullOrWhiteSpace(firebaseIdToken))
            return Unauthorized(new { message = "Firebase ID token is required." });

        try
        {
            var response = await _identityBridgeService.BridgeAsync(
                firebaseIdToken,
                cancellationToken);

            return Ok(response);
        }
        catch (FirebaseTokenVerificationException ex)
        {
            _logger.LogWarning(
                ex,
                "Firebase identity bridge rejected an unauthorized request.");

            return Unauthorized(new { message = "Invalid Firebase ID token." });
        }
    }

    private string? GetBearerToken()
    {
        var authorization = Request.Headers.Authorization.ToString();
        const string bearerPrefix = "Bearer ";

        if (string.IsNullOrWhiteSpace(authorization) ||
            !authorization.StartsWith(bearerPrefix, StringComparison.OrdinalIgnoreCase))
        {
            return null;
        }

        var token = authorization[bearerPrefix.Length..].Trim();
        return string.IsNullOrWhiteSpace(token) ? null : token;
    }
}
