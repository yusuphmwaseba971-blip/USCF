using Appwrite;
using Appwrite.Services;
namespace CCT_USCF.Services.Appwrite;
public sealed class AppwriteService
{
    public Client Client { get; }
    public Databases Databases { get; }
    public Storage Storage { get; }
    public AppwriteService()
    {
        Client = new Client()
            .SetEndpoint(AppwriteConfig.Endpoint)
            .SetProject(AppwriteConfig.ProjectId);
        Databases = new Databases(Client);
        Storage = new Storage(Client);
    }
}
