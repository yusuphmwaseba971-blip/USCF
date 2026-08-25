using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace USCF.Backend.Data.Migrations
{
    /// <inheritdoc />
    public partial class AddBiblePosts : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "BiblePosts",
                columns: table => new
                {
                    Id = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    UserId = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    PostType = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    BookId = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    ChapterNumber = table.Column<int>(type: "int", nullable: false),
                    VerseStart = table.Column<int>(type: "int", nullable: false),
                    VerseEnd = table.Column<int>(type: "int", nullable: false),
                    CreatedAtUtc = table.Column<DateTime>(type: "datetime2", nullable: false),
                    UpdatedAtUtc = table.Column<DateTime>(type: "datetime2", nullable: false),
                    IsDeleted = table.Column<bool>(type: "bit", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_BiblePosts", x => x.Id);
                });
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "BiblePosts");
        }
    }
}
