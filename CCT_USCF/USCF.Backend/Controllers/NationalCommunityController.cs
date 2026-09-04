using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using USCF.Backend.Data;
using USCF.Backend.DTOs;
using USCF.Backend.Models;
using USCF.Backend.Services.Community;
using USCF.Backend.Services.Identity;

namespace USCF.Backend.Controllers;

[ApiController]
[Route("api/community/national")]
public sealed class NationalCommunityController : ControllerBase
{
    private readonly USCFDbContext _db;
    private readonly CommunityIdentityService _identity;
    public NationalCommunityController(USCFDbContext db, CommunityIdentityService identity) { _db = db; _identity = identity; }

    [HttpGet]
    public async Task<IActionResult> Feed([FromQuery] int limit = 20, CancellationToken ct = default)
    {
        await RequireUserAsync(ct);
        var posts = await _db.NationalCommunityPosts.AsNoTracking().Include(p => p.Likes).Include(p => p.Comments)
            .Where(p => p.Visibility == "national").OrderByDescending(p => p.CreatedAtUtc)
            .Take(Math.Clamp(limit, 1, 50)).ToListAsync(ct);
        return Ok(posts.Select(p => ToDto(p, null)));
    }

    [HttpPost]
    public async Task<IActionResult> Create([FromBody] NationalCommunityCreateDto dto, CancellationToken ct)
    {
        if (string.IsNullOrWhiteSpace(dto.Content) && string.IsNullOrWhiteSpace(dto.Title) &&
            string.IsNullOrWhiteSpace(dto.ImageUrl) && string.IsNullOrWhiteSpace(dto.VideoUrl) &&
            string.IsNullOrWhiteSpace(dto.AudioUrl) && string.IsNullOrWhiteSpace(dto.LinkUrl))
            return BadRequest(new { message = "Write a post or attach media." });
        if (dto.AudioUrl is not null && (!dto.AudioDurationSeconds.HasValue || dto.AudioDurationSeconds > 15))
            return BadRequest(new { message = "Audio must not be longer than 15 seconds." });
        var user = await RequireUserAsync(ct);
        var post = new NationalCommunityPost
        {
            AuthorUid = user.FirebaseIdentity.FirebaseUid, AuthorName = user.User.FullName,
            Title = Clean(dto.Title), Content = Clean(dto.Content) ?? string.Empty,
            ImageUrl = dto.ImageUrl, VideoUrl = dto.VideoUrl, AudioUrl = dto.AudioUrl, LinkUrl = dto.LinkUrl,
            Visibility = "national", AuthorRegionId = user.User.RegionId, AuthorDistrictId = user.User.DistrictId,
            AuthorBranchId = user.User.BranchId,
            AuthorRegionName = await _db.Regions.Where(x => x.Id == user.User.RegionId).Select(x => x.Name).FirstOrDefaultAsync(ct),
            AuthorDistrictName = await _db.Districts.Where(x => x.Id == user.User.DistrictId).Select(x => x.Name).FirstOrDefaultAsync(ct),
            AuthorBranchName = await _db.Branches.Where(x => x.Id == user.User.BranchId).Select(x => x.Name).FirstOrDefaultAsync(ct)
        };
        _db.NationalCommunityPosts.Add(post); await _db.SaveChangesAsync(ct);
        return Ok(ToDto(post, user.FirebaseIdentity.FirebaseUid));
    }

    [HttpPost("{postId:guid}/like")]
    public async Task<IActionResult> Like(Guid postId, CancellationToken ct)
    {
        var user = await RequireUserAsync(ct);
        var post = await _db.NationalCommunityPosts.FirstOrDefaultAsync(p => p.Id == postId && p.Visibility == "national", ct);
        if (post is null) return NotFound();
        var like = await _db.NationalCommunityLikes.FirstOrDefaultAsync(x => x.PostId == postId && x.UserUid == user.FirebaseIdentity.FirebaseUid, ct);
        if (like is null)
        {
            _db.NationalCommunityLikes.Add(new NationalCommunityLike { PostId = postId, UserUid = user.FirebaseIdentity.FirebaseUid });
            if (!string.Equals(post.AuthorUid, user.FirebaseIdentity.FirebaseUid, StringComparison.Ordinal))
                _db.NationalCommunityEvents.Add(new NationalCommunityEvent { RecipientUid = post.AuthorUid, ActorUid = user.FirebaseIdentity.FirebaseUid, ActorName = user.User.FullName, EventType = "post_liked", PostId = postId, Message = $"{user.User.FullName} liked your post." });
            await _db.SaveChangesAsync(ct);
        }
        return Ok(new { liked = true, count = await _db.NationalCommunityLikes.CountAsync(x => x.PostId == postId, ct) });
    }

