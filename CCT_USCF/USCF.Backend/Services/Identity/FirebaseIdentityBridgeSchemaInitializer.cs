using Microsoft.EntityFrameworkCore;
using USCF.Backend.Data;

namespace USCF.Backend.Services.Identity;

public static class FirebaseIdentityBridgeSchemaInitializer
{
    public static async Task EnsureCreatedAsync(
        USCFDbContext db,
        ILogger logger,
        CancellationToken cancellationToken = default)
    {
        const string sql = """
IF OBJECT_ID(N'[FirebaseAppwriteIdentityMappings]', N'U') IS NULL
BEGIN
    CREATE TABLE [FirebaseAppwriteIdentityMappings]
    (
        [Id] uniqueidentifier NOT NULL CONSTRAINT [PK_FirebaseAppwriteIdentityMappings] PRIMARY KEY,
        [FirebaseUid] nvarchar(128) NOT NULL,
        [AppwriteUserId] nvarchar(128) NOT NULL,
        [FirebaseProjectId] nvarchar(128) NOT NULL,
        [Email] nvarchar(320) NULL,
        [DisplayName] nvarchar(200) NULL,
        [CreatedAtUtc] datetime2 NOT NULL,
        [UpdatedAtUtc] datetime2 NOT NULL
    );
END;

IF NOT EXISTS (
    SELECT 1 FROM sys.indexes
    WHERE name = N'IX_FirebaseAppwriteIdentityMappings_FirebaseUid'
      AND object_id = OBJECT_ID(N'[FirebaseAppwriteIdentityMappings]'))
BEGIN
    CREATE UNIQUE INDEX [IX_FirebaseAppwriteIdentityMappings_FirebaseUid]
    ON [FirebaseAppwriteIdentityMappings] ([FirebaseUid]);
END;

IF NOT EXISTS (
    SELECT 1 FROM sys.indexes
    WHERE name = N'IX_FirebaseAppwriteIdentityMappings_AppwriteUserId'
      AND object_id = OBJECT_ID(N'[FirebaseAppwriteIdentityMappings]'))
BEGIN
    CREATE UNIQUE INDEX [IX_FirebaseAppwriteIdentityMappings_AppwriteUserId]
    ON [FirebaseAppwriteIdentityMappings] ([AppwriteUserId]);
END;
""";

        await db.Database.ExecuteSqlRawAsync(sql, cancellationToken);
        logger.LogInformation("Firebase to Appwrite identity mapping schema is ready.");
    }
}
