using Appwrite;
using Appwrite.Models;
using Appwrite.Services;

namespace USCF.Backend.Services.Appwrite;

public sealed class AppwriteService
{
    private readonly TablesDB _tables;

    private readonly string _databaseId;
    private readonly string _usersTableId;

    public AppwriteService(IConfiguration configuration)
    {
        var endpoint = configuration["Appwrite:Endpoint"]
            ?? throw new InvalidOperationException(
                "Appwrite:Endpoint is not configured.");

        var projectId = configuration["Appwrite:ProjectId"]
            ?? throw new InvalidOperationException(
                "Appwrite:ProjectId is not configured.");

        var apiKey = configuration["Appwrite:ApiKey"]
            ?? throw new InvalidOperationException(
                "Appwrite:ApiKey is not configured.");

        _databaseId = configuration["Appwrite:DatabaseId"]
            ?? throw new InvalidOperationException(
                "Appwrite:DatabaseId is not configured.");

        _usersTableId = configuration["Appwrite:UsersTableId"]
            ?? throw new InvalidOperationException(
                "Appwrite:UsersTableId is not configured.");

        var client = new Client()
            .SetEndpoint(endpoint)
            .SetProject(projectId)
            .SetKey(apiKey);

        _tables = new TablesDB(client);
    }

    public async Task<Row> CreateUserAsync(
        string userId,
        string name,
        string email,
        string? phone)
    {
        var data = new Dictionary<string, object?>
        {
            ["user_id"] = userId,
            ["name"] = name,
            ["email"] = email,
            ["phone"] = phone
        };

        return await _tables.CreateRow(
            databaseId: _databaseId,
            tableId: _usersTableId,
            rowId: ID.Unique(),
            data: data
        );
    }
}