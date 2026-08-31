namespace CCT_USCF.Models;

public class Message
{
    public string Id { get; set; } = string.Empty;
    public string SenderId { get; set; } = string.Empty;
    public string? ReceiverId { get; set; }
    public string? GroupId { get; set; }
    public string ConversationId { get; set; } = string.Empty;
    public string Content { get; set; } = string.Empty;
    public string MessageType { get; set; } = "text";
    public string Status { get; set; } = "sent";
    public DateTime CreatedAt { get; set; } = DateTime.UtcNow;
    public DateTime? ReadAt { get; set; }
}

public sealed class MessageCreateDto
{
    public string? ReceiverId { get; set; }
    public string? GroupId { get; set; }
    public string Content { get; set; } = string.Empty;
    public string MessageType { get; set; } = "text";
    public string Status { get; set; } = "sent";
}

public sealed class MessageDto : Message
{
}
