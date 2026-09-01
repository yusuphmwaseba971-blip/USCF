namespace USCF.Backend.Models;

public sealed class AppwriteGroupMessageRecord
{
    public string Id { get; set; } = string.Empty;

    public string MessageId { get; set; } = string.Empty;

    public string SenderAppwriteUserId { get; set; } = string.Empty;

    public string SenderFirebaseUid { get; set; } = string.Empty;

    public string SenderName { get; set; } = string.Empty;

    public string OrganizationType { get; set; } = string.Empty;

    public int OrganizationId { get; set; }

    public string CommunityId { get; set; } = string.Empty;

    public string AppwriteTeamId { get; set; } = string.Empty;

    public string Content { get; set; } = string.Empty;

    public string MessageType { get; set; } = "text";

    public DateTime CreatedAtUtc { get; set; } = DateTime.UtcNow;

    public IReadOnlyList<string> Permissions { get; set; } = [];
}
