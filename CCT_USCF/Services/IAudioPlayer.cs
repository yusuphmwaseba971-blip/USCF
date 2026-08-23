namespace CCT_USCF.Services;

public interface IAudioPlayer
{
    Task LoadAsync(string filePath);
    void Play();
    void Pause();
    void Stop();
    bool IsPlaying { get; }
    double Position { get; }
    double Duration { get; }
    void Seek(double seconds);
    void Release();
    event Action? PlaybackEnded;
}