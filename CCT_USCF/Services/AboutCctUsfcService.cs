using System.Collections.Generic;
using System.Globalization;
using Appwrite;
using Appwrite.Models;

namespace CCT_USCF.Services;

public sealed class AboutCctUsfcService
{
    private const string HistoryCollectionId = "cct_history";
    private const string MissionVisionCollectionId = "cct_mission_vision";
    private const string LeadershipCollectionId = "cct_leadership";
    private const string ConstitutionCollectionId = "cct_constitution_documents";
    private const string ContactCollectionId = "cct_contact_information";

    private readonly CCT_USCF.Services.Appwrite.AppwriteService _appwriteService;

    public AboutCctUsfcService(CCT_USCF.Services.Appwrite.AppwriteService appwriteService)
    {
        _appwriteService = appwriteService ?? throw new ArgumentNullException(nameof(appwriteService));
    }

    public async Task<IReadOnlyList<CctHistoryItem>> GetHistoryAsync(string? organizationLevel = null, string? organizationId = null)
    {
        var documents = await ListDocumentsAsync(HistoryCollectionId);

        var items = documents
            .Where(d => IsPublished(d))
            .Select(MapHistory)
            .Where(x => !string.IsNullOrWhiteSpace(x.Title))
            .ToList();

        if (!string.IsNullOrWhiteSpace(organizationLevel))
        {
            var normalized = organizationLevel.Trim();
            items = items
                .Where(item => string.Equals(item.OrganizationLevel, normalized, StringComparison.OrdinalIgnoreCase))
                .ToList();
        }

        if (!string.IsNullOrWhiteSpace(organizationId))
        {
            var normalized = organizationId.Trim();
            items = items
                .Where(item => string.Equals(item.OrganizationId, normalized, StringComparison.OrdinalIgnoreCase))
                .ToList();
        }

        return items
            .OrderByDescending(item => item.UpdatedAtUtc)
            .ToList();
    }

    public async Task<IReadOnlyList<CctMissionVisionItem>> GetMissionVisionAsync(string? organizationLevel = null, string? organizationId = null)
    {
        var documents = await ListDocumentsAsync(MissionVisionCollectionId);

        var items = documents
            .Where(d => IsPublished(d))
            .Select(MapMissionVision)
            .Where(x => !string.IsNullOrWhiteSpace(x.Mission) || !string.IsNullOrWhiteSpace(x.Vision))
            .ToList();

        if (!string.IsNullOrWhiteSpace(organizationLevel))
        {
            var normalized = organizationLevel.Trim();
            items = items
                .Where(item => string.Equals(item.OrganizationLevel, normalized, StringComparison.OrdinalIgnoreCase))
                .ToList();
        }

        if (!string.IsNullOrWhiteSpace(organizationId))
        {
            var normalized = organizationId.Trim();
            items = items
                .Where(item => string.Equals(item.OrganizationId, normalized, StringComparison.OrdinalIgnoreCase))
                .ToList();
        }

        return items.OrderByDescending(item => item.UpdatedAtUtc).ToList();
    }

    public async Task<IReadOnlyList<CctLeadershipItem>> GetLeadershipAsync(string? organizationLevel = null, string? organizationId = null)
    {
        var documents = await ListDocumentsAsync(LeadershipCollectionId);

        var items = documents
            .Where(d => IsPublished(d) || IsActive(d))
            .Select(MapLeadership)
            .Where(x => !string.IsNullOrWhiteSpace(x.PositionName) || !string.IsNullOrWhiteSpace(x.UserName))
            .ToList();

        if (!string.IsNullOrWhiteSpace(organizationLevel))
        {
            var normalized = organizationLevel.Trim();
            items = items
                .Where(item => string.Equals(item.OrganizationLevel, normalized, StringComparison.OrdinalIgnoreCase))
                .ToList();
        }

        if (!string.IsNullOrWhiteSpace(organizationId))
        {
            var normalized = organizationId.Trim();
            items = items
                .Where(item => string.Equals(item.OrganizationId, normalized, StringComparison.OrdinalIgnoreCase))
                .ToList();
        }

        return items
            .OrderBy(item => item.OrganizationLevel)
            .ThenBy(item => item.OrganizationName)
            .ThenBy(item => item.PositionName)
            .ToList();
    }

