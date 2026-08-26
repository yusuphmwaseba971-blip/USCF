using Appwrite;
using Appwrite.Services;

namespace USCF.Backend.Services.Appwrite;

public class AppwriteService
{
    private readonly Client _client;

    public Databases Databases { get; }
    public Storage Storage { get; }

    public string DatabaseId { get; }
    public string UsersTableId { get; }

    public AppwriteService(IConfiguration configuration)
    {
        var endpoint = configuration["Appwrite:Endpoint"]
            ?? throw new InvalidOperationException(
                "Appwrite endpoint is not configured.");

        var projectId = configuration["Appwrite:ProjectId"]
            ?? throw new InvalidOperationException(
                "Appwrite project ID is not configured.");

        var apiKey = configuration["Appwrite:ApiKey"]
            ?? throw new InvalidOperationException(
                "Appwrite API key is not configured.");

        DatabaseId = configuration["Appwrite:DatabaseId"]
            ?? throw new InvalidOperationException(
                "Appwrite database ID is not configured.");

        UsersTableId = configuration["Appwrite:UsersTableId"]
            ?? throw new InvalidOperationException(
                "Appwrite users table ID is not configured.");

        _client = new Client()
            .SetEndpoint(endpoint)
            .SetProject(projectId)
            .SetKey(apiKey);

        Databases = new Databases(_client);
        Storage = new Storage(_client);
    }
}