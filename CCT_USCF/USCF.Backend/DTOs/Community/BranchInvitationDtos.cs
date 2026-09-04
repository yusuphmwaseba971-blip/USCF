namespace USCF.Backend.DTOs.Community;

public sealed class CreateBranchInvitationRequest
{
    public int BranchId { get; set; }
}

public sealed class BranchInvitationDto
{
    public string InvitationId { get; set; } = string.Empty;
    public int BranchId { get; set; }
    public string BranchName { get; set; } = string.Empty;
    public DateTime ExpiresAtUtc { get; set; }
    public string Url { get; set; } = string.Empty;
}

public sealed class AcceptBranchInvitationRequest
{
    public string Token { get; set; } = string.Empty;
}
