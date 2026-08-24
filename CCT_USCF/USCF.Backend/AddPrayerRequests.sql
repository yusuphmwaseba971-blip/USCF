IF OBJECT_ID(N'[__EFMigrationsHistory]') IS NULL
BEGIN
    CREATE TABLE [__EFMigrationsHistory] (
        [MigrationId] nvarchar(150) NOT NULL,
        [ProductVersion] nvarchar(32) NOT NULL,
        CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY ([MigrationId])
    );
END;
GO

BEGIN TRANSACTION;
CREATE TABLE [Regions] (
    [Id] int NOT NULL IDENTITY,
    [Name] nvarchar(200) NOT NULL,
    CONSTRAINT [PK_Regions] PRIMARY KEY ([Id])
);

CREATE TABLE [Users] (
    [Id] uniqueidentifier NOT NULL,
    [FullName] nvarchar(200) NOT NULL,
    [Username] nvarchar(100) NOT NULL,
    [Email] nvarchar(320) NOT NULL,
    [PasswordHash] nvarchar(max) NOT NULL,
    [PhoneNumber] nvarchar(20) NULL,
    [ProfileImageUrl] nvarchar(max) NULL,
    [Bio] nvarchar(max) NULL,
    [Role] nvarchar(50) NOT NULL,
    [RegionId] int NULL,
    [DistrictId] int NULL,
    [BranchId] int NULL,
    [CreatedAt] datetime2 NOT NULL DEFAULT (GETUTCDATE()),
    [UpdatedAt] datetime2 NOT NULL DEFAULT (GETUTCDATE()),
    [LastSeenAt] datetime2 NULL,
    [IsActive] bit NOT NULL,
    [RoleVerificationStatus] nvarchar(50) NOT NULL,
    CONSTRAINT [PK_Users] PRIMARY KEY ([Id])
);

CREATE TABLE [Districts] (
    [Id] int NOT NULL IDENTITY,
    [Name] nvarchar(200) NOT NULL,
    [RegionId] int NOT NULL,
    CONSTRAINT [PK_Districts] PRIMARY KEY ([Id]),
    CONSTRAINT [FK_Districts_Regions_RegionId] FOREIGN KEY ([RegionId]) REFERENCES [Regions] ([Id]) ON DELETE NO ACTION
);

CREATE TABLE [Branches] (
    [Id] int NOT NULL IDENTITY,
    [Name] nvarchar(200) NOT NULL,
    [DistrictId] int NOT NULL,
    CONSTRAINT [PK_Branches] PRIMARY KEY ([Id]),
    CONSTRAINT [FK_Branches_Districts_DistrictId] FOREIGN KEY ([DistrictId]) REFERENCES [Districts] ([Id]) ON DELETE NO ACTION
);

CREATE INDEX [IX_Branches_DistrictId] ON [Branches] ([DistrictId]);

CREATE INDEX [IX_Districts_RegionId] ON [Districts] ([RegionId]);

CREATE INDEX [IX_Regions_Name] ON [Regions] ([Name]);

CREATE UNIQUE INDEX [IX_Users_Email] ON [Users] ([Email]);

CREATE UNIQUE INDEX [IX_Users_Username] ON [Users] ([Username]);

INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
VALUES (N'20260822171006_InitialIdentityAndOrganization', N'10.0.0');

COMMIT;
GO

BEGIN TRANSACTION;
DROP INDEX [IX_Regions_Name] ON [Regions];

DECLARE @var nvarchar(max);
SELECT @var = QUOTENAME([d].[name])
FROM [sys].[default_constraints] [d]
INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
WHERE ([d].[parent_object_id] = OBJECT_ID(N'[Users]') AND [c].[name] = N'UpdatedAt');
IF @var IS NOT NULL EXEC(N'ALTER TABLE [Users] DROP CONSTRAINT ' + @var + ';');

DECLARE @var1 nvarchar(max);
SELECT @var1 = QUOTENAME([d].[name])
FROM [sys].[default_constraints] [d]
INNER JOIN [sys].[columns] [c] ON [d].[parent_column_id] = [c].[column_id] AND [d].[parent_object_id] = [c].[object_id]
WHERE ([d].[parent_object_id] = OBJECT_ID(N'[Users]') AND [c].[name] = N'CreatedAt');
IF @var1 IS NOT NULL EXEC(N'ALTER TABLE [Users] DROP CONSTRAINT ' + @var1 + ';');

ALTER TABLE [Users] ADD [RefreshTokenExpiresAt] datetime2 NULL;

ALTER TABLE [Users] ADD [RefreshTokenHash] nvarchar(512) NULL;

