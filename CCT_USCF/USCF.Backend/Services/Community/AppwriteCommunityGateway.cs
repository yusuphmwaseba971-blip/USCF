using System.Net;
using System.Net.Http.Json;
using System.Text.Json;
using Appwrite;
using USCF.Backend.Models;
using USCF.Backend.Services.Appwrite;

namespace USCF.Backend.Services.Community;

public sealed class AppwriteCommunityGateway : IAppwriteCommunityGateway
{
    private readonly AppwriteService _appwrite;
    private readonly HttpClient _httpClient;
    private readonly ILogger<AppwriteCommunityGateway> _logger;

    public AppwriteCommunityGateway(
        AppwriteService appwrite,
        ILogger<AppwriteCommunityGateway> logger)
    {
        _appwrite = appwrite;
        _logger = logger;
        _httpClient = new HttpClient
        {
            BaseAddress = new Uri(_appwrite.Endpoint.TrimEnd('/') + "/")
        };
        _httpClient.DefaultRequestHeaders.Add("X-Appwrite-Project", _appwrite.ProjectId);
        _httpClient.DefaultRequestHeaders.Add("X-Appwrite-Key", _appwrite.ApiKey);
    }

    public async Task EnsureTeamAsync(
        string teamId,
        string name,
        CancellationToken cancellationToken = default)
    {
        var existing = await _httpClient.GetAsync($"teams/{Uri.EscapeDataString(teamId)}", cancellationToken);
        if (existing.IsSuccessStatusCode)
            return;

        if (existing.StatusCode != HttpStatusCode.NotFound)
        {
            await ThrowAppwriteErrorAsync(existing, "Unable to inspect Appwrite team.", cancellationToken);
        }

        var response = await _httpClient.PostAsJsonAsync(
            "teams",
            new
            {
                teamId,
                name
            },
            cancellationToken);

        if (response.IsSuccessStatusCode || response.StatusCode == HttpStatusCode.Conflict)
            return;

        await ThrowAppwriteErrorAsync(response, "Unable to create Appwrite team.", cancellationToken);
    }

    public async Task EnsureTeamMembershipAsync(
        string teamId,
        string appwriteUserId,
        string? email,
        CancellationToken cancellationToken = default)
    {
        if (await MembershipExistsAsync(teamId, appwriteUserId, cancellationToken))
            return;

        var response = await _httpClient.PostAsJsonAsync(
            $"teams/{Uri.EscapeDataString(teamId)}/memberships",
            new
            {
                userId = appwriteUserId,
                email = string.IsNullOrWhiteSpace(email) ? null : email.Trim().ToLowerInvariant(),
                roles = new[] { "member" },
                url = _appwrite.TeamInviteUrl
            },
            cancellationToken);

        if (response.IsSuccessStatusCode || response.StatusCode == HttpStatusCode.Conflict)
            return;

        await ThrowAppwriteErrorAsync(response, "Unable to create Appwrite team membership.", cancellationToken);
    }

    public async Task RemoveTeamMembershipAsync(
        string teamId,
        string appwriteUserId,
        CancellationToken cancellationToken = default)
    {
        var membershipId = await FindMembershipIdAsync(teamId, appwriteUserId, cancellationToken);
        if (string.IsNullOrWhiteSpace(membershipId))
            return;

        var response = await _httpClient.DeleteAsync(
            $"teams/{Uri.EscapeDataString(teamId)}/memberships/{Uri.EscapeDataString(membershipId)}",
            cancellationToken);

        if (response.IsSuccessStatusCode || response.StatusCode == HttpStatusCode.NotFound)
            return;

        await ThrowAppwriteErrorAsync(response, "Unable to remove Appwrite team membership.", cancellationToken);
    }

