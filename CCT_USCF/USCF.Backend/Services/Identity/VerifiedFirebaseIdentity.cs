namespace USCF.Backend.Services.Identity;

public sealed record VerifiedFirebaseIdentity(
    string FirebaseUid,
    string ProjectId,
    string? Email,
    string? DisplayName);
