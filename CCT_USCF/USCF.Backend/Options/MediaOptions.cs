namespace USCF.Backend.Options;

public class MediaOptions
{
    public const string SectionName = "Media";

    public int MaxLeaderImagesPerDay { get; set; } = 5;
    public int MaxLeaderVideosPerDay { get; set; } = 3;
    public int MaxVideoSizeMb { get; set; } = 50;
    public int TemporaryMediaRetentionDays { get; set; } = 7;
    public int MaxBibleAudioDurationSeconds { get; set; } = 30;
    public long MaxBibleAudioFileSizeBytes { get; set; } = 5 * 1024 * 1024;
    public long MediaWarningThresholdGb { get; set; } = 15;
    public long MediaHardLimitGb { get; set; } = 20;
    public string UploadRootRelativePath { get; set; } = "uploads";

    public long WarningThresholdBytes => MediaWarningThresholdGb * 1024L * 1024L * 1024L;
    public long HardLimitBytes => MediaHardLimitGb * 1024L * 1024L * 1024L;
    public long MaxVideoSizeBytes => MaxVideoSizeMb * 1024L * 1024L;
}
