namespace USCF.Backend.DTOs.Community;

public sealed class ResolveTeamResponse
{
    public string OrganizationType { get; set; } = string.Empty;

    public int OrganizationId { get; set; }

    public string AppwriteTeamId { get; set; } = string.Empty;

    public string DisplayName { get; set; } = string.Empty;
}
