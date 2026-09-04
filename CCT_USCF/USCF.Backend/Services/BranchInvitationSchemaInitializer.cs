using Microsoft.EntityFrameworkCore;
using USCF.Backend.Data;

namespace USCF.Backend.Services;

public static class BranchInvitationSchemaInitializer
{
    public static Task EnsureCreatedAsync(USCFDbContext db, CancellationToken cancellationToken = default) =>
        db.Database.ExecuteSqlRawAsync(
            """
            IF OBJECT_ID(N'[BranchInvitations]', N'U') IS NULL
            BEGIN
                CREATE TABLE [BranchInvitations] (
                    [Id] uniqueidentifier NOT NULL CONSTRAINT [PK_BranchInvitations] PRIMARY KEY,
                    [TokenHash] nvarchar(128) NOT NULL,
                    [BranchId] int NOT NULL,
                    [DistrictId] int NOT NULL,
                    [RegionId] int NOT NULL,
                    [InviterUid] nvarchar(200) NOT NULL,
                    [CreatedAtUtc] datetime2 NOT NULL,
                    [ExpiresAtUtc] datetime2 NOT NULL,
                    [UsedAtUtc] datetime2 NULL,
                    [RevokedAtUtc] datetime2 NULL,
                    [UsageLimit] int NOT NULL,
                    [UsageCount] int NOT NULL
                );
                CREATE UNIQUE INDEX [IX_BranchInvitations_TokenHash] ON [BranchInvitations] ([TokenHash]);
            END
            """, cancellationToken);
}
