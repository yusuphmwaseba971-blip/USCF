using USCF.Backend.Models;
using USCF.Backend.Services.Identity;

namespace USCF.Backend.Services.Community;

public sealed record AuthenticatedCommunityUser(
    VerifiedFirebaseIdentity FirebaseIdentity,
    FirebaseAppwriteIdentityMapping AppwriteMapping,
    User User);
