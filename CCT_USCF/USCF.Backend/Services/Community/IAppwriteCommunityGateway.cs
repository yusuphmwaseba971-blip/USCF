using USCF.Backend.Models;

namespace USCF.Backend.Services.Community;

public interface IAppwriteCommunityGateway
{
    Task EnsureTeamAsync(
        string teamId,
        string name,
        CancellationToken cancellationToken = default);

    Task EnsureTeamMembershipAsync(
        string teamId,
        string appwriteUserId,
        string? email,
        CancellationToken cancellationToken = default);

    Task RemoveTeamMembershipAsync(
        string teamId,
        string appwriteUserId,
        CancellationToken cancellationToken = default);

    Task<AppwriteGroupMessageRecord> CreateGroupMessageAsync(
        AppwriteGroupMessageRecord message,
        CancellationToken cancellationToken = default);

    Task<IReadOnlyList<AppwriteGroupMessageRecord>> ListGroupMessagesAsync(
        string organizationType,
        int organizationId,
        int limit,
        CancellationToken cancellationToken = default);
}
