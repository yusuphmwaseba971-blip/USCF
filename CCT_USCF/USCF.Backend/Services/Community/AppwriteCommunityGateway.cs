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
            BaseAddress = new Uri(
                _appwrite.Endpoint.TrimEnd('/') + "/")
        };

        _httpClient.DefaultRequestHeaders.Add(
            "X-Appwrite-Project",
            _appwrite.ProjectId);

        _httpClient.DefaultRequestHeaders.Add(
            "X-Appwrite-Key",
            _appwrite.ApiKey);
    }

    // ============================================================
    // APPWRITE TEAMS
    // ============================================================

    public async Task EnsureTeamAsync(
        string teamId,
        string name,
        CancellationToken cancellationToken = default)
    {
        if (string.IsNullOrWhiteSpace(teamId))
            throw new ArgumentException(
                "Appwrite team ID is required.",
                nameof(teamId));

        if (string.IsNullOrWhiteSpace(name))
            throw new ArgumentException(
                "Appwrite team name is required.",
                nameof(name));

        var encodedTeamId = Uri.EscapeDataString(teamId.Trim());

        var existing = await _httpClient.GetAsync(
            $"teams/{encodedTeamId}",
            cancellationToken);

        if (existing.IsSuccessStatusCode)
            return;

        if (existing.StatusCode != HttpStatusCode.NotFound)
        {
            await ThrowAppwriteErrorAsync(
                existing,
                "Unable to inspect Appwrite team.",
                cancellationToken);
        }

        var response = await _httpClient.PostAsJsonAsync(
            "teams",
            new
            {
                teamId = teamId.Trim(),
                name = name.Trim()
            },
            cancellationToken);

        if (response.IsSuccessStatusCode ||
            response.StatusCode == HttpStatusCode.Conflict)
        {
            return;
        }

        await ThrowAppwriteErrorAsync(
            response,
            "Unable to create Appwrite team.",
            cancellationToken);
    }

    public async Task EnsureTeamMembershipAsync(
        string teamId,
        string appwriteUserId,
        string? email,
        CancellationToken cancellationToken = default)
    {
        if (string.IsNullOrWhiteSpace(teamId))
            throw new ArgumentException(
                "Appwrite team ID is required.",
                nameof(teamId));

        if (string.IsNullOrWhiteSpace(appwriteUserId))
            throw new ArgumentException(
                "Appwrite user ID is required.",
                nameof(appwriteUserId));

        if (await MembershipExistsAsync(
                teamId,
                appwriteUserId,
                cancellationToken))
        {
            return;
        }

        var response = await _httpClient.PostAsJsonAsync(
            $"teams/{Uri.EscapeDataString(teamId.Trim())}/memberships",
            new
            {
                userId = appwriteUserId.Trim(),
                email = string.IsNullOrWhiteSpace(email)
                    ? null
                    : email.Trim().ToLowerInvariant(),
                roles = new[] { "member" },
                url = _appwrite.TeamInviteUrl
            },
            cancellationToken);

        if (response.IsSuccessStatusCode ||
            response.StatusCode == HttpStatusCode.Conflict)
        {
            return;
        }

        await ThrowAppwriteErrorAsync(
            response,
            "Unable to create Appwrite team membership.",
            cancellationToken);
    }

    public async Task RemoveTeamMembershipAsync(
        string teamId,
        string appwriteUserId,
        CancellationToken cancellationToken = default)
    {
        if (string.IsNullOrWhiteSpace(teamId) ||
            string.IsNullOrWhiteSpace(appwriteUserId))
        {
            return;
        }

        var membershipId = await FindMembershipIdAsync(
            teamId,
            appwriteUserId,
            cancellationToken);

        if (string.IsNullOrWhiteSpace(membershipId))
            return;

        var response = await _httpClient.DeleteAsync(
            $"teams/{Uri.EscapeDataString(teamId.Trim())}/memberships/" +
            $"{Uri.EscapeDataString(membershipId)}",
            cancellationToken);

        if (response.IsSuccessStatusCode ||
            response.StatusCode == HttpStatusCode.NotFound)
        {
            return;
        }

        await ThrowAppwriteErrorAsync(
            response,
            "Unable to remove Appwrite team membership.",
            cancellationToken);
    }

    // ============================================================
    // COMMUNITY MESSAGES - CREATE
    // ============================================================

    public async Task<AppwriteGroupMessageRecord> CreateGroupMessageAsync(
        AppwriteGroupMessageRecord message,
        CancellationToken cancellationToken = default)
    {
        ArgumentNullException.ThrowIfNull(message);

        if (string.IsNullOrWhiteSpace(message.MessageId))
            throw new ArgumentException(
                "Message ID is required.",
                nameof(message));

        if (string.IsNullOrWhiteSpace(message.CommunityId))
            throw new ArgumentException(
                "Community ID is required.",
                nameof(message));

        if (string.IsNullOrWhiteSpace(message.AppwriteTeamId))
            throw new ArgumentException(
                "Appwrite team ID is required.",
                nameof(message));

        if (string.IsNullOrWhiteSpace(message.OrganizationType))
            throw new ArgumentException(
                "Organization type is required.",
                nameof(message));

        _logger.LogInformation(
            "[APPWRITE_MESSAGE_CREATE] Starting create. " +
            "MessageId={MessageId}, ClientMessageId={ClientMessageId}, " +
            "CommunityId={CommunityId}, OrganizationType={OrganizationType}, " +
            "OrganizationId={OrganizationId}, TeamId={TeamId}",
            message.MessageId,
            message.ClientMessageId,
            message.CommunityId,
            message.OrganizationType,
            message.OrganizationId,
            message.AppwriteTeamId);

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

        if (string.Equals(
                message.OrganizationType,
                "Branch",
                StringComparison.OrdinalIgnoreCase))
        {
            data["branch_id"] =
                message.OrganizationId.ToString();
        }
        else if (string.Equals(
                     message.OrganizationType,
                     "District",
                     StringComparison.OrdinalIgnoreCase))
        {
            data["district_id"] =
                message.OrganizationId.ToString();
        }
        else if (string.Equals(
                     message.OrganizationType,
                     "Region",
                     StringComparison.OrdinalIgnoreCase))
        {
            data["region_id"] =
                message.OrganizationId.ToString();
        }

        _logger.LogInformation(
            "[APPWRITE_MESSAGE_CREATE] Calling Appwrite. " +
            "Database={DatabaseId}, Collection={CollectionId}, " +
            "DocumentId={DocumentId}, MessageId={MessageId}",
            _appwrite.DatabaseId,
            _appwrite.MessagesCollectionId,
            message.MessageId,
            message.MessageId);

        var document = await _appwrite.Databases.CreateDocument(
            databaseId: _appwrite.DatabaseId,
            collectionId: _appwrite.MessagesCollectionId,
            documentId: message.MessageId,
            data: data,
            permissions: permissions);

        _logger.LogInformation(
            "[APPWRITE_MESSAGE_CREATE] Appwrite document created. " +
            "DocumentId={DocumentId}, RequestedMessageId={RequestedMessageId}",
            document.Id,
            message.MessageId);

        var mappedMessage = MapDocument(
            document,
            permissions);

        _logger.LogInformation(
            "[APPWRITE_MESSAGE_CREATE] Mapped response. " +
            "DocumentId={DocumentId}, MessageId={MessageId}, " +
            "ClientMessageId={ClientMessageId}, CommunityId={CommunityId}, " +
            "OrganizationType={OrganizationType}, OrganizationId={OrganizationId}",
            mappedMessage.Id,
            mappedMessage.MessageId,
            mappedMessage.ClientMessageId,
            mappedMessage.CommunityId,
            mappedMessage.OrganizationType,
            mappedMessage.OrganizationId);

        if (string.IsNullOrWhiteSpace(mappedMessage.MessageId))
        {
            _logger.LogError(
                "[APPWRITE_MESSAGE_CREATE] CRITICAL: Appwrite returned " +
                "a document but MessageId is empty. " +
                "DocumentId={DocumentId}",
                document.Id);

            throw new InvalidOperationException(
                "Appwrite created the message document, but the returned message ID is empty.");
        }

        return mappedMessage;
    }

    // ============================================================
    // COMMUNITY MESSAGES - LIST
    // ============================================================

    public async Task<IReadOnlyList<AppwriteGroupMessageRecord>>
        ListGroupMessagesAsync(
            string organizationType,
            int organizationId,
            int limit,
            CancellationToken cancellationToken = default)
    {
        if (string.IsNullOrWhiteSpace(organizationType))
            throw new ArgumentException(
                "Organization type is required.",
                nameof(organizationType));

        if (organizationId <= 0)
            throw new ArgumentOutOfRangeException(
                nameof(organizationId),
                "Organization ID must be greater than zero.");

        var safeLimit = Math.Clamp(limit, 1, 100);

        _logger.LogInformation(
            "[APPWRITE_MESSAGE_LIST] Starting list. " +
            "Database={DatabaseId}, Collection={CollectionId}, " +
            "OrganizationType={OrganizationType}, OrganizationId={OrganizationId}, " +
            "Limit={Limit}",
            _appwrite.DatabaseId,
            _appwrite.MessagesCollectionId,
            organizationType,
            organizationId,
            safeLimit);

        var result = await _appwrite.Databases.ListDocuments(
            _appwrite.DatabaseId,
            _appwrite.MessagesCollectionId,
            new List<string>
            {
                Query.Equal(
                    "organization_type",
                    organizationType.Trim()),

                Query.Equal(
                    "organization_id",
                    organizationId.ToString()),

                Query.OrderAsc("created_at"),

                Query.Limit(safeLimit)
            },
            null,
            null,
            safeLimit);

        var documents = result.Documents ?? [];

        _logger.LogInformation(
            "[APPWRITE_MESSAGE_LIST] Appwrite returned {Count} documents.",
            documents.Count);

        var messages = documents
            .Select(document =>
                MapDocument(document, []))
            .OrderBy(message =>
                message.CreatedAtUtc)
            .ToList();

        _logger.LogInformation(
            "[APPWRITE_MESSAGE_LIST] Mapping complete. " +
            "MessageCount={Count}",
            messages.Count);

        foreach (var message in messages)
        {
            _logger.LogDebug(
                "[APPWRITE_MESSAGE_LIST] Message. " +
                "DocumentId={DocumentId}, MessageId={MessageId}, " +
                "ClientMessageId={ClientMessageId}, CreatedAt={CreatedAt}",
                message.Id,
                message.MessageId,
                message.ClientMessageId,
                message.CreatedAtUtc);
        }

        return messages;
    }

    // ============================================================
    // TEAM MEMBERSHIP LOOKUP
    // ============================================================

    private async Task<bool> MembershipExistsAsync(
        string teamId,
        string appwriteUserId,
        CancellationToken cancellationToken)
    {
        return !string.IsNullOrWhiteSpace(
            await FindMembershipIdAsync(
                teamId,
                appwriteUserId,
                cancellationToken));
    }

    private async Task<string?> FindMembershipIdAsync(
        string teamId,
        string appwriteUserId,
        CancellationToken cancellationToken)
    {
        var response = await _httpClient.GetAsync(
            $"teams/{Uri.EscapeDataString(teamId.Trim())}/memberships",
            cancellationToken);

        if (response.StatusCode == HttpStatusCode.NotFound)
            return null;

        if (!response.IsSuccessStatusCode)
        {
            await ThrowAppwriteErrorAsync(
                response,
                "Unable to inspect Appwrite team memberships.",
                cancellationToken);
        }

        await using var stream =
            await response.Content.ReadAsStreamAsync(
                cancellationToken);

        using var json =
            await JsonDocument.ParseAsync(
                stream,
                cancellationToken: cancellationToken);

        if (!json.RootElement.TryGetProperty(
                "memberships",
                out var memberships) ||
            memberships.ValueKind != JsonValueKind.Array)
        {
            return null;
        }

        foreach (var membership in
                 memberships.EnumerateArray())
        {
            var membershipUserId =
                TryGetNestedString(
                    membership,
                    "userId")
                ?? TryGetNestedString(
                    membership,
                    "user",
                    "$id");

            if (!string.Equals(
                    membershipUserId,
                    appwriteUserId,
                    StringComparison.Ordinal))
            {
                continue;
            }

            return TryGetNestedString(
                membership,
                "$id");
        }

        return null;
    }

    // ============================================================
    // APPWRITE DOCUMENT -> DOMAIN MODEL
    // ============================================================

    private static AppwriteGroupMessageRecord MapDocument(
        global::Appwrite.Models.Document document,
        IReadOnlyList<string> permissions)
    {
        var data =
            document.Data ??
            new Dictionary<string, object?>();

        var organizationIdValue =
            TryGetString(
                data,
                "organization_id",
                "0");

        _ = int.TryParse(
            organizationIdValue,
            out var organizationId);

        var messageId =
            TryGetString(
                data,
                "message_id",
                document.Id)
            ?? document.Id;

        var clientMessageId =
            TryGetString(
                data,
                "client_message_id",
                string.Empty)
            ?? string.Empty;

        var communityId =
            TryGetString(
                data,
                "community_id",
                null)
            ?? TryGetString(
                data,
                "group_id",
                string.Empty)
            ?? string.Empty;

        var createdAtText =
            TryGetString(
                data,
                "created_at",
                document.CreatedAt);

        var createdAt =
            DateTime.TryParse(
                createdAtText,
                out var parsedCreatedAt)
                ? parsedCreatedAt
                : document.CreatedAt != null &&
                  DateTime.TryParse(
                      document.CreatedAt,
                      out var documentCreatedAt)
                    ? documentCreatedAt
                    : DateTime.UtcNow;

        return new AppwriteGroupMessageRecord
        {
            Id = document.Id,

            // IMPORTANT:
            // Appwrite stores the client-generated message ID
            // in message_id. Fall back to $id only if missing.
            MessageId = messageId,

            ClientMessageId = clientMessageId,

            SenderAppwriteUserId =
                TryGetString(
                    data,
                    "sender_id",
                    string.Empty)
                ?? string.Empty,

            SenderFirebaseUid =
                TryGetString(
                    data,
                    "sender_uid",
                    string.Empty)
                ?? string.Empty,

            SenderName =
                TryGetString(
                    data,
                    "sender_name",
                    "Community member")
                ?? "Community member",

            OrganizationType =
                TryGetString(
                    data,
                    "organization_type",
                    string.Empty)
                ?? string.Empty,

            OrganizationId =
                organizationId,

            CommunityId =
                communityId,

            AppwriteTeamId =
                TryGetString(
                    data,
                    "appwrite_team_id",
                    string.Empty)
                ?? string.Empty,

            Content =
                TryGetString(
                    data,
                    "content",
                    string.Empty)
                ?? string.Empty,

            MessageType =
                TryGetString(
                    data,
                    "message_type",
                    "text")
                ?? "text",

            MediaUrl =
                TryGetString(
                    data,
                    "media_url",
                    string.Empty)
                ?? string.Empty,

            ThumbnailUrl =
                TryGetString(
                    data,
                    "thumbnail_url",
                    string.Empty)
                ?? string.Empty,

            FileName =
                TryGetString(
                    data,
                    "file_name",
                    string.Empty)
                ?? string.Empty,

            FileSize =
                TryGetLong(
                    data,
                    "file_size"),

            Duration =
                TryGetDouble(
                    data,
                    "duration"),

            CreatedAtUtc =
                createdAt,

            Permissions =
                permissions
        };
    }

    // ============================================================
    // APPWRITE DATA HELPERS
    // ============================================================

    private static string? TryGetString(
        Dictionary<string, object?> data,
        string key,
        string? fallback)
    {
        if (!data.TryGetValue(key, out var value) ||
            value == null)
        {
            return fallback;
        }

        return Convert.ToString(value);
    }

    private static long TryGetLong(
        Dictionary<string, object?> data,
        string key)
    {
        if (!data.TryGetValue(
                key,
                out var value) ||
            value == null)
        {
            return 0;
        }

        if (value is long longValue)
            return longValue;

        if (value is int intValue)
            return intValue;

        if (value is double doubleValue)
            return Convert.ToInt64(doubleValue);

        return long.TryParse(
            Convert.ToString(value),
            out var result)
            ? result
            : 0;
    }

    private static double TryGetDouble(
        Dictionary<string, object?> data,
        string key)
    {
        if (!data.TryGetValue(
                key,
                out var value) ||
            value == null)
        {
            return 0;
        }

        if (value is double doubleValue)
            return doubleValue;

        if (value is float floatValue)
            return floatValue;

        if (value is int intValue)
            return intValue;

        if (value is long longValue)
            return longValue;

        return double.TryParse(
            Convert.ToString(value),
            out var result)
            ? result
            : 0;
    }

    private static string? TryGetNestedString(
        JsonElement element,
        params string[] path)
    {
        var current = element;

        foreach (var item in path)
        {
            if (!current.TryGetProperty(
                    item,
                    out current))
            {
                return null;
            }
        }

        return current.ValueKind ==
                   JsonValueKind.Null ||
               current.ValueKind ==
                   JsonValueKind.Undefined
            ? null
            : current.ToString();
    }

    // ============================================================
    // APPWRITE ERROR HANDLING
    // ============================================================

    private async Task ThrowAppwriteErrorAsync(
        HttpResponseMessage response,
        string message,
        CancellationToken cancellationToken)
    {
        var body =
            await response.Content.ReadAsStringAsync(
                cancellationToken);

        _logger.LogWarning(
            "{Message} Appwrite status: {StatusCode}. " +
            "Response body: {ResponseBody}",
            message,
            (int)response.StatusCode,
            body);

        throw new InvalidOperationException(
            $"{message} Appwrite status: {(int)response.StatusCode}.");
    }
}