    public async Task<IReadOnlyList<CctDocumentItem>> GetConstitutionDocumentsAsync()
    {
        var documents = await ListDocumentsAsync(ConstitutionCollectionId);

        return documents
            .Where(d => IsPublished(d))
            .Select(MapDocument)
            .OrderByDescending(item => item.UpdatedAtUtc)
            .ToList();
    }

    public async Task<IReadOnlyList<CctContactInformationItem>> GetContactInformationAsync()
    {
        var documents = await ListDocumentsAsync(ContactCollectionId);

        return documents
            .Where(d => IsPublished(d) || IsActive(d))
            .Select(MapContact)
            .OrderByDescending(item => item.UpdatedAtUtc)
            .ToList();
    }

    private async Task<IReadOnlyList<Document>> ListDocumentsAsync(string collectionId)
    {
        try
        {
            var result = await _appwriteService.Databases.ListDocuments(
                CCT_USCF.Services.Appwrite.AppwriteService.DatabaseId,
                collectionId,
                new List<string>(),
                null,
                null,
                100);

            return result.Documents;
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine($"[ABOUT_CCT_USCF] Unable to load collection {collectionId}: {ex}");
            return Array.Empty<Document>();
        }
    }

    private static bool IsPublished(Document document)
    {
        var data = document.Data;
        if (data.TryGetValue("is_published", out var publishedValue))
            return publishedValue is bool flag && flag;
        if (data.TryGetValue("status", out var statusValue) && statusValue is string status)
            return status.Equals("PUBLISHED", StringComparison.OrdinalIgnoreCase)
                || status.Equals("APPROVED", StringComparison.OrdinalIgnoreCase)
                || status.Equals("ACTIVE", StringComparison.OrdinalIgnoreCase);
        return true;
    }

    private static bool IsActive(Document document)
    {
        var data = document.Data;
        if (data.TryGetValue("is_active", out var activeValue) && activeValue is bool flag)
            return flag;
        if (data.TryGetValue("status", out var statusValue) && statusValue is string status)
            return status.Equals("ACTIVE", StringComparison.OrdinalIgnoreCase)
                || status.Equals("PUBLISHED", StringComparison.OrdinalIgnoreCase);
        return false;
    }

    private static CctHistoryItem MapHistory(Document document)
    {
        var data = document.Data;
        return new CctHistoryItem
        {
            Id = document.Id,
            OrganizationLevel = ReadString(data, "organization_level"),
            OrganizationId = ReadString(data, "organization_id"),
            ParentOrganizationId = ReadString(data, "parent_organization_id"),
            Title = ReadString(data, "title"),
            Summary = ReadString(data, "summary"),
            Content = ReadString(data, "content"),
            CoverImageUrl = ReadNullableString(data, "cover_image_url"),
            Status = ReadString(data, "status"),
            UpdatedAtUtc = ParseTimestamp(document.UpdatedAt)
        };
    }

    private static CctMissionVisionItem MapMissionVision(Document document)
    {
        var data = document.Data;
        return new CctMissionVisionItem
        {
            Id = document.Id,
            OrganizationLevel = ReadString(data, "organization_level"),
            OrganizationId = ReadString(data, "organization_id"),
            Mission = ReadString(data, "mission"),
            Vision = ReadString(data, "vision"),
            Status = ReadString(data, "status"),
            UpdatedAtUtc = ParseTimestamp(document.UpdatedAt)
        };
    }

    private static CctLeadershipItem MapLeadership(Document document)
    {
        var data = document.Data;
        return new CctLeadershipItem
        {
            Id = document.Id,
            UserId = ReadString(data, "user_id"),
            UserName = ReadString(data, "user_name"),
            PositionId = ReadString(data, "position_id"),
            PositionName = ReadString(data, "position_name"),
            OrganizationLevel = ReadString(data, "organization_level"),
            OrganizationId = ReadString(data, "organization_id"),
            OrganizationName = ReadString(data, "organization_name"),
            IsActive = ReadBool(data, "is_active"),
            Status = ReadString(data, "status"),
            UpdatedAtUtc = ParseTimestamp(document.UpdatedAt)
        };
    }

