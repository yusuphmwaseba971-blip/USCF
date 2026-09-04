using Microsoft.EntityFrameworkCore;
using USCF.Backend.Data;

namespace USCF.Backend.Services;

public static class ChurchAnnouncementSchemaInitializer
{
    public static async Task EnsureCreatedAsync(USCFDbContext db, CancellationToken cancellationToken = default)
    {
        await db.Database.ExecuteSqlRawAsync("""
IF COL_LENGTH(N'Users', N'LeadershipLevel') IS NULL ALTER TABLE [Users] ADD [LeadershipLevel] nvarchar(100) NULL;
IF COL_LENGTH(N'Users', N'LeadershipDuty') IS NULL ALTER TABLE [Users] ADD [LeadershipDuty] nvarchar(100) NULL;
IF COL_LENGTH(N'Users', N'FcmToken') IS NULL ALTER TABLE [Users] ADD [FcmToken] nvarchar(2048) NULL;
""", cancellationToken);
        await db.Database.ExecuteSqlRawAsync("""
IF OBJECT_ID(N'[ChurchAnnouncements]', N'U') IS NULL
BEGIN
    CREATE TABLE [ChurchAnnouncements] (
        [Id] uniqueidentifier NOT NULL CONSTRAINT [PK_ChurchAnnouncements] PRIMARY KEY,
        [SenderUid] nvarchar(256) NOT NULL, [SenderName] nvarchar(200) NOT NULL,
        [SenderLeadershipLevel] nvarchar(100) NOT NULL, [TargetLevel] nvarchar(50) NOT NULL,
        [TargetRegionId] int NULL, [TargetDistrictId] int NULL, [TargetBranchId] int NULL,
        [Title] nvarchar(200) NOT NULL, [Message] nvarchar(max) NOT NULL,
        [CreatedAtUtc] datetime2 NOT NULL, [Status] nvarchar(50) NOT NULL
    );
    CREATE INDEX [IX_ChurchAnnouncements_CreatedAtUtc] ON [ChurchAnnouncements] ([CreatedAtUtc]);
END
IF OBJECT_ID(N'[ChurchNotifications]', N'U') IS NULL
BEGIN
    CREATE TABLE [ChurchNotifications] (
        [Id] uniqueidentifier NOT NULL CONSTRAINT [PK_ChurchNotifications] PRIMARY KEY,
        [AnnouncementId] uniqueidentifier NOT NULL, [RecipientUid] nvarchar(256) NOT NULL,
        [Title] nvarchar(200) NOT NULL, [Message] nvarchar(max) NOT NULL,
        [SenderName] nvarchar(200) NOT NULL, [TargetLevel] nvarchar(50) NOT NULL,
        [CreatedAtUtc] datetime2 NOT NULL, [IsRead] bit NOT NULL
    );
    CREATE UNIQUE INDEX [IX_ChurchNotifications_Announcement_Recipient]
        ON [ChurchNotifications] ([AnnouncementId], [RecipientUid]);
    CREATE INDEX [IX_ChurchNotifications_Recipient_Created]
        ON [ChurchNotifications] ([RecipientUid], [CreatedAtUtc]);
END
""", cancellationToken);
    }
}
