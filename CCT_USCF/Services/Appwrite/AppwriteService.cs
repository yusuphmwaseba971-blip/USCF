using Appwrite;
using Appwrite.Services;

namespace CCT_USCF.Services.Appwrite;

public sealed class AppwriteService
{
    public Client Client { get; }
    public Account Account { get; }
    public Databases Databases { get; }
    public Storage Storage { get; }

    public AppwriteService()
    {
        Client = new Client()
            .SetEndpoint(AppwriteConfig.Endpoint)
            .SetProject(AppwriteConfig.ProjectId);

        Account = new Account(Client);
        Databases = new Databases(Client);
        Storage = new Storage(Client);
    }
}