    private static CctDocumentItem MapDocument(Document document)
    {
        var data = document.Data;
        return new CctDocumentItem
        {
            Id = document.Id,
            Title = ReadString(data, "title"),
            Description = ReadString(data, "description"),
            Version = ReadString(data, "version"),
            FileId = ReadString(data, "file_id"),
            Url = ReadNullableString(data, "file_url") ?? ReadNullableString(data, "url") ?? string.Empty,
            Status = ReadString(data, "status"),
            UpdatedAtUtc = ParseTimestamp(document.UpdatedAt)
        };
    }

    private static CctContactInformationItem MapContact(Document document)
    {
        var data = document.Data;
        return new CctContactInformationItem
        {
            Id = document.Id,
            SupportName = ReadString(data, "support_name"),
            OfficialEmail = ReadString(data, "official_email"),
            OfficialPhone = ReadString(data, "official_phone"),
            SupportDescription = ReadString(data, "support_description"),
            Status = ReadString(data, "status"),
            UpdatedAtUtc = ParseTimestamp(document.UpdatedAt)
        };
    }

    private static string ReadString(IDictionary<string, object> data, string key, string fallback = "")
        => data.TryGetValue(key, out var value) && value is not null ? Convert.ToString(value) ?? fallback : fallback;

    private static string? ReadNullableString(IDictionary<string, object> data, string key)
        => data.TryGetValue(key, out var value) && value is not null ? Convert.ToString(value) : null;

    private static bool ReadBool(IDictionary<string, object> data, string key)
        => data.TryGetValue(key, out var value) && value is bool flag && flag;

    private static DateTime ParseTimestamp(string? value)
    {
        if (string.IsNullOrWhiteSpace(value))
            return DateTime.UtcNow;

        return DateTime.TryParse(value, CultureInfo.InvariantCulture, DateTimeStyles.AdjustToUniversal, out var parsed)
            ? parsed.ToUniversalTime()
            : DateTime.UtcNow;
    }
}

public sealed class CctHistoryItem
{
    public string Id { get; set; } = string.Empty;
    public string OrganizationLevel { get; set; } = string.Empty;
    public string OrganizationId { get; set; } = string.Empty;
    public string ParentOrganizationId { get; set; } = string.Empty;
    public string Title { get; set; } = string.Empty;
    public string Summary { get; set; } = string.Empty;
    public string Content { get; set; } = string.Empty;
    public string? CoverImageUrl { get; set; }
    public string Status { get; set; } = string.Empty;
    public DateTime UpdatedAtUtc { get; set; }
}

public sealed class CctMissionVisionItem
{
    public string Id { get; set; } = string.Empty;
    public string OrganizationLevel { get; set; } = string.Empty;
    public string OrganizationId { get; set; } = string.Empty;
    public string Mission { get; set; } = string.Empty;
    public string Vision { get; set; } = string.Empty;
    public string Status { get; set; } = string.Empty;
    public DateTime UpdatedAtUtc { get; set; }
}

public sealed class CctLeadershipItem
{
    public string Id { get; set; } = string.Empty;
    public string UserId { get; set; } = string.Empty;
    public string UserName { get; set; } = string.Empty;
    public string PositionId { get; set; } = string.Empty;
    public string PositionName { get; set; } = string.Empty;
    public string OrganizationLevel { get; set; } = string.Empty;
    public string OrganizationId { get; set; } = string.Empty;
    public string OrganizationName { get; set; } = string.Empty;
    public bool IsActive { get; set; }
    public string Status { get; set; } = string.Empty;
    public DateTime UpdatedAtUtc { get; set; }
}

public sealed class CctDocumentItem
{
    public string Id { get; set; } = string.Empty;
    public string Title { get; set; } = string.Empty;
    public string Description { get; set; } = string.Empty;
    public string Version { get; set; } = string.Empty;
    public string FileId { get; set; } = string.Empty;
    public string Url { get; set; } = string.Empty;
    public string Status { get; set; } = string.Empty;
    public DateTime UpdatedAtUtc { get; set; }
}

public sealed class CctContactInformationItem
{
    public string Id { get; set; } = string.Empty;
    public string SupportName { get; set; } = string.Empty;
    public string OfficialEmail { get; set; } = string.Empty;
    public string OfficialPhone { get; set; } = string.Empty;
    public string SupportDescription { get; set; } = string.Empty;
    public string Status { get; set; } = string.Empty;
    public DateTime UpdatedAtUtc { get; set; }
}
