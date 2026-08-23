#if ANDROID
using Android.Media;
using System.Threading.Tasks;
using System;

namespace CCT_USCF.Services;

public class AndroidAudioPlayer : IAudioPlayer
{
    private MediaPlayer? _player;
    private string? _path;

    public event Action? PlaybackEnded;

    public async Task LoadAsync(string filePath)
    {
        Release();
        _player = new MediaPlayer();
        _path = filePath;
        try
        {
            _player.SetDataSource(filePath);
            var tcs = new TaskCompletionSource<bool>();
            _player.Prepared += (s, e) => tcs.TrySetResult(true);
            _player.PrepareAsync();
            await tcs.Task;
            _player.Completion += (s, e) => PlaybackEnded?.Invoke();
        }
        catch
        {
            Release();
            throw;
        }
    }

    public void Play()
    {
        if (_player == null) return;
        _player.Start();
    }

    public void Pause()
    {
        if (_player == null) return;
        if (_player.IsPlaying) _player.Pause();
    }

    public void Stop()
    {
        if (_player == null) return;
        if (_player.IsPlaying) _player.Stop();
        try { _player.Prepare(); } catch {}
    }

    public bool IsPlaying => _player?.IsPlaying ?? false;

    public double Position => (_player?.CurrentPosition ?? 0) / 1000.0;

    public double Duration => (_player?.Duration ?? 0) / 1000.0;

    public void Seek(double seconds)
    {
        if (_player == null) return;
        var ms = (int)(seconds * 1000);
        _player.SeekTo(ms);
    }

    public void Release()
    {
        if (_player == null) return;
        try
        {
            _player.Stop();
        }
        catch {}
        _player.Release();
        _player.Dispose();
        _player = null;
    }
}
#endif