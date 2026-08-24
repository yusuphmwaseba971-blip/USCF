using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace USCF.Backend.Data.Migrations
{
    public partial class AddMediaAndBibleSupport : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<bool>(
                name: "IsDeleted",
                table: "PostMedias",
                type: "bit",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<bool>(
                name: "IsTemporary",
                table: "PostMedias",
                type: "bit",
                nullable: false,
                defaultValue: true);

            migrationBuilder.AddColumn<DateTime>(
                name: "DeletedAt",
                table: "PostMedias",
                type: "datetime2",
                nullable: true);

            migrationBuilder.AddColumn<DateTime>(
                name: "ExpiresAt",
                table: "PostMedias",
                type: "datetime2",
                nullable: true);

            migrationBuilder.AddColumn<long>(
                name: "FileSizeBytes",
                table: "PostMedias",
                type: "bigint",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "StoragePath",
                table: "PostMedias",
                type: "nvarchar(max)",
                nullable: true);

            migrationBuilder.AddColumn<Guid>(
                name: "UploadedByUserId",
                table: "PostMedias",
                type: "uniqueidentifier",
                nullable: true);

            migrationBuilder.CreateTable(
                name: "BibleVerses",
                columns: table => new
                {
                    Id = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    Book = table.Column<string>(type: "nvarchar(200)", maxLength: 200, nullable: false),
                    Chapter = table.Column<int>(type: "int", nullable: false),
                    VerseNumber = table.Column<int>(type: "int", nullable: false),
                    Text = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    AudioReference = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    AudioDurationSeconds = table.Column<int>(type: "int", nullable: true),
                    AudioFileSizeBytes = table.Column<long>(type: "bigint", nullable: true),
                    AudioMimeType = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    CreatedAt = table.Column<DateTime>(type: "datetime2", nullable: false),
                    UpdatedAt = table.Column<DateTime>(type: "datetime2", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_BibleVerses", x => x.Id);
                });

            migrationBuilder.CreateIndex(
                name: "IX_BibleVerses_Book_Chapter_VerseNumber",
                table: "BibleVerses",
                columns: new[] { "Book", "Chapter", "VerseNumber" },
                unique: true);

            migrationBuilder.CreateIndex(
                name: "IX_PostMedias_PostId_CreatedAt",
                table: "PostMedias",
                columns: new[] { "PostId", "CreatedAt" });
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "BibleVerses");

            migrationBuilder.DropIndex(
                name: "IX_PostMedias_PostId_CreatedAt",
                table: "PostMedias");

            migrationBuilder.DropColumn(
                name: "DeletedAt",
                table: "PostMedias");

            migrationBuilder.DropColumn(
                name: "ExpiresAt",
                table: "PostMedias");

            migrationBuilder.DropColumn(
                name: "FileSizeBytes",
                table: "PostMedias");

            migrationBuilder.DropColumn(
                name: "IsDeleted",
                table: "PostMedias");

            migrationBuilder.DropColumn(
                name: "IsTemporary",
                table: "PostMedias");

            migrationBuilder.DropColumn(
                name: "StoragePath",
                table: "PostMedias");

            migrationBuilder.DropColumn(
                name: "UploadedByUserId",
                table: "PostMedias");
        }
    }
}
