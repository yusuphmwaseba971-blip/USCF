using Appwrite;
using Appwrite.Services;

namespace CCT_USCF.Services.Appwrite;

public sealed class AppwriteService
{
    public const string Endpoint = "https://cloud.appwrite.io/v1";
    public const string ProjectId = "project-sgp-cct-uscf";
    public const string DatabaseId = "cct-uscf-db";
    public const string MessagesCollectionId = "community_messages";

    public Client Client { get; }
    public Account Account { get; }
    public Databases Databases { get; }
    public Storage Storage { get; }

    public AppwriteService()
    {
        Client = new Client()
            .SetEndpoint(Endpoint)
            .SetProject(ProjectId);

        Account = new Account(Client);
        Databases = new Databases(Client);
        Storage = new Storage(Client);
    }
}