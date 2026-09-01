namespace USCF.Backend.DTOs.Identity;

public sealed class FirebaseIdentityBridgeResponse
{
    public bool Success { get; set; }

    public string FirebaseUid { get; set; } = string.Empty;

    public string AppwriteUserId { get; set; } = string.Empty;
}