    public async Task<AppwriteGroupMessageRecord> CreateGroupMessageAsync(
        AppwriteGroupMessageRecord message,
        CancellationToken cancellationToken = default)
    {
        var permissions = new List<string>
        {
            Permission.Read(Role.Team(message.AppwriteTeamId))
        };

        var data = new Dictionary<string, object?>
        {
            ["message_id"] = message.MessageId,
            ["client_message_id"] = message.ClientMessageId,
            ["sender_id"] = message.SenderAppwriteUserId,
            ["sender_uid"] = message.SenderFirebaseUid,
            ["sender_name"] = message.SenderName,
            ["content"] = message.Content,
            ["group_id"] = message.CommunityId,
            ["community_id"] = message.CommunityId,
            ["conversation_id"] = message.CommunityId,
            ["organization_type"] = message.OrganizationType,
            ["organization_id"] = message.OrganizationId.ToString(),
            ["appwrite_team_id"] = message.AppwriteTeamId,
            ["message_type"] = message.MessageType,
            ["media_url"] = message.MediaUrl,
            ["thumbnail_url"] = message.ThumbnailUrl,
            ["file_name"] = message.FileName,
            ["file_size"] = message.FileSize,
            ["duration"] = message.Duration,
            ["status"] = "sent",
            ["created_at"] = message.CreatedAtUtc.ToString("O")
        };

        if (string.Equals(message.OrganizationType, "Branch", StringComparison.OrdinalIgnoreCase))
            data["branch_id"] = message.OrganizationId.ToString();
        if (string.Equals(message.OrganizationType, "District", StringComparison.OrdinalIgnoreCase))
            data["district_id"] = message.OrganizationId.ToString();
        if (string.Equals(message.OrganizationType, "Region", StringComparison.OrdinalIgnoreCase))
            data["region_id"] = message.OrganizationId.ToString();

        var document = await _appwrite.Databases.CreateDocument(
            databaseId: _appwrite.DatabaseId,
            collectionId: _appwrite.MessagesCollectionId,
            documentId: message.MessageId,
            data: data,
            permissions: permissions);

        return MapDocument(document, permissions);
    }

    public async Task<IReadOnlyList<AppwriteGroupMessageRecord>> ListGroupMessagesAsync(
        string organizationType,
        int organizationId,
        int limit,
        CancellationToken cancellationToken = default)
    {
        var safeLimit = Math.Clamp(limit, 1, 100);
        var result = await _appwrite.Databases.ListDocuments(
            _appwrite.DatabaseId,
            _appwrite.MessagesCollectionId,
            new List<string>
            {
                Query.Equal("organization_type", organizationType),
                Query.Equal("organization_id", organizationId.ToString()),
                Query.OrderAsc("created_at"),
                Query.Limit(safeLimit)
            },
            null,
            null,
            safeLimit);

        return result.Documents
            .Select(document => MapDocument(document, []))
            .OrderBy(message => message.CreatedAtUtc)
            .ToList();
    }

    private async Task<bool> MembershipExistsAsync(
        string teamId,
        string appwriteUserId,
        CancellationToken cancellationToken)
    {
        return !string.IsNullOrWhiteSpace(
            await FindMembershipIdAsync(teamId, appwriteUserId, cancellationToken));
    }

    private async Task<string?> FindMembershipIdAsync(
        string teamId,
        string appwriteUserId,
        CancellationToken cancellationToken)
    {
        var response = await _httpClient.GetAsync(
            $"teams/{Uri.EscapeDataString(teamId)}/memberships",
            cancellationToken);

        if (response.StatusCode == HttpStatusCode.NotFound)
            return null;

        if (!response.IsSuccessStatusCode)
            await ThrowAppwriteErrorAsync(response, "Unable to inspect Appwrite team memberships.", cancellationToken);

        await using var stream = await response.Content.ReadAsStreamAsync(cancellationToken);
        using var json = await JsonDocument.ParseAsync(stream, cancellationToken: cancellationToken);
        if (!json.RootElement.TryGetProperty("memberships", out var memberships) ||
            memberships.ValueKind != JsonValueKind.Array)
        {
            return null;
        }

        foreach (var membership in memberships.EnumerateArray())
        {
            var membershipUserId = TryGetNestedString(membership, "userId")
                ?? TryGetNestedString(membership, "user", "$id");
            if (!string.Equals(membershipUserId, appwriteUserId, StringComparison.Ordinal))
                continue;

            return TryGetNestedString(membership, "$id");
        }

        return null;
    }

