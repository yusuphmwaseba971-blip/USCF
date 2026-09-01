using Appwrite;
using Appwrite.Services;

namespace USCF.Backend.Services.Appwrite;

public class AppwriteService
{
    private readonly Client _client;

    public Databases Databases { get; }
    public Storage Storage { get; }
    public Users Users { get; }

    public string Endpoint { get; }
    public string ProjectId { get; }
    public string ApiKey { get; }
    public string DatabaseId { get; }
    public string UsersTableId { get; }
    public string MessagesCollectionId { get; }
    public string TeamInviteUrl { get; }

    public AppwriteService(IConfiguration configuration)
    {
        Endpoint = configuration["Appwrite:Endpoint"]
            ?? throw new InvalidOperationException(
                "Appwrite endpoint is not configured.");

        ProjectId = configuration["Appwrite:ProjectId"]
            ?? throw new InvalidOperationException(
                "Appwrite project ID is not configured.");

        ApiKey = configuration["Appwrite:ApiKey"]
            ?? throw new InvalidOperationException(
                "Appwrite API key is not configured.");

        DatabaseId = configuration["Appwrite:DatabaseId"]
            ?? throw new InvalidOperationException(
                "Appwrite database ID is not configured.");

        UsersTableId = configuration["Appwrite:UsersTableId"]
            ?? throw new InvalidOperationException(
                "Appwrite users table ID is not configured.");

        MessagesCollectionId = configuration["Appwrite:MessagesCollectionId"]
            ?? "messages";

        TeamInviteUrl = configuration["Appwrite:TeamInviteUrl"]
            ?? "cctuscf://appwrite-team-membership";

        _client = new Client()
            .SetEndpoint(Endpoint)
            .SetProject(ProjectId)
            .SetKey(ApiKey);

        Databases = new Databases(_client);
        Storage = new Storage(_client);
        Users = new Users(_client);
    }
}
