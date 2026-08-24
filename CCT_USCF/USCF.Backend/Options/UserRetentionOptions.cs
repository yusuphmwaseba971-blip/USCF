namespace USCF.Backend.Options;

public class UserRetentionOptions
{
    public const string SectionName = "UserRetention";

    public int UserDataRetentionDays { get; set; } = 365;
    public bool Enabled { get; set; } = true;
}
