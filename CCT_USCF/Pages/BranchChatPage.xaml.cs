
using System.Net.WebSockets;
using System.Text;
using System.Text.Json;
using CCT_USCF.Services;
using CCT_USCF.Services.Appwrite;
using CCT_USCF.Services.Cloudinary;
using Microsoft.Maui.ApplicationModel;
using Microsoft.Maui.Controls;
using Microsoft.Maui.Controls.Shapes;
using Microsoft.Maui.Storage;
using Plugin.Firebase.Auth;
using Plugin.Firebase.Firestore;

namespace CCT_USCF.Pages;

[QueryProperty(nameof(BranchId), "branchId")]
[QueryProperty(nameof(BranchName), "branchName")]
public partial class BranchChatPage : ContentPage
{
    private readonly IFirebaseAuth _auth;
    private readonly IFirebaseFirestore _firestore;
    private readonly CommunityService _communityService;
    private readonly CloudinaryService _cloudinaryService;

    private readonly List<BranchChatMessageUi> _messages = new();

    private bool _isLoading;
    private bool _realtimeEnabled;
    private bool _realtimeListenerAttached;
    private PendingAttachment? _pendingAttachment;

    private ClientWebSocket? _appwriteRealtimeSocket;
    private CancellationTokenSource? _appwriteRealtimeCts;

    // Used for long-press detection.
    private DateTime _pointerPressedAt = DateTime.MinValue;
    private bool _longPressTriggered;

    private const int LongPressMilliseconds = 650;

    public BranchChatPage()
    {
        InitializeComponent();

        _auth =
            MauiProgram.Services
                .GetRequiredService<IFirebaseAuth>();

        _firestore =
            MauiProgram.Services
                .GetRequiredService<IFirebaseFirestore>();

        _communityService =
            MauiProgram.Services
                .GetRequiredService<CommunityService>();

        _cloudinaryService =
            MauiProgram.Services
                .GetRequiredService<CloudinaryService>();

        var membersTap =
            new TapGestureRecognizer();

        membersTap.Tapped += MembersLabel_Tapped;

        MembersLabel.GestureRecognizers.Add(
            membersTap);

        AddMemberButton.Clicked +=
            AddMemberButton_Clicked;
    }

    private async Task PersistMediaMessageAsync(BranchChatMessageUi localMessage)
    {
        try
        {
            System.Diagnostics.Debug.WriteLine(
                $"[COMMUNITY_MESSAGE] SEND START type={localMessage.MessageType}, has_attachment=true");

            if (localMessage.PendingFile == null)
                throw new InvalidOperationException("The selected attachment is no longer available.");

            System.Diagnostics.Debug.WriteLine(
                "[COMMUNITY_MESSAGE] MEDIA UPLOAD START");

            var uploadResult = localMessage.MessageType switch
            {
                "image" => await _cloudinaryService.UploadImageAsync(localMessage.PendingFile),
                "video" => await _cloudinaryService.UploadVideoAsync(localMessage.PendingFile),
                "audio" => await _cloudinaryService.UploadAudioAsync(localMessage.PendingFile),
                _ => throw new InvalidOperationException($"Unsupported attachment type: {localMessage.MessageType}")
            };

            if (string.IsNullOrWhiteSpace(uploadResult.SecureUrl))
                throw new InvalidOperationException("Cloudinary did not return a usable media URL.");

            System.Diagnostics.Debug.WriteLine(
                $"[COMMUNITY_MESSAGE] MEDIA UPLOAD SUCCESS type={localMessage.MessageType}");
            System.Diagnostics.Debug.WriteLine(
                "[COMMUNITY_MESSAGE] APPWRITE MESSAGE CREATE START");

            var createdMessage = await _communityService.CreateCommunityMessageAsync(
                communityId: _branchId.ToString(),
                content: localMessage.Text,
                messageType: localMessage.MessageType,
                branchId: _branchId.ToString(),
                organizationalLevel: "Branch",
                mediaUrl: uploadResult.SecureUrl,
                fileName: uploadResult.OriginalFilename,
                fileSize: uploadResult.Bytes,
                duration: uploadResult.Duration,
                clientMessageId: localMessage.ClientMessageId);

            System.Diagnostics.Debug.WriteLine(
                $"[COMMUNITY_MESSAGE] APPWRITE MESSAGE CREATE SUCCESS message_id={createdMessage.MessageId}");

            await _communityService.CacheCommunityMessageAsync(createdMessage);
            var uiMessage = ToUiMessage(createdMessage);
            uiMessage.Status = "sent";
            uiMessage.LocalPreviewBytes = null;
            var existingIndex = _messages.FindIndex(existing => IsSameMessage(existing, uiMessage));
            if (existingIndex >= 0)
                _messages[existingIndex] = uiMessage;
            else
                _messages.Add(uiMessage);

            _messages.Sort((left, right) => left.CreatedAt.CompareTo(right.CreatedAt));
            await MainThread.InvokeOnMainThreadAsync(RenderMessages);
        }
        catch (Exception ex)
        {
            localMessage.Status = "failed";
            await MainThread.InvokeOnMainThreadAsync(RenderMessages);
            System.Diagnostics.Debug.WriteLine($"[COMMUNITY_MESSAGE] MEDIA SEND FAILED {ex}");
        }
    }

    private Task RetryMessageAsync(BranchChatMessageUi message)
    {
        message.Status = "sending";
        RenderMessages();
        return message.MessageType.Equals("text", StringComparison.OrdinalIgnoreCase)
            ? PersistTextMessageAsync(message)
            : PersistMediaMessageAsync(message);
    }

    // ============================================================
    // BRANCH PARAMETERS
    // ============================================================

    private int _branchId;

    public int BranchId
    {
        get => _branchId;

        set
        {
            _branchId = value;

            if (!string.IsNullOrWhiteSpace(BranchName))
            {
                BranchTitleLabel.Text =
                    BranchName;
            }
        }
    }

    private string _branchName =
        "Branch Group";

    public string BranchName
    {
        get => _branchName;

        set
        {
            _branchName =
                string.IsNullOrWhiteSpace(value)
                    ? "Branch Group"
                    : value;

            BranchTitleLabel.Text =
                _branchName;
        }
    }

    // ============================================================
    // PAGE LIFECYCLE
    // ============================================================

    protected override async void OnAppearing()
    {
        base.OnAppearing();

        try
        {
            _realtimeEnabled = true;

            if (_branchId <= 0)
            {
                var currentUser =
                    MauiProgram.CurrentUser
                    ?? await MauiProgram
                        .CreateAuthServiceForPages()
                        .GetCurrentUserAsync();

                if (currentUser?.BranchId is int branchId &&
                    branchId > 0)
                {
                    BranchId = branchId;

                    BranchName =
                        currentUser.Branch
                        ?? "Branch Group";
                }
            }

            if (_branchId <= 0)
            {
                BranchStatusLabel.Text =
                    "Branch information is unavailable.";

                return;
            }

            AttachRealtimeListener();

            await LoadBranchGroupAsync();
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine(
                $"[BRANCH_CHAT] OnAppearing failed: {ex}");
        }
    }

    protected override void OnDisappearing()
    {
        base.OnDisappearing();

        _realtimeEnabled = false;

        DisposeRealtimeListener();
    }

    // ============================================================
    // APPWRITE REALTIME
    // ============================================================

    private void AttachRealtimeListener()
    {
        if (_realtimeListenerAttached ||
            !_realtimeEnabled ||
            _branchId <= 0)
        {
            return;
        }

        _realtimeListenerAttached = true;

        try
        {
            _appwriteRealtimeCts?.Cancel();
            _appwriteRealtimeCts?.Dispose();

            _appwriteRealtimeCts =
                new CancellationTokenSource();

            var cancellationToken =
                _appwriteRealtimeCts.Token;

            System.Diagnostics.Debug.WriteLine(
                $"[BRANCH_CHAT] Appwrite realtime listener attached for branch {_branchId}");

            _ = Task.Run(async () =>
            {
                try
                {
                    await ListenForAppwriteMessagesAsync(
                        cancellationToken);
                }
                catch (OperationCanceledException)
                {
                    System.Diagnostics.Debug.WriteLine(
                        $"[BRANCH_CHAT] Realtime listener cancelled for branch {_branchId}");
                }
                catch (Exception ex)
                {
                    System.Diagnostics.Debug.WriteLine(
                        $"[BRANCH_CHAT] Realtime listener error: {ex}");

                    _realtimeListenerAttached = false;
                }
            });
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine(
                $"[BRANCH_CHAT] Realtime setup failed: {ex}");

            _realtimeListenerAttached = false;
        }
    }