    private static AppwriteGroupMessageRecord MapDocument(
        global::Appwrite.Models.Document document,
        IReadOnlyList<string> permissions)
    {
        var data = document.Data ?? new Dictionary<string, object?>();
        var organizationIdValue = TryGetString(data, "organization_id", "0");
        _ = int.TryParse(organizationIdValue, out var organizationId);

        return new AppwriteGroupMessageRecord
        {
            Id = document.Id,
            MessageId = TryGetString(data, "message_id", document.Id) ?? document.Id,
            ClientMessageId = TryGetString(data, "client_message_id", string.Empty) ?? string.Empty,
            SenderAppwriteUserId = TryGetString(data, "sender_id", string.Empty) ?? string.Empty,
            SenderFirebaseUid = TryGetString(data, "sender_uid", string.Empty) ?? string.Empty,
            SenderName = TryGetString(data, "sender_name", "Community member") ?? "Community member",
            OrganizationType = TryGetString(data, "organization_type", string.Empty) ?? string.Empty,
            OrganizationId = organizationId,
            CommunityId = TryGetString(data, "community_id", TryGetString(data, "group_id", string.Empty)) ?? string.Empty,
            AppwriteTeamId = TryGetString(data, "appwrite_team_id", string.Empty) ?? string.Empty,
            Content = TryGetString(data, "content", string.Empty) ?? string.Empty,
            MessageType = TryGetString(data, "message_type", "text") ?? "text",
            MediaUrl = TryGetString(data, "media_url", string.Empty) ?? string.Empty,
            ThumbnailUrl = TryGetString(data, "thumbnail_url", string.Empty) ?? string.Empty,
            FileName = TryGetString(data, "file_name", string.Empty) ?? string.Empty,
            FileSize = TryGetLong(data, "file_size"),
            Duration = TryGetDouble(data, "duration"),
            CreatedAtUtc = DateTime.TryParse(TryGetString(data, "created_at", document.CreatedAt), out var createdAt)
                ? createdAt
                : DateTime.UtcNow,
            Permissions = permissions
        };
    }

    private static string? TryGetString(
        Dictionary<string, object?> data,
        string key,
        string? fallback)
    {
        return data.TryGetValue(key, out var value) && value != null
            ? Convert.ToString(value)
            : fallback;
    }

    private static long TryGetLong(Dictionary<string, object?> data, string key)
    {
        return data.TryGetValue(key, out var value) && long.TryParse(Convert.ToString(value), out var result)
            ? result
            : 0;
    }

    private static double TryGetDouble(Dictionary<string, object?> data, string key)
    {
        return data.TryGetValue(key, out var value) && double.TryParse(Convert.ToString(value), out var result)
            ? result
            : 0;
    }

    private static string? TryGetNestedString(JsonElement element, params string[] path)
    {
        var current = element;
        foreach (var item in path)
        {
            if (!current.TryGetProperty(item, out current))
                return null;
        }

        return current.ValueKind == JsonValueKind.Null || current.ValueKind == JsonValueKind.Undefined
            ? null
            : current.ToString();
    }

    private async Task ThrowAppwriteErrorAsync(
        HttpResponseMessage response,
        string message,
        CancellationToken cancellationToken)
    {
        var body = await response.Content.ReadAsStringAsync(cancellationToken);
        _logger.LogWarning(
            "{Message} Appwrite status: {StatusCode}. Response body omitted from client response.",
            message,
            (int)response.StatusCode);

        throw new InvalidOperationException($"{message} Appwrite status: {(int)response.StatusCode}.");
    }
}
