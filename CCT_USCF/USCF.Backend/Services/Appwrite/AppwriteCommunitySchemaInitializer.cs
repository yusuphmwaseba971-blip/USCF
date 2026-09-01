using Microsoft.EntityFrameworkCore;
using USCF.Backend.Data;

namespace USCF.Backend.Services.Appwrite;

public static class AppwriteCommunitySchemaInitializer
{
    public static async Task EnsureCreatedAsync(
        USCFDbContext db,
        ILogger logger,
        CancellationToken cancellationToken = default)
    {
        await db.Database.ExecuteSqlRawAsync(
            """
IF OBJECT_ID(N'[AppwriteTeamMappings]', N'U') IS NULL
BEGIN
    CREATE TABLE [AppwriteTeamMappings]
    (
        [Id] uniqueidentifier NOT NULL CONSTRAINT [PK_AppwriteTeamMappings] PRIMARY KEY,
        [OrganizationType] nvarchar(32) NOT NULL,
        [OrganizationId] int NOT NULL,
        [AppwriteTeamId] nvarchar(128) NOT NULL,
        [DisplayName] nvarchar(200) NOT NULL,
        [CreatedAtUtc] datetime2 NOT NULL,
        [UpdatedAtUtc] datetime2 NOT NULL
    );
END;

IF NOT EXISTS (
    SELECT 1 FROM sys.indexes
    WHERE name = N'IX_AppwriteTeamMappings_Organization'
      AND object_id = OBJECT_ID(N'[AppwriteTeamMappings]'))
BEGIN
    CREATE UNIQUE INDEX [IX_AppwriteTeamMappings_Organization]
    ON [AppwriteTeamMappings] ([OrganizationType], [OrganizationId]);
END;

IF NOT EXISTS (
    SELECT 1 FROM sys.indexes
    WHERE name = N'IX_AppwriteTeamMappings_AppwriteTeamId'
      AND object_id = OBJECT_ID(N'[AppwriteTeamMappings]'))
BEGIN
    CREATE UNIQUE INDEX [IX_AppwriteTeamMappings_AppwriteTeamId]
    ON [AppwriteTeamMappings] ([AppwriteTeamId]);
END;

IF OBJECT_ID(N'[AppwriteTeamMemberships]', N'U') IS NULL
BEGIN
    CREATE TABLE [AppwriteTeamMemberships]
    (
        [Id] uniqueidentifier NOT NULL CONSTRAINT [PK_AppwriteTeamMemberships] PRIMARY KEY,
        [TeamMappingId] uniqueidentifier NOT NULL,
        [FirebaseUid] nvarchar(128) NOT NULL,
        [AppwriteUserId] nvarchar(128) NOT NULL,
        [IsActive] bit NOT NULL,
        [CreatedAtUtc] datetime2 NOT NULL,
        [UpdatedAtUtc] datetime2 NOT NULL
    );
END;

IF NOT EXISTS (
    SELECT 1 FROM sys.indexes
    WHERE name = N'IX_AppwriteTeamMemberships_Team_User'
      AND object_id = OBJECT_ID(N'[AppwriteTeamMemberships]'))
BEGIN
    CREATE UNIQUE INDEX [IX_AppwriteTeamMemberships_Team_User]
    ON [AppwriteTeamMemberships] ([TeamMappingId], [AppwriteUserId]);
END;
""",
            cancellationToken);

        logger.LogInformation("Appwrite community team schema is ready.");
    }
}
