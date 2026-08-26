using Appwrite;
using Appwrite.Services;

namespace CCT_USCF.Services;

public sealed class AppwriteService
{
    private readonly Client _client;

    public Databases Databases { get; }
    public Storage Storage { get; }
    public Account Account { get; }

    public AppwriteService()
    {
        _client = new Client()
            .SetEndpoint("https://sgp.cloud.appwrite.io/v1")
            .SetProject("cct-uscf");

        Account = new Account(_client);
        Databases = new Databases(_client);
        Storage = new Storage(_client);
    }
}