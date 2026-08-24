namespace USCF.Backend.Services;

public sealed class UserRetentionHostedService : BackgroundService
{
    private readonly IServiceScopeFactory _scopeFactory;
    private readonly ILogger<UserRetentionHostedService> _logger;

    public UserRetentionHostedService(IServiceScopeFactory scopeFactory, ILogger<UserRetentionHostedService> logger)
    {
        _scopeFactory = scopeFactory;
        _logger = logger;
    }

    protected override async Task ExecuteAsync(CancellationToken stoppingToken)
    {
        while (!stoppingToken.IsCancellationRequested)
        {
            using var scope = _scopeFactory.CreateScope();
            var retention = scope.ServiceProvider.GetRequiredService<UserRetentionCleanupService>();

            try
            {
                await retention.RunRetentionCleanupAsync();
            }
            catch (Exception ex)
            {
                _logger.LogError(ex, "User retention job failed.");
            }

            await Task.Delay(TimeSpan.FromHours(24), stoppingToken);
        }
    }
}
