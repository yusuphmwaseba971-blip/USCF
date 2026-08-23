namespace USCF.Backend.DTOs
{
    public class UpdateProfileRequest
    {
        public string? FullName { get; set; }
        public string? Username { get; set; }
        public string? Email { get; set; }

        // For password change
        public string? CurrentPassword { get; set; }
        public string? NewPassword { get; set; }
        public string? ConfirmNewPassword { get; set; }
    }
}