    [HttpDelete("{postId:guid}/like")]
    public async Task<IActionResult> Unlike(Guid postId, CancellationToken ct)
    {
        var user = await RequireUserAsync(ct);
        var like = await _db.NationalCommunityLikes.FirstOrDefaultAsync(x => x.PostId == postId && x.UserUid == user.FirebaseIdentity.FirebaseUid, ct);
        if (like is not null) { _db.NationalCommunityLikes.Remove(like); await _db.SaveChangesAsync(ct); }
        return Ok(new { liked = false, count = await _db.NationalCommunityLikes.CountAsync(x => x.PostId == postId, ct) });
    }

    [HttpGet("{postId:guid}/comments")]
    public async Task<IActionResult> Comments(Guid postId, CancellationToken ct) =>
        Ok(await RequireAndLoadCommentsAsync(postId, ct));

    [HttpPost("{postId:guid}/comments")]
    public async Task<IActionResult> Comment(Guid postId, NationalCommunityCommentCreateDto dto, CancellationToken ct)
    {
        var user = await RequireUserAsync(ct);
        if (!await _db.NationalCommunityPosts.AnyAsync(p => p.Id == postId && p.Visibility == "national", ct)) return NotFound();
        var comment = new NationalCommunityComment { PostId = postId, AuthorUid = user.FirebaseIdentity.FirebaseUid, AuthorName = user.User.FullName, Content = dto.Content.Trim() };
        _db.NationalCommunityComments.Add(comment);
        var owner = await _db.NationalCommunityPosts.Where(p => p.Id == postId).Select(p => p.AuthorUid).SingleAsync(ct);
        if (owner != user.FirebaseIdentity.FirebaseUid) _db.NationalCommunityEvents.Add(new NationalCommunityEvent { RecipientUid = owner, ActorUid = user.FirebaseIdentity.FirebaseUid, ActorName = user.User.FullName, EventType = "post_commented", PostId = postId, CommentId = comment.Id, Message = $"{user.User.FullName} commented on your post." });
        await _db.SaveChangesAsync(ct); return Ok(comment);
    }

    [HttpGet("events")]
    public async Task<IActionResult> Events(CancellationToken ct)
    {
        var user = await RequireUserAsync(ct);
        return Ok(await _db.NationalCommunityEvents.AsNoTracking().Where(x => x.RecipientUid == user.FirebaseIdentity.FirebaseUid).OrderByDescending(x => x.CreatedAtUtc).Take(100).ToListAsync(ct));
    }

    private async Task<AuthenticatedCommunityUser> RequireUserAsync(CancellationToken ct)
    {
        var header = Request.Headers.Authorization.ToString();
        if (!header.StartsWith("Bearer ", StringComparison.OrdinalIgnoreCase)) throw new UnauthorizedAccessException();
        return await _identity.RequireUserAsync(header["Bearer ".Length..].Trim(), ct);
    }
    private async Task<List<NationalCommunityComment>> RequireAndLoadCommentsAsync(Guid postId, CancellationToken ct)
    {
        await RequireUserAsync(ct);
        return await _db.NationalCommunityComments.AsNoTracking().Where(x => x.PostId == postId).OrderBy(x => x.CreatedAtUtc).ToListAsync(ct);
    }
    private static string? Clean(string? value) => string.IsNullOrWhiteSpace(value) ? null : value.Trim();
    private static object ToDto(NationalCommunityPost p, string? currentUid) => new
    {
        id = p.Id, authorUid = p.AuthorUid, authorName = p.AuthorName, authorPhoto = p.AuthorPhoto, title = p.Title, content = p.Content,
        imageUrl = p.ImageUrl, videoUrl = p.VideoUrl, audioUrl = p.AudioUrl, linkUrl = p.LinkUrl, visibility = p.Visibility,
        authorRegionName = p.AuthorRegionName, authorDistrictName = p.AuthorDistrictName, authorBranchName = p.AuthorBranchName,
        createdAtUtc = p.CreatedAtUtc, likeCount = p.Likes?.Count ?? 0, commentCount = p.Comments?.Count ?? 0,
        likedByCurrentUser = currentUid is not null && p.Likes?.Any(x => x.UserUid == currentUid) == true
    };
}