CREATE TABLE [BibleVerses] (
    [Id] uniqueidentifier NOT NULL,
    [Book] nvarchar(200) NOT NULL,
    [Chapter] int NOT NULL,
    [VerseNumber] int NOT NULL,
    [Text] nvarchar(max) NOT NULL,
    [AudioReference] nvarchar(max) NULL,
    [AudioDurationSeconds] int NULL,
    [AudioFileSizeBytes] bigint NULL,
    [AudioMimeType] nvarchar(max) NULL,
    [CreatedAt] datetime2 NOT NULL,
    [UpdatedAt] datetime2 NOT NULL,
    CONSTRAINT [PK_BibleVerses] PRIMARY KEY ([Id])
);

CREATE TABLE [Posts] (
    [Id] uniqueidentifier NOT NULL,
    [UserId] uniqueidentifier NOT NULL,
    [Content] nvarchar(max) NOT NULL,
    [Caption] nvarchar(max) NULL,
    [CreatedAt] datetime2 NOT NULL,
    [UpdatedAt] datetime2 NOT NULL,
    CONSTRAINT [PK_Posts] PRIMARY KEY ([Id])
);

CREATE TABLE [PostMedias] (
    [Id] uniqueidentifier NOT NULL,
    [PostId] uniqueidentifier NOT NULL,
    [MediaType] nvarchar(max) NOT NULL,
    [FileName] nvarchar(max) NOT NULL,
    [Url] nvarchar(max) NULL,
    [StoragePath] nvarchar(max) NULL,
    [Duration] float NULL,
    [TrimStart] float NULL,
    [TrimEnd] float NULL,
    [FileSizeBytes] bigint NULL,
    [UploadedByUserId] uniqueidentifier NULL,
    [IsTemporary] bit NOT NULL,
    [IsDeleted] bit NOT NULL,
    [ExpiresAt] datetime2 NULL,
    [DeletedAt] datetime2 NULL,
    [CreatedAt] datetime2 NOT NULL,
    CONSTRAINT [PK_PostMedias] PRIMARY KEY ([Id]),
    CONSTRAINT [FK_PostMedias_Posts_PostId] FOREIGN KEY ([PostId]) REFERENCES [Posts] ([Id]) ON DELETE CASCADE
);

CREATE INDEX [IX_Users_BranchId] ON [Users] ([BranchId]);

CREATE INDEX [IX_Users_DistrictId] ON [Users] ([DistrictId]);

CREATE INDEX [IX_Users_RegionId] ON [Users] ([RegionId]);

CREATE UNIQUE INDEX [IX_BibleVerses_Book_Chapter_VerseNumber] ON [BibleVerses] ([Book], [Chapter], [VerseNumber]);

CREATE INDEX [IX_PostMedias_PostId_CreatedAt] ON [PostMedias] ([PostId], [CreatedAt]);

ALTER TABLE [Users] ADD CONSTRAINT [FK_Users_Branches_BranchId] FOREIGN KEY ([BranchId]) REFERENCES [Branches] ([Id]) ON DELETE NO ACTION;

ALTER TABLE [Users] ADD CONSTRAINT [FK_Users_Districts_DistrictId] FOREIGN KEY ([DistrictId]) REFERENCES [Districts] ([Id]) ON DELETE NO ACTION;

ALTER TABLE [Users] ADD CONSTRAINT [FK_Users_Regions_RegionId] FOREIGN KEY ([RegionId]) REFERENCES [Regions] ([Id]) ON DELETE NO ACTION;

INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
VALUES (N'20260824133412_AddRefreshTokenSupport', N'10.0.0');

COMMIT;
GO

BEGIN TRANSACTION;
CREATE TABLE [PrayerRequests] (
    [Id] uniqueidentifier NOT NULL,
    [UserId] uniqueidentifier NOT NULL,
    [Title] nvarchar(200) NOT NULL,
    [Description] nvarchar(max) NOT NULL,
    [CreatedAtUtc] datetime2 NOT NULL,
    [UpdatedAtUtc] datetime2 NOT NULL,
    [Status] nvarchar(50) NOT NULL,
    [IsDeleted] bit NOT NULL,
    CONSTRAINT [PK_PrayerRequests] PRIMARY KEY ([Id]),
    CONSTRAINT [FK_PrayerRequests_Users_UserId] FOREIGN KEY ([UserId]) REFERENCES [Users] ([Id]) ON DELETE CASCADE
);

CREATE INDEX [IX_PrayerRequests_UserId_CreatedAtUtc] ON [PrayerRequests] ([UserId], [CreatedAtUtc]);

INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
VALUES (N'20260824161307_AddPrayerRequests', N'10.0.0');

COMMIT;
GO

