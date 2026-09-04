namespace USCF.Backend.Models;

public sealed class AppwriteGroupMessageRecord
{
    public string Id { get; set; } = string.Empty;

    public string MessageId { get; set; } = string.Empty;
    public string ClientMessageId { get; set; } = string.Empty;

    public string SenderAppwriteUserId { get; set; } = string.Empty;

    public string SenderFirebaseUid { get; set; } = string.Empty;

    public string SenderName { get; set; } = string.Empty;

    public string OrganizationType { get; set; } = string.Empty;

    public int OrganizationId { get; set; }

    public string CommunityId { get; set; } = string.Empty;

    public string AppwriteTeamId { get; set; } = string.Empty;

    public string Content { get; set; } = string.Empty;

    public string MessageType { get; set; } = "text";

    public string MediaUrl { get; set; } = string.Empty;

    public string ThumbnailUrl { get; set; } = string.Empty;

    public string FileName { get; set; } = string.Empty;

    public long FileSize { get; set; }

    public double Duration { get; set; }

    public DateTime CreatedAtUtc { get; set; } = DateTime.UtcNow;

    public DateTime? UpdatedAtUtc { get; set; }

    public IReadOnlyList<string> Permissions { get; set; } = [];
}
