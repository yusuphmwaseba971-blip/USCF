namespace USCF.Backend.Services;

public sealed class MediaCleanupHostedService : BackgroundService
{
    private readonly IServiceScopeFactory _scopeFactory;
    private readonly ILogger<MediaCleanupHostedService> _logger;

    public MediaCleanupHostedService(IServiceScopeFactory scopeFactory, ILogger<MediaCleanupHostedService> logger)
    {
        _scopeFactory = scopeFactory;
        _logger = logger;
    }

    protected override async Task ExecuteAsync(CancellationToken stoppingToken)
    {
        while (!stoppingToken.IsCancellationRequested)
        {
            using var scope = _scopeFactory.CreateScope();
            var cleanup = scope.ServiceProvider.GetRequiredService<MediaCleanupService>();

            try
            {
                await cleanup.RunCleanupAsync();
            }
            catch (Exception ex)
            {
                _logger.LogError(ex, "Temporary media cleanup job failed.");
            }

            await Task.Delay(TimeSpan.FromHours(6), stoppingToken);
        }
    }
}
