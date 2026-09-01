namespace USCF.Backend.Services.Community;

public sealed record CctOrganizationContext(
    string OrganizationType,
    int OrganizationId,
    string DisplayName)
{
    public string StableKey => $"{OrganizationType.ToLowerInvariant()}:{OrganizationId}";
}