    private void DisposeRealtimeListener()
    {
        _realtimeListenerAttached = false;

        try
        {
            _appwriteRealtimeCts?.Cancel();
            _appwriteRealtimeCts?.Dispose();
        }
        catch
        {
        }

        _appwriteRealtimeCts = null;

        try
        {
            _appwriteRealtimeSocket?.Abort();
            _appwriteRealtimeSocket?.Dispose();
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine(
                $"[BRANCH_CHAT] Realtime disconnect failed: {ex}");
        }

        _appwriteRealtimeSocket = null;
    }

    private async Task ListenForAppwriteMessagesAsync(
        CancellationToken cancellationToken)
    {
        using var socket =
            new ClientWebSocket();

        _appwriteRealtimeSocket = socket;

        var uriBuilder =
            new UriBuilder(
                AppwriteService.Endpoint)
            {
                Scheme = Uri.UriSchemeWss,
                Path = "/v1/realtime",
                Query =
                    $"project={Uri.EscapeDataString(
                        AppwriteService.ProjectId)}"
            };

        var channel =
            _communityService
                .GetCommunityMessagesChannel();

        var subscription =
            JsonSerializer.Serialize(
                new
                {
                    type = "subscribe",
                    channels = new[]
                    {
                        channel
                    }
                });

        System.Diagnostics.Debug.WriteLine(
            $"[BRANCH_CHAT] Realtime endpoint: {uriBuilder.Uri}");

        System.Diagnostics.Debug.WriteLine(
            $"[BRANCH_CHAT] Realtime channel: {channel}");

        await socket.ConnectAsync(
            uriBuilder.Uri,
            cancellationToken);

        await socket.SendAsync(
            Encoding.UTF8.GetBytes(
                subscription),
            WebSocketMessageType.Text,
            true,
            cancellationToken);

        System.Diagnostics.Debug.WriteLine(
            $"[BRANCH_CHAT] Realtime subscription sent for branch {_branchId}");

        var buffer =
            new byte[16 * 1024];

        var messageBuilder =
            new StringBuilder();

        while (
            socket.State ==
                WebSocketState.Open &&
            !cancellationToken.IsCancellationRequested)
        {
            var result =
                await socket.ReceiveAsync(
                    new ArraySegment<byte>(
                        buffer),
                    cancellationToken);

            if (result.MessageType ==
                WebSocketMessageType.Close)
            {
                break;
            }

            var chunk =
                Encoding.UTF8.GetString(
                    buffer,
                    0,
                    result.Count);

            messageBuilder.Append(chunk);

            if (!result.EndOfMessage)
            {
                continue;
            }

            var rawMessage =
                messageBuilder.ToString();

            messageBuilder.Clear();

            ProcessRealtimeMessage(
                rawMessage);
        }
    }

    // ============================================================
    // REALTIME PARSER
    // ============================================================

    private void ProcessRealtimeMessage(
        string rawMessage)
    {
        if (string.IsNullOrWhiteSpace(rawMessage))
        {
            return;
        }

        try
        {
            using var document =
                JsonDocument.Parse(rawMessage);

            var root =
                document.RootElement;

            if (!root.TryGetProperty(
                    "type",
                    out var typeElement))
            {
                return;
            }

            var rootType =
                typeElement.ToString();

            if (!string.Equals(
                    rootType,
                    "event",
                    StringComparison.OrdinalIgnoreCase))
            {
                return;
            }

            var isCreate = false;
            var isUpdate = false;
            var isDelete = false;

            // --------------------------------------------------------
            // Appwrite provides event names such as:
            //
            // databases....documents.create
            // databases....documents.update
            // databases....documents.delete
            //
            // --------------------------------------------------------

            if (root.TryGetProperty(
                    "events",
                    out var eventsElement) &&
                eventsElement.ValueKind ==
                    JsonValueKind.Array)
            {
                foreach (var eventElement in eventsElement.EnumerateArray())
                {
                    var eventName =
                        eventElement.ToString();

                    if (eventName.EndsWith(
                            ".create",
                            StringComparison.OrdinalIgnoreCase))
                    {
                        isCreate = true;
                    }

                    if (eventName.EndsWith(
                            ".update",
                            StringComparison.OrdinalIgnoreCase))
                    {
                        isUpdate = true;
                    }

                    if (eventName.EndsWith(
                            ".delete",
                            StringComparison.OrdinalIgnoreCase))
                    {
                        isDelete = true;
                    }
                }
            }

            if (!root.TryGetProperty(
                    "payload",
                    out var payload))
            {
                if (!root.TryGetProperty(
                        "data",
                        out payload))
                {
                    return;
                }
            }

            if (payload.ValueKind !=
                JsonValueKind.Object)
            {
                return;
            }

            var communityId =
                TryGetString(
                    payload,
                    "community_id");

            if (!string.Equals(
                    communityId,
                    _branchId.ToString(),
                    StringComparison.Ordinal))
            {
                return;
            }

            var messageId =
                GetAppwriteDocumentId(
                    payload);

            if (string.IsNullOrWhiteSpace(messageId))
            {
                return;
            }

            // --------------------------------------------------------
            // DELETE EVENT
            // --------------------------------------------------------

            if (isDelete)
            {
                _ = HandleRealtimeDeleteAsync(
                    messageId);

                return;
            }

            // --------------------------------------------------------
            // CREATE / UPDATE EVENT
            // --------------------------------------------------------

            var senderUid =
                TryGetString(
                    payload,
                    "sender_uid");

            var senderName =
                TryGetString(
                    payload,
                    "sender_name");

            if (string.IsNullOrWhiteSpace(
                    senderName))
            {
                senderName = "Member";
            }

            var content =
                TryGetString(
                    payload,
                    "content");

            var messageType =
                TryGetString(
                    payload,
                    "message_type");

            if (string.IsNullOrWhiteSpace(
                    messageType))
            {
                messageType = "text";
            }

            var mediaUrl =
                TryGetString(
                    payload,
                    "media_url");

            var thumbnailUrl =
                TryGetString(
                    payload,
                    "thumbnail_url");

            var fileName =
                TryGetString(
                    payload,
                    "file_name");

            var fileSize =
                TryGetLong(
                    payload,
                    "file_size");

            var duration =
                TryGetDouble(
                    payload,
                    "duration");

            var createdAtText =
                TryGetString(
                    payload,
                    "created_at");

            var createdAt =
                ParseUtcDateTime(
                    createdAtText);

            var updatedAtText =
                TryGetString(
                    payload,
                    "updated_at");

DateTime? updatedAt =
    string.IsNullOrWhiteSpace(updatedAtText)
        ? null
        : ParseUtcDateTime(updatedAtText);
            var message =
                new BranchChatMessageUi
                {
                    MessageId =
                        messageId,

                    ClientMessageId =
                        TryGetString(payload, "client_message_id"),

                    BranchId =
                        _branchId,

                    SenderUid =
                        senderUid,

                    SenderName =
                        senderName,

                    Text =
                        content,

                    MessageType =
                        messageType,

                    MediaUrl =
                        mediaUrl,

                    ThumbnailUrl =
                        thumbnailUrl,

                    FileName =
                        fileName,

                    FileSize =
                        fileSize,

                    Duration =
                        duration,

                    CreatedAt =
                        createdAt,

                    UpdatedAt =
                        updatedAt
                };

            System.Diagnostics.Debug.WriteLine(
                $"[BRANCH_CHAT_REALTIME] " +
                $"message_id={message.MessageId}, " +
                $"type={message.MessageType}, " +
                $"eventCreate={isCreate}, " +
                $"eventUpdate={isUpdate}");

            _ =
                HandleRealtimeMessageAsync(
                    message,
                    isUpdate);
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine(
                $"[BRANCH_CHAT] Realtime payload parse failed: {ex}");
        }
    }

    // ============================================================
    // REALTIME CREATE / UPDATE
    // ============================================================

    private async Task HandleRealtimeMessageAsync(
        BranchChatMessageUi message,
        bool isUpdate)
    {
        try
        {
            await CacheUiMessageAsync(
                message);

            await MainThread.InvokeOnMainThreadAsync(() =>
            {
                var existingIndex =
                    _messages.FindIndex(
                        existing =>
                            IsSameMessage(existing, message));

                if (existingIndex >= 0)
                {
                    message.Status = "sent";
                    _messages[existingIndex] =
                        message;
                }
                else
                {
                    _messages.Add(
                        message);
                }

                _messages.Sort(
                    (left, right) =>
                        left.CreatedAt.CompareTo(
                            right.CreatedAt));

                RenderMessages();
            });
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine(
                $"[BRANCH_CHAT_REALTIME] Cache/display failed: {ex}");
        }
    }

    // ============================================================
    // REALTIME DELETE
    // ============================================================

    private async Task HandleRealtimeDeleteAsync(
        string messageId)
    {
        try
        {
            await MainThread.InvokeOnMainThreadAsync(() =>
            {
                _messages.RemoveAll(
                    message =>
                        string.Equals(
                            message.MessageId,
                            messageId,
                            StringComparison.Ordinal));

                RenderMessages();
            });

            System.Diagnostics.Debug.WriteLine(
                $"[BRANCH_CHAT_REALTIME] Message removed from UI: {messageId}");

            // The remote document is already gone.
            // Local-cache deletion can be added through
            // CommunityService when we finalize cache synchronization.
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine(
                $"[BRANCH_CHAT_REALTIME] Delete handling failed: {ex}");
        }
    }

    // ============================================================
    // REALTIME HELPERS
    // ============================================================

    private static string GetAppwriteDocumentId(
        JsonElement element)
    {
        var id =
            TryGetString(
                element,
                "$id");

        if (!string.IsNullOrWhiteSpace(id))
        {
            return id;
        }

        return TryGetString(
            element,
            "message_id");
    }

    private static string TryGetString(
        JsonElement element,
        string propertyName)
    {
        if (!element.TryGetProperty(
                propertyName,
                out var value))
        {
            return string.Empty;
        }

        if (value.ValueKind ==
                JsonValueKind.Null ||
            value.ValueKind ==
                JsonValueKind.Undefined)
        {
            return string.Empty;
        }

        return value.ToString();
    }

    private static long TryGetLong(
        JsonElement element,
        string propertyName)
    {
        if (!element.TryGetProperty(
                propertyName,
                out var value))
        {
            return 0;
        }

        try
        {
            if (value.ValueKind ==
                JsonValueKind.Number)
            {
                if (value.TryGetInt64(
                        out var integerValue))
                {
                    return integerValue;
                }

                if (value.TryGetDouble(
                        out var doubleValue))
                {
                    return Convert.ToInt64(
                        doubleValue);
                }
            }

            if (long.TryParse(
                    value.ToString(),
                    out var parsed))
            {
                return parsed;
            }
        }
        catch
        {
        }

        return 0;
    }

    private static double TryGetDouble(
        JsonElement element,
        string propertyName)
    {
        if (!element.TryGetProperty(
                propertyName,
                out var value))
        {
            return 0;
        }

        try
        {
            if (value.ValueKind ==
                JsonValueKind.Number &&
                value.TryGetDouble(
                    out var doubleValue))
            {
                return doubleValue;
            }

            if (double.TryParse(
                    value.ToString(),
                    out var parsed))
            {
                return parsed;
            }
        }
        catch
        {
        }

        return 0;
    }

    private static DateTime ParseUtcDateTime(
        string value)
    {
        if (DateTime.TryParse(
                value,
                null,
                System.Globalization.DateTimeStyles.RoundtripKind,
                out var parsed))
        {
            return parsed.ToUniversalTime();
        }

        return DateTime.UtcNow;
    }

    // ============================================================
    // PAGE LOAD
    // ============================================================

    private async Task LoadBranchGroupAsync()
    {
        BranchStatusLabel.Text =
            "Loading Branch Group...";

        try
        {
            if (_branchId <= 0)
            {
                BranchStatusLabel.Text =
                    "Branch information is unavailable.";

                return;
            }

            await FirebaseInit.Initialized;

            var currentUser =
                MauiProgram.CurrentUser
                ?? await MauiProgram
                    .CreateAuthServiceForPages()
                    .GetCurrentUserAsync();

            if (currentUser == null)
            {
                BranchStatusLabel.Text =
                    "Please sign in to access your branch community.";

                return;
            }

            if (currentUser.BranchId is int userBranchId &&
                userBranchId != _branchId)
            {
                BranchStatusLabel.Text =
                    "Your account is not assigned to this branch.";

                return;
            }

            var members =
                await LoadBranchMembersAsync();

            System.Diagnostics.Debug.WriteLine(
                $"[BRANCH_CHAT] " +
                $"UID={GetCurrentUserUid()} " +
                $"Branch={_branchId} " +
                $"Members={members.Count}");

            BranchStatusLabel.Text =
                members.Count == 1
                    ? "1 member in this Branch"
                    : $"{members.Count} members in this Branch";

            MembersLabel.Text =
                members.Count == 1
                    ? "Members (1)"
                    : $"Members ({members.Count})";

            await LoadMessagesFromCacheFirstAsync();
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine(
                $"[BRANCH_CHAT] Load failed: {ex}");

            BranchStatusLabel.Text =
                "Unable to load the Church Group right now.";
        }
    }

    private async Task LoadMessagesFromCacheFirstAsync()
    {
        if (_branchId <= 0)
        {
            return;
        }

        try
        {
            BranchStatusLabel.Text =
                "Loading messages...";

            var messages =
                await _communityService
                    .LoadGroupMessagesWithCacheAsync(
                        _branchId.ToString(),
                        100);

            var uiMessages =
                messages
                    .Where(message =>
                        string.Equals(
                            message.CommunityId,
                            _branchId.ToString(),
                            StringComparison.Ordinal))
                    .Select(ToUiMessage)
                    .OrderBy(message =>
                        message.CreatedAt)
                    .ToList();

            _messages.Clear();

            _messages.AddRange(
                uiMessages);

            RenderMessages();

            System.Diagnostics.Debug.WriteLine(
                $"[BRANCH_CHAT] " +
                $"Cache-first load complete. " +
                $"Messages={_messages.Count}");
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine(
                $"[BRANCH_CHAT] Cache-first load failed: {ex}");
        }
    }

    private static BranchChatMessageUi ToUiMessage(
        Models.CommunityMessage message)
    {
        return new BranchChatMessageUi
        {
            MessageId =
                string.IsNullOrWhiteSpace(
                    message.MessageId)
                    ? message.Id
                    : message.MessageId,

            ClientMessageId = message.ClientMessageId,
            Status = message.Status,

            BranchId =
                int.TryParse(
                    message.CommunityId,
                    out var branchId)
                    ? branchId
                    : 0,

            SenderUid =
                message.SenderUid,

            SenderName =
                string.IsNullOrWhiteSpace(
                    message.SenderName)
                    ? "Member"
                    : message.SenderName,

            Text =
                message.Content,

            MessageType =
                string.IsNullOrWhiteSpace(
                    message.MessageType)
                    ? "text"
                    : message.MessageType,

            MediaUrl =
                message.MediaUrl ?? string.Empty,

            ThumbnailUrl =
                message.ThumbnailUrl ?? string.Empty,

            FileName =
                message.FileName ?? string.Empty,

            FileSize =
                message.FileSize,

            Duration =
                message.Duration,

            CreatedAt =
                message.CreatedAt.Kind ==
                    DateTimeKind.Utc
                    ? message.CreatedAt
                    : message.CreatedAt.ToUniversalTime(),

            UpdatedAt =
                message.UpdatedAt
        };
    }

    // ============================================================
    // PULL TO REFRESH
    // ============================================================

    private async Task RefreshMessagesAsync()
    {
        if (_isLoading ||
            _branchId <= 0)
        {
            return;
        }

        _isLoading = true;

        try
        {
            var newMessages =
                await _communityService
                    .SyncNewerGroupMessagesAsync(
                        _branchId.ToString(),
                        100);

            if (newMessages.Count == 0)
            {
                return;
            }

            foreach (var message in newMessages)
            {
                var uiMessage =
                    ToUiMessage(message);

                var existingIndex =
                    _messages.FindIndex(
                        existing =>
                            IsSameMessage(existing, uiMessage));

                if (existingIndex >= 0)
                {
                    _messages[existingIndex] =
                        uiMessage;
                }
                else
                {
                    _messages.Add(
                        uiMessage);
                }
            }

            _messages.Sort(
                (left, right) =>
                    left.CreatedAt.CompareTo(
                        right.CreatedAt));

            RenderMessages();

            System.Diagnostics.Debug.WriteLine(
                $"[BRANCH_CHAT_REFRESH] " +
                $"Processed {newMessages.Count} messages.");
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine(
                $"[BRANCH_CHAT_REFRESH] Failed: {ex}");
        }
        finally
        {
            _isLoading = false;
        }
    }

    // ============================================================
    // SQLITE CACHE
    // ============================================================

    private async Task CacheUiMessageAsync(
        BranchChatMessageUi message)
    {
        try
        {
            var communityMessage =
                new Models.CommunityMessage
                {
                    Id =
                        message.MessageId,

                    MessageId =
                        message.MessageId,

                    SenderUid =
                        message.SenderUid,

                    SenderName =
                        message.SenderName,

                    Content =
                        message.Text,

                    CommunityId =
                        message.BranchId.ToString(),

                    MessageType =
                        message.MessageType,

                    MediaUrl =
                        message.MediaUrl,

                    ThumbnailUrl =
                        message.ThumbnailUrl,

                    FileName =
                        message.FileName,

                    FileSize =
                        message.FileSize,

                    Duration =
                        message.Duration,

                    CreatedAt =
                        message.CreatedAt,

                    UpdatedAt =
                        message.UpdatedAt
                };

            await _communityService
                .CacheCommunityMessageAsync(
                    communityMessage);
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine(
                $"[BRANCH_CHAT] Cache write failed: {ex}");
        }
    }

    // ============================================================
    // RENDER ALL MESSAGES
    // ============================================================

    private void RenderMessages()
    {
        MessagesLayout.Children.Clear();

        if (_messages.Count == 0)
        {
            MessagesLayout.Children.Add(
                new Label
                {
                    Text =
                        "No messages yet. Start the conversation.",

                    TextColor =
                        Colors.Gray,

                    FontSize =
                        15,

                    Margin =
                        new Thickness(
                            8,
                            16)
                });

            return;
        }

        foreach (var message in _messages)
        {
            var isCurrentUser =
                string.Equals(
                    message.SenderUid,
                    GetCurrentUserUid(),
                    StringComparison.Ordinal);

            var senderText =
                isCurrentUser
                    ? "You"
                    : message.SenderName;

            var container =
                CreateMessageContainer(
                    message,
                    isCurrentUser,
                    senderText);

            MessagesLayout.Children.Add(
                container);
        }

        _ = ScrollMessagesToBottomAsync();
    }

    private Border CreateMessageContainer(
        BranchChatMessageUi message,
        bool isCurrentUser,
        string senderText)
    {
        var container =
            new Border
            {
                Padding =
                    new Thickness(
                        12,
                        10),

                BackgroundColor =
                    isCurrentUser
                        ? Color.FromArgb("#DBEAFE")
                        : Colors.White,

                StrokeThickness =
                    0,

                StrokeShape =
                    new RoundRectangle
                    {
                        CornerRadius =
                            12
                    },

                Margin =
                    new Thickness(
                        isCurrentUser ? 24 : 0,
                        0,
                        isCurrentUser ? 0 : 24,
                        8),

                WidthRequest =
                    290,

                HorizontalOptions =
                    isCurrentUser
                        ? LayoutOptions.End
                        : LayoutOptions.Start
            };

        var stack =
            new VerticalStackLayout
            {
                Spacing = 6
            };

        stack.Children.Add(
            new Label
            {
                Text =
                    senderText,

                FontAttributes =
                    FontAttributes.Bold,

                FontSize =
                    12,

                TextColor =
                    isCurrentUser
                        ? Color.FromArgb("#1D4ED8")
                        : Colors.DarkSlateBlue
            });

        AddMessageContent(
            stack,
            message);

        var timestampText =
            message.CreatedAt
                .ToLocalTime()
                .ToString("HH:mm");

        if (message.UpdatedAt.HasValue)
        {
            timestampText +=
                " · edited";
        }

        if (isCurrentUser &&
            !string.Equals(message.Status, "sent", StringComparison.OrdinalIgnoreCase))
        {
            timestampText += message.Status switch
            {
                "failed" => " · Failed - tap to retry",
                "sending" => " · Sending...",
                _ => string.Empty
            };
        }

        stack.Children.Add(
            new Label
            {
                Text =
                    timestampText,

                FontSize =
                    11,

                TextColor =
                    Colors.Gray,

                HorizontalOptions =
                    LayoutOptions.End
            });

        container.Content =
            stack;

        if (isCurrentUser)
        {
            AttachLongPressGesture(
                container,
                message);

            if (string.Equals(message.Status, "failed", StringComparison.OrdinalIgnoreCase))
            {
                var retry = new Button
                {
                    Text = "Retry",
                    FontSize = 12,
                    Padding = new Thickness(8, 2),
                    BackgroundColor = Colors.Transparent,
                    TextColor = Color.FromArgb("#B91C1C"),
                    HorizontalOptions = LayoutOptions.End
                };
                retry.Clicked += async (_, _) => await RetryMessageAsync(message);
                stack.Children.Add(retry);
            }
        }

        return container;
    }

    // ============================================================
    // MESSAGE CONTENT
    // ============================================================

    private void AddMessageContent(
        VerticalStackLayout stack,
        BranchChatMessageUi message)
    {
        var messageType =
            string.IsNullOrWhiteSpace(
                message.MessageType)
                ? "text"
                : message.MessageType
                    .Trim()
                    .ToLowerInvariant();

        switch (messageType)
        {
            case "image":
                AddImageMessage(
                    stack,
                    message);
                break;

            case "video":
                AddVideoMessage(
                    stack,
                    message);
                break;

            case "audio":
                AddAudioMessage(
                    stack,
                    message);
                break;

            default:
                AddTextMessage(
                    stack,
                    message);
                break;
        }

        if (!string.IsNullOrWhiteSpace(
                message.Text) &&
            messageType != "text")
        {
            stack.Children.Add(
                new Label
                {
                    Text =
                        message.Text,

                    FontSize =
                        14,

                    TextColor =
                        Colors.Black
                });
        }
    }

    private static bool IsSameMessage(
        BranchChatMessageUi left,
        BranchChatMessageUi right)
    {
        if (!string.IsNullOrWhiteSpace(left.ClientMessageId) &&
            !string.IsNullOrWhiteSpace(right.ClientMessageId) &&
            string.Equals(left.ClientMessageId, right.ClientMessageId, StringComparison.Ordinal))
            return true;

        return string.Equals(left.MessageId, right.MessageId, StringComparison.Ordinal);
    }

    private void AddTextMessage(
        VerticalStackLayout stack,
        BranchChatMessageUi message)
    {
        stack.Children.Add(
            new Label
            {
                Text =
                    message.Text,

                FontSize =
                    15,

                TextColor =
                    Colors.Black,

                LineBreakMode =
                    LineBreakMode.WordWrap
            });
    }

    private void AddImageMessage(
        VerticalStackLayout stack,
        BranchChatMessageUi message)
    {
        if (message.LocalPreviewBytes is { Length: > 0 } previewBytes)
        {
            stack.Children.Add(new Image
            {
                Source = ImageSource.FromStream(() => new MemoryStream(previewBytes)),
                HeightRequest = 190,
                WidthRequest = 255,
                Aspect = Aspect.AspectFill
            });
        }
        else if (string.IsNullOrWhiteSpace(
                message.MediaUrl))
        {
            AddUnavailableMediaLabel(
                stack,
                "Image unavailable.");

            return;
        }

        var image =
            new Image
            {
                Source =
                    ImageSource.FromUri(
                        new Uri(
                            message.MediaUrl)),

                HeightRequest =
                    190,

                WidthRequest =
                    255,

                Aspect =
                    Aspect.AspectFill
            };

        var tap =
            new TapGestureRecognizer();

        tap.Tapped += async (_, _) =>
        {
            await OpenMediaAsync(
                message.MediaUrl);
        };

        image.GestureRecognizers.Add(
            tap);

        stack.Children.Add(
            image);

        stack.Children.Add(
            new Label
            {
                Text =
                    string.IsNullOrWhiteSpace(
                        message.FileName)
                        ? "Image"
                        : message.FileName,

                FontSize =
                    12,

                TextColor =
                    Colors.Gray
            });
    }

    private void AddVideoMessage(
        VerticalStackLayout stack,
        BranchChatMessageUi message)
    {
        var button =
            new Button
            {
                Text =
                    "▶  Play video",

                FontSize =
                    14,

                BackgroundColor =
                    Color.FromArgb("#1E40AF"),

                TextColor =
                    Colors.White,

                CornerRadius =
                    10
            };

        button.Clicked += async (_, _) =>
        {
            await OpenMediaAsync(
                message.MediaUrl);
        };

        stack.Children.Add(
            button);

        stack.Children.Add(
            new Label
            {
                Text =
                    string.IsNullOrWhiteSpace(
                        message.FileName)
                        ? "Video"
                        : message.FileName,

                FontSize =
                    12,

                TextColor =
                    Colors.Gray
            });
    }

    private void AddAudioMessage(
        VerticalStackLayout stack,
        BranchChatMessageUi message)
    {
        var button =
            new Button
            {
                Text =
                    "▶  Play audio",

                FontSize =
                    14,

                BackgroundColor =
                    Color.FromArgb("#0F766E"),

                TextColor =
                    Colors.White,

                CornerRadius =
                    10
            };

        button.Clicked += async (_, _) =>
        {
            await OpenMediaAsync(
                message.MediaUrl);
        };

        stack.Children.Add(
            button);

        stack.Children.Add(
            new Label
            {
                Text =
                    string.IsNullOrWhiteSpace(
                        message.FileName)
                        ? "Audio"
                        : message.FileName,

                FontSize =
                    12,

                TextColor =
                    Colors.Gray
            });
    }

    private static void AddUnavailableMediaLabel(
        VerticalStackLayout stack,
        string text)
    {
        stack.Children.Add(
            new Label
            {
                Text =
                    text,

                FontSize =
                    14,

                TextColor =
                    Colors.Gray
            });
    }

    private static async Task OpenMediaAsync(
        string? mediaUrl)
    {
        if (string.IsNullOrWhiteSpace(
                mediaUrl))
        {
            return;
        }

        try
        {
            await Launcher.Default.OpenAsync(
                new Uri(mediaUrl));
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine(
                $"[BRANCH_CHAT] Open media failed: {ex}");
        }
    }

    // ============================================================
    // LONG PRESS
    // ============================================================

    private void AttachLongPressGesture(
        Border container,
        BranchChatMessageUi message)
    {
        var pointer =
            new PointerGestureRecognizer();

        pointer.PointerPressed += (_, _) =>
        {
            _pointerPressedAt =
                DateTime.UtcNow;

            _longPressTriggered = false;
        };

        pointer.PointerReleased += async (_, _) =>
        {
            var elapsed =
                DateTime.UtcNow -
                _pointerPressedAt;

            if (elapsed.TotalMilliseconds >=
                    LongPressMilliseconds &&
                !_longPressTriggered)
            {
                _longPressTriggered = true;

                await ShowOwnMessageActionsAsync(
                    message);
            }

            _pointerPressedAt =
                DateTime.MinValue;
        };



        container.GestureRecognizers.Add(
            pointer);
    }

    private async Task ShowOwnMessageActionsAsync(
        BranchChatMessageUi message)
    {
        try
        {
            var choice =
                await DisplayActionSheet(
                    "Message options",
                    "Cancel",
                    null,
                    "Edit",
                    "Delete");

            switch (choice)
            {
                case "Edit":
                    await EditMessageAsync(
                        message);
                    break;

                case "Delete":
                    await DeleteMessageAsync(
                        message);
                    break;
            }
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine(
                $"[BRANCH_CHAT] Message actions failed: {ex}");
        }
    }

    // ============================================================
    // EDIT MESSAGE
    // ============================================================

    private async Task EditMessageAsync(
        BranchChatMessageUi message)
    {
        if (!string.Equals(
                message.MessageType,
                "text",
                StringComparison.OrdinalIgnoreCase))
        {
            await DisplayAlert(
                "Edit message",
                "Only text messages can currently be edited.",
                "OK");

            return;
        }

        var newText =
            await DisplayPromptAsync(
                "Edit message",
                "Change your message:",
                "Save",
                "Cancel",
                "Message",
                maxLength: 4000,
                keyboard: Keyboard.Default,
                initialValue: message.Text);

        if (newText == null)
        {
            return;
        }

        newText =
            newText.Trim();

        if (string.IsNullOrWhiteSpace(
                newText))
        {
            await DisplayAlert(
                "Edit message",
                "The message cannot be empty.",
                "OK");

            return;
        }

        try
        {
            var updated =
                await _communityService
                    .UpdateCommunityMessageAsync(
                        message.MessageId,
                        newText);

            var uiMessage =
                ToUiMessage(updated);

            var index =
                _messages.FindIndex(
                    existing =>
                        string.Equals(
                            existing.MessageId,
                            uiMessage.MessageId,
                            StringComparison.Ordinal));

            if (index >= 0)
            {
                _messages[index] =
                    uiMessage;
            }
            else
            {
                _messages.Add(
                    uiMessage);
            }

            _messages.Sort(
                (left, right) =>
                    left.CreatedAt.CompareTo(
                        right.CreatedAt));

            RenderMessages();
        }
        catch (UnauthorizedAccessException)
        {
            await DisplayAlert(
                "Access denied",
                "You can only edit your own message.",
                "OK");
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine(
                $"[BRANCH_CHAT] Edit failed: {ex}");

            await DisplayAlert(
                "Edit failed",
                "The message could not be edited.",
                "OK");
        }
    }

    // ============================================================
    // DELETE MESSAGE
    // ============================================================

    private async Task DeleteMessageAsync(
        BranchChatMessageUi message)
    {
        var confirmed =
            await DisplayAlert(
                "Delete message",
                "Delete this message permanently?",
                "Delete",
                "Cancel");

        if (!confirmed)
        {
            return;
        }

        try
        {
            var deleted =
                await _communityService
                    .DeleteCommunityMessageAsync(
                        message.MessageId);

            if (!deleted)
            {
                return;
            }

            _messages.RemoveAll(
                existing =>
                    string.Equals(
                        existing.MessageId,
                        message.MessageId,
                        StringComparison.Ordinal));

            RenderMessages();
        }
        catch (UnauthorizedAccessException)
        {
            await DisplayAlert(
                "Access denied",
                "You can only delete your own message.",
                "OK");
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine(
                $"[BRANCH_CHAT] Delete failed: {ex}");

            await DisplayAlert(
                "Delete failed",
                "The message could not be deleted.",
                "OK");
        }
    }

    // ============================================================
    // ATTACHMENT MENU
    // ============================================================

    private async void OnAttachmentClicked(
        object? sender,
        EventArgs e)
    {
        try
        {
            var choice =
                await DisplayActionSheet(
                    "Attach",
                    "Cancel",
                    null,
                    "🖼️ Image",
                    "🎥 Video",
                    "🎵 Audio");

            switch (choice)
            {
                case "🖼️ Image":
                    await PickImageAsync();
                    break;

                case "🎥 Video":
                    await PickVideoAsync();
                    break;

                case "🎵 Audio":
                    await PickAudioAsync();
                    break;
            }
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine(
                $"[BRANCH_CHAT] Attachment picker failed: {ex}");

            await DisplayAlert(
                "Attachment",
                "Unable to open the attachment picker.",
                "OK");
        }
    }

    // ============================================================
    // PICK IMAGE
    // ============================================================

    private async Task PickImageAsync()
    {
        try
        {
            var result =
                await MediaPicker.Default
                    .PickPhotoAsync(
                        new MediaPickerOptions
                        {
                            Title =
                                "Select an image"
                        });

            if (result == null)
            {
                return;
            }

            byte[]? previewBytes = null;
            await using (var stream = await result.OpenReadAsync())
            {
                using var memory = new MemoryStream();
                await stream.CopyToAsync(memory);
                previewBytes = memory.ToArray();
            }

            SetPendingAttachment(result, "image", previewBytes);
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine(
                $"[BRANCH_CHAT] Image picker/upload failed: {ex}");

            await DisplayAlert(
                "Image",
                "Unable to select or upload the image.",
                "OK");
        }
    }

    // ============================================================
    // PICK VIDEO
    // ============================================================

    private async Task PickVideoAsync()
    {
        try
        {
            var result =
                await MediaPicker.Default
                    .PickVideoAsync(
                        new MediaPickerOptions
                        {
                            Title =
                                "Select a video"
                        });

            if (result == null)
            {
                return;
            }

            SetPendingAttachment(result, "video");
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine(
                $"[BRANCH_CHAT] Video picker/upload failed: {ex}");

            await DisplayAlert(
                "Video",
                "Unable to select or upload the video.",
                "OK");
        }
    }

    // ============================================================
    // PICK AUDIO
    // ============================================================

    private async Task PickAudioAsync()
    {
        try
        {
            var fileType =
                new FilePickerFileType(
                    new Dictionary<DevicePlatform,
                        IEnumerable<string>>
                    {
                        [DevicePlatform.Android] =
                            new[]
                            {
                                "audio/*"
                            },

                        [DevicePlatform.WinUI] =
                            new[]
                            {
                                ".mp3",
                                ".wav",
                                ".m4a",
                                ".aac",
                                ".ogg"
                            }
                    });

            var result =
                await FilePicker.Default
                    .PickAsync(
                        new PickOptions
                        {
                            PickerTitle =
                                "Select audio",

                            FileTypes =
                                fileType
                        });

            if (result == null)
            {
                return;
            }

            SetPendingAttachment(result, "audio");
        }

            catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine(
                $"[BRANCH_CHAT] Audio picker/upload failed: {ex}");

            await DisplayAlert(
                "Audio",
                "Unable to select or upload the audio.",
                "OK");
        }
    }

    private void SetPendingAttachment(
        FileResult file,
        string attachmentType,
        byte[]? previewBytes = null)
    {
        _pendingAttachment = new PendingAttachment
        {
            File = file,
            Type = attachmentType,
            PreviewBytes = previewBytes
        };

        PendingAttachmentLabel.Text =
            $"{attachmentType.ToUpperInvariant()}: {file.FileName}";
        PendingAttachmentImage.Source =
            previewBytes == null
                ? null
                : ImageSource.FromStream(
                    () => new MemoryStream(previewBytes));
        PendingAttachmentLayout.IsVisible = true;
    }

    private void OnRemoveAttachmentClicked(
        object? sender,
        EventArgs e)
    {
        _pendingAttachment = null;
        PendingAttachmentImage.Source = null;
        PendingAttachmentLabel.Text = string.Empty;
        PendingAttachmentLayout.IsVisible = false;
    }

    // ============================================================
    // UPLOAD IMAGE
    // ============================================================

    private async Task UploadAndSendImageAsync(
        FileResult file)
    {
        var busyMessage =
            await ShowUploadStartedAsync(
                "Uploading image...");

        try
        {
            var result =
                await _cloudinaryService
                    .UploadImageAsync(
                        file);

            await SendMediaMessageAsync(
                messageType: "image",
                uploadResult: result,
                displayText:
                    string.IsNullOrWhiteSpace(
                        file.FileName)
                        ? "Image"
                        : file.FileName);
        }
        finally
        {
            await CloseUploadBusyAsync(
                busyMessage);
        }
    }

    // ============================================================
    // UPLOAD VIDEO
    // ============================================================

    private async Task UploadAndSendVideoAsync(
        FileResult file)
    {
        var busyMessage =
            await ShowUploadStartedAsync(
                "Uploading video...");

        try
        {
            var result =
                await _cloudinaryService
                    .UploadVideoAsync(
                        file);

            await SendMediaMessageAsync(
                messageType: "video",
                uploadResult: result,
                displayText:
                    string.IsNullOrWhiteSpace(
                        file.FileName)
                        ? "Video"
                        : file.FileName);
        }
        finally
        {
            await CloseUploadBusyAsync(
                busyMessage);
        }
    }

    // ============================================================
    // UPLOAD AUDIO
    // ============================================================

    private async Task UploadAndSendAudioAsync(
        FileResult file)
    {
        var busyMessage =
            await ShowUploadStartedAsync(
                "Uploading audio...");

        try
        {
            var result =
                await _cloudinaryService
                    .UploadAudioAsync(
                        file);

            await SendMediaMessageAsync(
                messageType: "audio",
                uploadResult: result,
                displayText:
                    string.IsNullOrWhiteSpace(
                        file.FileName)
                        ? "Audio"
                        : file.FileName);
        }
        finally
        {
            await CloseUploadBusyAsync(
                busyMessage);
        }
    }

    // ============================================================
    // SEND MEDIA MESSAGE
    // ============================================================

    private async Task<bool> SendMediaMessageAsync(
        string messageType,
        CloudinaryUploadResult uploadResult,
        string displayText)
    {
        if (_branchId <= 0)
        {
            await DisplayAlert(
                "Branch unavailable",
                "The current Branch Group could not be identified.",
                "OK");

            return false;
        }

        try
        {
            if (uploadResult == null ||
                string.IsNullOrWhiteSpace(uploadResult.SecureUrl))
            {
                throw new InvalidOperationException(
                    "Cloudinary did not return a usable media URL.");
            }

            System.Diagnostics.Debug.WriteLine(
                $"[COMMUNITY_MESSAGE] SEND START type={messageType}, has_attachment=true");
            System.Diagnostics.Debug.WriteLine(
                "[COMMUNITY_MESSAGE] APPWRITE MESSAGE CREATE START");

            await FirebaseInit.Initialized;

            var currentUser =
                MauiProgram.CurrentUser
                ?? await MauiProgram
                    .CreateAuthServiceForPages()
                    .GetCurrentUserAsync();

            if (currentUser == null)
            {
                await DisplayAlert(
                    "Not authenticated",
                    "Please sign in to send media.",
                    "OK");

                return false;
            }

            var currentUid =
                _auth.CurrentUser?.Uid
                ?? string.Empty;

            if (string.IsNullOrWhiteSpace(
                    currentUid))
            {
                await DisplayAlert(
                    "Not authenticated",
                    "Firebase authentication is required.",
                    "OK");

                return false;
            }

            if (currentUser.BranchId != _branchId)
            {
                await DisplayAlert(
                    "Access denied",
                    "You can only send media in your own Branch Group.",
                    "OK");

                return false;
            }

            var createdMessage =
                await _communityService
                    .CreateCommunityMessageAsync(
                        communityId:
                            _branchId.ToString(),

                        content:
                            displayText,

                        messageType:
                            messageType,

                        branchId:
                            _branchId.ToString(),

                        organizationalLevel:
                            "Branch",

                        mediaUrl:
                            uploadResult.SecureUrl,

                        thumbnailUrl:
                            string.Empty,

                        fileName:
                            uploadResult.OriginalFilename,

                        fileSize:
                            uploadResult.Bytes,

                        duration:
                            uploadResult.Duration);

            await _communityService
                .CacheCommunityMessageAsync(
                    createdMessage);

            var uiMessage =
                ToUiMessage(
                    createdMessage);

            var existingIndex =
                _messages.FindIndex(
                    existing =>
                        string.Equals(
                            existing.MessageId,
                            uiMessage.MessageId,
                            StringComparison.Ordinal));

            if (existingIndex >= 0)
            {
                _messages[existingIndex] =
                    uiMessage;
            }
            else
            {
                _messages.Add(
                    uiMessage);
            }

            _messages.Sort(
                (left, right) =>
                    left.CreatedAt.CompareTo(
                        right.CreatedAt));

            RenderMessages();

            System.Diagnostics.Debug.WriteLine(
                $"[COMMUNITY_MESSAGE] SEND COMPLETE type={messageType}, " +
                $"message_id={createdMessage.MessageId}");
            return true;
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine(
                $"[COMMUNITY_MESSAGE] MEDIA SEND FAILED {ex}");

            await DisplayAlert(
                "Media message failed",
                "The media was uploaded, but the message could not be saved.",
                "OK");
            return false;
        }
    }

    // ============================================================
    // UPLOAD INDICATOR
    // ============================================================

    private async Task<string>
        ShowUploadStartedAsync(
            string message)
    {
        await MainThread.InvokeOnMainThreadAsync(
            async () =>
            {
                BranchStatusLabel.Text =
                    message;

                await Task.CompletedTask;
            });

        return message;
    }

    private Task
        CloseUploadBusyAsync(
            string message)
    {
        return MainThread.InvokeOnMainThreadAsync(
            () =>
            {
                BranchStatusLabel.Text =
                    _messages.Count == 0
                        ? $"{MembersLabel.Text}"
                        : "Connected";

                return Task.CompletedTask;
            });
    }

    // ============================================================
    // TEXT MESSAGE SEND
    // ============================================================

    private async void OnSendClicked(
        object sender,
        EventArgs e)
    {
        var text =
            MessageEntry.Text?.Trim();

        System.Diagnostics.Debug.WriteLine(
            $"[COMMUNITY_MESSAGE] SEND START type={( _pendingAttachment?.Type ?? "text")}, " +
            $"has_attachment={_pendingAttachment != null}");

        if (_pendingAttachment != null)
        {
            var pending = _pendingAttachment;
            var caption = string.IsNullOrWhiteSpace(text)
                ? pending.File.FileName
                : text;
            var localMessage = new BranchChatMessageUi
            {
                MessageId = Guid.NewGuid().ToString("N"),
                ClientMessageId = Guid.NewGuid().ToString("N"),
                BranchId = _branchId,
                SenderUid = GetCurrentUserUid(),
                SenderName = "You",
                Text = caption,
                MessageType = pending.Type,
                FileName = pending.File.FileName,
                LocalPreviewBytes = pending.PreviewBytes,
                CreatedAt = DateTime.UtcNow,
                Status = "sending",
                PendingFile = pending.File
            };
            _messages.Add(localMessage);
            OnRemoveAttachmentClicked(null, EventArgs.Empty);
            MessageEntry.Text = string.Empty;
            RenderMessages();
            _ = PersistMediaMessageAsync(localMessage);

            return;
        }

        if (string.IsNullOrWhiteSpace(
                text))
        {
            await DisplayAlert(
                "Message required",
                "Please enter a message before sending.",
                "OK");

            return;
        }

        try
        {
            await FirebaseInit.Initialized;

            var currentUser =
                MauiProgram.CurrentUser
                ?? await MauiProgram
                    .CreateAuthServiceForPages()
                    .GetCurrentUserAsync();

            if (currentUser == null)
            {
                await DisplayAlert(
                    "Not authenticated",
                    "Please sign in to send a message.",
                    "OK");

                return;
            }

            var currentUid =
                _auth.CurrentUser?.Uid
                ?? string.Empty;

            if (string.IsNullOrWhiteSpace(
                    currentUid))
            {
                await DisplayAlert(
                    "Not authenticated",
                    "Firebase authentication is required to send a message.",
                    "OK");

                return;
            }

            if (currentUser.BranchId !=
                _branchId)
            {
                await DisplayAlert(
                    "Access denied",
                    "You can only send messages in your own Branch Group.",
                    "OK");

                return;
            }

            var clientMessageId = Guid.NewGuid().ToString("N");
            var localMessage = new BranchChatMessageUi
            {
                MessageId = clientMessageId,
                ClientMessageId = clientMessageId,
                BranchId = _branchId,
                SenderUid = currentUid,
                SenderName = "You",
                Text = text,
                MessageType = "text",
                CreatedAt = DateTime.UtcNow,
                Status = "sending"
            };

            _messages.Add(localMessage);
            MessageEntry.Text = string.Empty;
            RenderMessages();

            _ = PersistTextMessageAsync(localMessage);
        }
        catch (Exception ex)
        {
            await DisplayAlert(
                "Unable to send",
                ex.Message,
                "OK");
        }
    }

    private async Task PersistTextMessageAsync(BranchChatMessageUi localMessage)
    {
        try
        {
            var createdMessage =
                await _communityService
                    .CreateCommunityMessageAsync(
                        communityId:
                            _branchId.ToString(),

                        content:
                            localMessage.Text,

                        messageType:
                            "text",
                        clientMessageId:
                            localMessage.ClientMessageId,

                        branchId:
                            _branchId.ToString(),

                        organizationalLevel:
                            "Branch");

            if (createdMessage == null ||
                string.IsNullOrWhiteSpace(
                    createdMessage.MessageId))
            {
                throw new InvalidOperationException("The message was not accepted by the server.");
            }

            await _communityService
                .CacheCommunityMessageAsync(
                    createdMessage);

            var uiMessage =
                ToUiMessage(createdMessage);
            uiMessage.Status = "sent";
            var existingIndex =
                _messages.FindIndex(
                    existing => IsSameMessage(existing, uiMessage));

            if (existingIndex >= 0)
            {
                _messages[existingIndex] =
                    uiMessage;
            }
            else
            {
                _messages.Add(
                    uiMessage);
            }

            _messages.Sort(
                (left, right) =>
                    left.CreatedAt.CompareTo(
                        right.CreatedAt));

            RenderMessages();

            System.Diagnostics.Debug.WriteLine(
                $"[COMMUNITY_MESSAGE] SEND COMPLETE type=text, " +
                $"message_id={createdMessage.MessageId}");
        }
        catch (Exception ex)
        {
            localMessage.Status = "failed";
            await MainThread.InvokeOnMainThreadAsync(RenderMessages);
            System.Diagnostics.Debug.WriteLine($"[COMMUNITY_MESSAGE] TEXT SEND FAILED {ex}");
            await MainThread.InvokeOnMainThreadAsync(
                () => DisplayAlert(
                    "Unable to send",
                    ex.Message,
                    "OK"));
        }
    }

    // ============================================================
    // MEMBERS
    // ============================================================

    private async Task<List<BranchMemberUi>>
        LoadBranchMembersAsync()
    {
        try
        {
            var snapshot =
                await _firestore
                    .GetCollection("users")
                    .GetDocumentsAsync<
                        FirestoreUserProfileDocument>(
                        Source.Default);

            if (snapshot == null)
            {
                return new List<BranchMemberUi>();
            }

            return snapshot.Documents
                .Select(document =>
                    document.Data)
                .Where(profile =>
                    profile != null &&
                    profile.BranchId ==
                        _branchId)
                .Select(profile =>
                    new BranchMemberUi
                    {
                        Uid =
                            string.IsNullOrWhiteSpace(
                                profile!.Uid)
                                ? profile.DocumentId
                                : profile.Uid,

                        DisplayName =
                            !string.IsNullOrWhiteSpace(
                                profile.FullName)
                                ? profile.FullName
                                : !string.IsNullOrWhiteSpace(
                                    profile.Username)
                                    ? profile.Username
                                    : "Member",

                        Role =
                            string.IsNullOrWhiteSpace(
                                profile.Role)
                                ? "Member"
                                : profile.Role,

                        IsCurrentUser =
                            string.Equals(
                                GetCurrentUserUid(),
                                string.IsNullOrWhiteSpace(
                                    profile.Uid)
                                    ? profile.DocumentId
                                    : profile.Uid,
                                StringComparison.Ordinal)
                    })
                .OrderBy(
                    member =>
                        member.DisplayName,
                    StringComparer.OrdinalIgnoreCase)
                .ToList();
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine(
                $"[BRANCH_CHAT] Load members failed: {ex}");

            return new List<BranchMemberUi>();
        }
    }

    // ============================================================
    // MEMBERS TAP
    // ============================================================

    private async void MembersLabel_Tapped(
        object? sender,
        EventArgs e)
    {
        try
        {
            var members =
                await LoadBranchMembersAsync();

            if (members.Count == 0)
            {
                await DisplayAlert(
                    "Branch Members",
                    "No registered users are assigned to this branch yet.",
                    "OK");

                return;
            }

            var details =
                string.Join(
                    Environment.NewLine,
                    members.Select(
                        member =>
                            $"• {member.DisplayName}" +
                            (member.IsCurrentUser
                                ? " - You"
                                : $" - {member.Role}")));

            await DisplayAlert(
                $"Branch Members ({members.Count})",
                details,
                "OK");
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine(
                $"[BRANCH_CHAT] Members failed: {ex}");

            await DisplayAlert(
                "Branch Members",
                "The member list could not be loaded right now.",
                "OK");
        }
    }

    // ============================================================
    // ADD MEMBER
    // ============================================================

    private async void AddMemberButton_Clicked(
        object? sender,
        EventArgs e)
    {
        try
        {
            var currentUser =
                MauiProgram.CurrentUser
                ?? await MauiProgram
                    .CreateAuthServiceForPages()
                    .GetCurrentUserAsync();

            if (currentUser == null)
            {
                await DisplayAlert(
                    "Sign in required",
                    "Please sign in to manage branch membership.",
                    "OK");

                return;
            }

            if (currentUser.BranchId is int userBranchId &&
                userBranchId != _branchId)
            {
                await DisplayAlert(
                    "Access denied",
                    "Your account is not assigned to this branch.",
                    "OK");

                return;
            }

            var invitation = await _communityService.CreateBranchInvitationAsync(_branchId);
            if (string.IsNullOrWhiteSpace(invitation.Url))
                throw new InvalidOperationException("The invitation service returned no invitation URL.");

            await Share.Default.RequestAsync(
                new ShareTextRequest
                {
                    Title =
                        $"Invite people to {BranchName}",

                    Text =
                        $"Join CCT-USCF and connect with the {invitation.BranchName}." +
                        $"\n\n{invitation.Url}" +
                        $"\n\nThis invitation expires {invitation.ExpiresAtUtc.ToLocalTime():g}."
                });

            await DisplayAlert(
                "Invite people to " +
                    BranchName,
                $"The secure invitation link was created and shared. It expires {invitation.ExpiresAtUtc.ToLocalTime():g}.",
                "OK");
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine(
                $"[BRANCH_CHAT] Invitation creation failed: {ex}");

            await DisplayAlert(
                "Invitation could not be created",
                ex.Message,
                "OK");
        }
    }

    // ============================================================
    // REFRESH EVENT
    // ============================================================

    private async void OnMessagesRefreshing(
        object sender,
        EventArgs e)
    {
        try
        {
            await RefreshMessagesAsync();
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine(
                $"[BRANCH_CHAT_REFRESH] {ex}");
        }
        finally
        {
            MessagesRefreshView.IsRefreshing =
                false;
        }
    }

    // ============================================================
    // SCROLL
    // ============================================================

    private async Task ScrollMessagesToBottomAsync()
    {
        try
        {
            await MainThread.InvokeOnMainThreadAsync(
                async () =>
                {
                    if (MessagesLayout.Parent
                        is ScrollView scrollView)
                    {
                        await scrollView
                            .ScrollToAsync(
                                0,
                                double.MaxValue,
                                false);
                    }
                });
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine(
                $"[BRANCH_CHAT] Scroll failed: {ex}");
        }
    }

    // ============================================================
    // CURRENT USER
    // ============================================================

    private string GetCurrentUserUid()
    {
        return _auth.CurrentUser?.Uid
            ?? string.Empty;
    }

    // ============================================================
    // INVITATION MODEL
    // ============================================================

    private sealed class BranchInvitationRecord
        : IFirestoreObject
    {
        [FirestoreDocumentId]
        public string InvitationId { get; set; } =
            string.Empty;

        [FirestoreProperty("branchId")]
        public int BranchId { get; set; }

        [FirestoreProperty("branchName")]
        public string BranchName { get; set; } =
            string.Empty;

        [FirestoreProperty("createdByUid")]
        public string CreatedByUid { get; set; } =
            string.Empty;

        [FirestoreProperty("createdAt")]
        public DateTime CreatedAt { get; set; } =
            DateTime.UtcNow;

        [FirestoreProperty("status")]
        public string Status { get; set; } =
            "active";
    }

    // ============================================================
    // FIRESTORE USER PROFILE
    // ============================================================

    private sealed class FirestoreUserProfileDocument
        : IFirestoreObject
    {
        [FirestoreDocumentId]
        public string DocumentId { get; set; } =
            string.Empty;

        [FirestoreProperty("uid")]
        public string Uid { get; set; } =
            string.Empty;

        [FirestoreProperty("fullName")]
        public string FullName { get; set; } =
            string.Empty;

        [FirestoreProperty("username")]
        public string Username { get; set; } =
            string.Empty;

        [FirestoreProperty("role")]
        public string Role { get; set; } =
            string.Empty;

        [FirestoreProperty("branchId")]
        public int BranchId { get; set; }

        [FirestoreProperty("regionId")]
        public int RegionId { get; set; }

        [FirestoreProperty("districtId")]
        public int DistrictId { get; set; }
    }

    // ============================================================
    // BRANCH MEMBER UI MODEL
    // ============================================================

    private sealed class BranchMemberUi
    {
        public string Uid { get; set; } =
            string.Empty;

        public string DisplayName { get; set; } =
            string.Empty;

        public string Role { get; set; } =
            "Member";

        public bool IsCurrentUser { get; set; }
    }

    // ============================================================
    // CHAT MESSAGE UI MODEL
    // ============================================================

    private sealed class BranchChatMessageUi
    {
        public string MessageId { get; set; } =
            string.Empty;

        public string ClientMessageId { get; set; } =
            string.Empty;

        public int BranchId { get; set; }

        public string SenderUid { get; set; } =
            string.Empty;

        public string SenderName { get; set; } =
            string.Empty;

        public string Text { get; set; } =
            string.Empty;

        public string MessageType { get; set; } =
            "text";

        public string MediaUrl { get; set; } =
            string.Empty;

        public string ThumbnailUrl { get; set; } =
            string.Empty;

        public string FileName { get; set; } =
            string.Empty;

        public long FileSize { get; set; }

        public double Duration { get; set; }

        public DateTime CreatedAt { get; set; } =
            DateTime.UtcNow;

        public DateTime? UpdatedAt { get; set; }

        public string Status { get; set; } = "sent";
        public byte[]? LocalPreviewBytes { get; set; }
        public FileResult? PendingFile { get; set; }
    }

    private sealed class PendingAttachment
    {
        public FileResult File { get; init; } = null!;
        public string Type { get; init; } = string.Empty;
        public byte[]? PreviewBytes { get; init; }
    }
}
