using System.Globalization;
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
#if ANDROID
using Android.Views;
#endif

namespace CCT_USCF.Pages;

[QueryProperty(nameof(GroupId), "groupId")]
[QueryProperty(nameof(GroupName), "groupName")]
[QueryProperty(nameof(GroupType), "groupType")]
[QueryProperty(nameof(OrganizationalLevel), "organizationalLevel")]
[QueryProperty(nameof(RegionId), "regionId")]
[QueryProperty(nameof(DistrictId), "districtId")]
[QueryProperty(nameof(BranchId), "branchId")]
[QueryProperty(nameof(CanDelete), "canDelete")]
public partial class GroupChatPage : ContentPage
{
    private readonly MediaViewerService _mediaViewer;
    // ============================================================
    // SERVICES
    // ============================================================

    private readonly IFirebaseAuth _auth;
    private readonly IFirebaseFirestore _firestore;
    private readonly CommunityService _communityService;
    private readonly CloudinaryService _cloudinaryService;
    private readonly ChurchGroupService _groupService;
    private readonly AppwriteService _appwriteService;
    private readonly AppAppearanceService _appearance;

    // ============================================================
    // MESSAGE STATE
    // ============================================================

    private readonly List<GroupChatMessageUi> _messages = new();
    private readonly Dictionary<string, FirestoreUserProfileDocument> _profilesByUid =
        new(StringComparer.Ordinal);
    private bool _renderQueued;
    private readonly HashSet<string> _selectedMessageIds = new(StringComparer.Ordinal);
    private GroupChatMessageUi? _replyingTo;

    private bool _chatHistoryEnrolled;
    private bool _realtimeEnabled;
    private bool _realtimeListenerAttached;
    private bool _isReadingOlderMessages;
    private int _unreadIncomingCount;
    private bool _isComposerBusy;
    private bool _hasLoadedMessages;

#if ANDROID
    private Android.Media.MediaRecorder? _audioRecorder;
#endif

    // ============================================================
    // REALTIME
    // ============================================================

    private ClientWebSocket? _appwriteRealtimeSocket;
    private CancellationTokenSource? _appwriteRealtimeCts;

    // ============================================================
    // PENDING ATTACHMENT
    // ============================================================

    private FileResult? _pendingAttachment;
    private string _pendingAttachmentType = string.Empty;
    private string _pendingAttachmentLocalPath = string.Empty;

    // ============================================================
    // GROUP PARAMETERS
    // ============================================================

    private string _groupId = string.Empty;

    public string GroupId
    {
        get => _groupId;

        set
        {
            _groupId =
                string.IsNullOrWhiteSpace(value)
                    ? string.Empty
                    : value.Trim();

            UpdateGroupTitle();
        }
    }

    private async Task DeleteSelectedMessagesAsync()
    {
        var selected = _messages
            .Where(message => _selectedMessageIds.Contains(message.MessageId))
            .ToList();

        if (selected.Count == 0 ||
            !await DisplayAlert(
                "Delete selected messages",
                $"Delete {selected.Count} selected messages permanently?",
                "Delete",
                "Cancel"))
        {
            return;
        }

        foreach (var message in selected)
        {
            try
            {
                if (await _communityService.DeleteCommunityMessageAsync(message.MessageId))
                {
                    await _communityService.MarkCommunityMessageLocallyDeletedAsync(
                        message.GroupId,
                        message.MessageId);
                    message.IsDeleted = true;
                    message.Text = "Message deleted";
                    message.UpdatedAt = DateTime.UtcNow;
                }
            }
            catch (UnauthorizedAccessException)
            {
                await DisplayAlert(
                    "Access denied",
                    "You can only delete your own messages.",
                    "OK");
                break;
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine(
                    $"[GROUP_CHAT] Selected delete failed: {ex}");
            }
        }

        _selectedMessageIds.Clear();
        RenderMessages();
    }

    private string _groupName = "Group Chat";

    public string GroupName
    {
        get => _groupName;

        set
        {
            _groupName =
                string.IsNullOrWhiteSpace(value)
                    ? "Group Chat"
                    : value.Trim();

            UpdateGroupTitle();
        }
    }

    private string _groupType = "Group";

    public string GroupType
    {
        get => _groupType;

        set
        {
            _groupType =
                string.IsNullOrWhiteSpace(value)
                    ? "Group"
                    : value.Trim();
        }
    }

    private string _organizationalLevel = "Group";

    public string OrganizationalLevel
    {
        get => _organizationalLevel;

        set
        {
            _organizationalLevel =
                string.IsNullOrWhiteSpace(value)
                    ? "Group"
                    : value.Trim();
        }
    }

    private int _regionId;

    public int RegionId
    {
        get => _regionId;
        set => _regionId = value;
    }

    private int _districtId;

    public int DistrictId
    {
        get => _districtId;
        set => _districtId = value;
    }

    private int _branchId;

    public int BranchId
    {
        get => _branchId;
        set => _branchId = value;
    }

    private bool _canDelete;

    public bool CanDelete
    {
        get => _canDelete;
        set
        {
            _canDelete = value;
            if (DeleteGroupButton != null)
                DeleteGroupButton.IsVisible = value;
        }
    }

    // ============================================================
    // CONSTRUCTOR
    // ============================================================

    public GroupChatPage()
    {
        InitializeComponent();
        _mediaViewer = MauiProgram.Services.GetRequiredService<MediaViewerService>();
        _appearance = MauiProgram.Services.GetRequiredService<AppAppearanceService>();

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

        _groupService =
            MauiProgram.Services
                .GetRequiredService<ChurchGroupService>();

        _appwriteService =
            MauiProgram.Services
                .GetRequiredService<AppwriteService>();

        var membersTap =
            new TapGestureRecognizer();

        membersTap.Tapped +=
            MembersLabel_Tapped;

        MembersLabel.GestureRecognizers.Add(
            membersTap);

        AddMemberButton.Clicked +=
            AddMemberButton_Clicked;
    }

    private async void OnDeleteGroupClicked(object? sender, EventArgs e)
    {
        if (!CanDelete || string.IsNullOrWhiteSpace(_groupId))
            return;

        var confirmed = await DisplayAlert(
            "Delete Group?",
            "This will remove the group from this scope and members will no longer be able to use it.",
            "Delete",
            "Cancel");
        if (!confirmed)
            return;

        DeleteGroupButton.IsEnabled = false;
        try
        {
            await _groupService.DeleteGroupAsync(_groupId);
            await _communityService.RemoveLocalGroupCacheAsync(GetBackendCommunityId());
            await DisplayAlert("Group deleted", "The group is no longer available.", "OK");
            await Shell.Current.GoToAsync("..", true);
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine($"[GROUP_CHAT] Delete failed: {ex}");
            DeleteGroupButton.IsEnabled = true;
            await DisplayAlert("Unable to delete group", ex.Message, "OK");
        }
    }

    // ============================================================
    // TITLE
    // ============================================================

    private void UpdateGroupTitle()
    {
        if (GroupTitleLabel == null)
        {
            return;
        }

        GroupTitleLabel.Text =
            string.IsNullOrWhiteSpace(GroupName)
                ? "Group Chat"
                : GroupName;
    }

    // ============================================================
    // PAGE APPEARING
    // ============================================================

    protected override async void OnAppearing()
    {
        base.OnAppearing();

        try
        {
            _realtimeEnabled = true;

            if (string.IsNullOrWhiteSpace(_groupId))
            {
                GroupStatusLabel.Text =
                    "The selected group is unavailable.";

                return;
            }

            AttachRealtimeListener();

            await LoadGroupAsync();
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine(
                $"[GROUP_CHAT] OnAppearing failed: {ex}");

            GroupStatusLabel.Text =
                "Unable to load this group.";
        }
    }

    // ============================================================
    // PAGE DISAPPEARING
    // ============================================================

    protected override void OnDisappearing()
    {
        base.OnDisappearing();

        _realtimeEnabled = false;

        DisposeRealtimeListener();
    }

    // ============================================================
    // REALTIME ATTACH
    // ============================================================

    private void AttachRealtimeListener()
    {
        if (_realtimeListenerAttached ||
            !_realtimeEnabled ||
            string.IsNullOrWhiteSpace(_groupId))
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

            _ = Task.Run(
                async () =>
                {
                    try
                    {
                        await ListenForAppwriteMessagesAsync(
                            cancellationToken);
                    }
                    catch (OperationCanceledException)
                    {
                        System.Diagnostics.Debug.WriteLine(
                            "[GROUP_CHAT] Realtime listener cancelled.");
                    }
                    catch (Exception ex)
                    {
                        System.Diagnostics.Debug.WriteLine(
                            $"[GROUP_CHAT] Realtime listener failed: {ex}");

                        _realtimeListenerAttached = false;
                    }
                });
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine(
                $"[GROUP_CHAT] Realtime setup failed: {ex}");

            _realtimeListenerAttached = false;
        }
    }

    // ============================================================
    // REALTIME DISPOSE
    // ============================================================

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
                $"[GROUP_CHAT] Realtime socket dispose failed: {ex}");
        }

        _appwriteRealtimeSocket = null;
    }

    // ============================================================
    // REALTIME LISTENER
    // ============================================================

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
                Scheme =
                    Uri.UriSchemeWss,

                Path =
                    "/v1/realtime",

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

                    channels =
                        new[]
                        {
                            channel
                        }
                });

        await socket.ConnectAsync(
            uriBuilder.Uri,
            cancellationToken);

        await socket.SendAsync(
            Encoding.UTF8.GetBytes(
                subscription),
            WebSocketMessageType.Text,
            true,
            cancellationToken);

        var buffer =
            new byte[16 * 1024];

        var builder =
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

            builder.Append(chunk);

            if (!result.EndOfMessage)
            {
                continue;
            }

            var rawMessage =
                builder.ToString();

            builder.Clear();

            ProcessRealtimeMessage(
                rawMessage);
        }
    }

    // ============================================================
    // REALTIME MESSAGE PROCESSING
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
                JsonDocument.Parse(
                    rawMessage);

            var root =
                document.RootElement;

            if (!root.TryGetProperty(
                    "type",
                    out var typeElement))
            {
                return;
            }

            if (!string.Equals(
                    typeElement.ToString(),
                    "event",
                    StringComparison.OrdinalIgnoreCase))
            {
                return;
            }

            JsonElement payload;

            if (!root.TryGetProperty(
                    "payload",
                    out payload))
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

            if (string.IsNullOrWhiteSpace(
                    communityId))
            {
                return;
            }

            if (!string.Equals(
                    communityId,
                    GetBackendCommunityId(),
                    StringComparison.Ordinal))
            {
                return;
            }

            var messageId =
                GetAppwriteDocumentId(
                    payload);

            var clientMessageId =
                TryGetString(
                    payload,
                    "client_message_id");

            if (string.IsNullOrWhiteSpace(
                    messageId))
            {
                return;
            }

            var senderUid =
                TryGetString(
                    payload,
                    "sender_uid");

            if (string.IsNullOrWhiteSpace(
                    senderUid))
            {
                senderUid =
                    TryGetString(
                        payload,
                        "sender_id");
            }

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
            if (string.IsNullOrWhiteSpace(content))
            {
                content =
                    TryGetString(payload, "text");
            }

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

            var createdAt =
                TryGetDateTime(
                    payload,
                    "created_at");

            if (createdAt == default)
            {
                createdAt =
                    DateTime.UtcNow;
            }

            var message =
                new GroupChatMessageUi
                {
                    MessageId =
                        messageId,

                    ClientMessageId =
                        clientMessageId,

                    GroupId =
                        communityId,

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

                    IsDeleted =
                        TryGetBoolean(payload, "is_deleted"),

                    IsEdited =
                        TryGetBoolean(payload, "is_edited"),

                    UpdatedAt =
                        TryGetDateTime(payload, "updated_at"),

                    ReplyToMessageId =
                        TryGetString(payload, "reply_to_message_id"),

                    ReplyToSenderName =
                        TryGetString(payload, "reply_to_sender_name"),

                    ReplyToPreview =
                        TryGetString(payload, "reply_to_preview")
                };

            message.SenderName = GetPublicSenderName(message);
            if (message.IsDeleted)
                message.Text = "Message deleted";

            _ =
                HandleRealtimeMessageAsync(
                    message);
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine(
                $"[GROUP_CHAT] Realtime parsing failed: {ex}");
        }
    }

    // ============================================================
    // REALTIME UI UPDATE
    // ============================================================

    private async Task HandleRealtimeMessageAsync(
        GroupChatMessageUi message)
    {
        try
        {
            var currentUser =
                MauiProgram.CurrentUser
                ?? await MauiProgram.CreateAuthServiceForPages().GetCurrentUserAsync();

            if (string.Equals(
                    NormalizeLevel(OrganizationalLevel),
                    "Branch",
                    StringComparison.OrdinalIgnoreCase) &&
                (currentUser?.BranchId != _branchId ||
                 (currentUser.RegisteredAtUtc > DateTime.UnixEpoch &&
                  message.CreatedAt < currentUser.RegisteredAtUtc)))
            {
                System.Diagnostics.Debug.WriteLine(
                    $"[COMMUNITY_REALTIME] Ignored ineligible group message group={_groupId} createdAt={message.CreatedAt:O}");
                return;
            }

            if (string.IsNullOrWhiteSpace(message.MessageId))
            {
                System.Diagnostics.Debug.WriteLine(
                    $"[GROUP_CHAT] Skipping realtime message with missing message id. sender_uid={message.SenderUid}, group={message.GroupId}");
                return;
            }

            await MainThread.InvokeOnMainThreadAsync(
                () =>
                {
                    var existingIndex =
                        _messages.FindIndex(
                            existing =>
                                string.Equals(
                                    existing.MessageId,
                                    message.MessageId,
                                    StringComparison.Ordinal) ||
                                (!string.IsNullOrWhiteSpace(message.ClientMessageId) &&
                                 string.Equals(
                                     existing.ClientMessageId,
                                     message.ClientMessageId,
                                     StringComparison.Ordinal)));

                    if (existingIndex >= 0)
                    {
                        _messages[existingIndex] = message;
                        RenderMessages();
                        System.Diagnostics.Debug.WriteLine(
                            $"[GROUP_CHAT] Duplicate realtime message suppressed. message_id={message.MessageId}, group={message.GroupId}");
                        return;
                    }

                    AddOrReplaceMessage(message);
                    RenderMessages(!_isReadingOlderMessages);
                    if (_isReadingOlderMessages &&
                        !string.Equals(
                            message.SenderUid,
                            GetCurrentUserUid(),
                            StringComparison.Ordinal))
                    {
                        _unreadIncomingCount++;
                        NewMessagesButton.Text = $"{_unreadIncomingCount} new messages";
                        NewMessagesButton.IsVisible = true;
                    }
                });

            await CacheUiMessageAsync(
                message);
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine(
                $"[GROUP_CHAT] Realtime handling failed: {ex}");
        }
    }

    // ============================================================
    // LOAD GROUP
    // ============================================================

    private async Task LoadGroupAsync()
    {
        GroupStatusLabel.Text =
            "Loading group...";

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
                GroupStatusLabel.Text =
                    "Please sign in to access this group.";

                return;
            }

            var validation =
                await ValidateGroupAccessAsync(
                    currentUser);

            if (!validation.IsAllowed)
            {
                GroupStatusLabel.Text =
                    validation.Message;

                return;
            }

            await EnsureCurrentUserMembershipAsync(
                currentUser);

            List<GroupMemberUi> members;
            try
            {
                members = await LoadGroupMembersAsync();
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine(
                    $"[GROUP_CHAT] Member load skipped while offline: {ex}");
                members = new List<GroupMemberUi>();
            }

            MembersLabel.Text =
                members.Count == 1
                    ? "Members (1)"
                    : $"Members ({members.Count})";

            GroupStatusLabel.Text =
                members.Count == 1
                    ? "1 member in this group"
                    : $"{members.Count} members in this group";

            var backendGroupId = GetBackendCommunityId();
            try
            {
                _chatHistoryEnrolled =
                    await _communityService.GetChatHistoryEnrolledAsync(backendGroupId);
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine(
                    $"[GROUP_CHAT] Chat history enrollment unavailable; opening cached group: {ex}");
                _chatHistoryEnrolled = true;
            }
            System.Diagnostics.Debug.WriteLine(
                $"[GroupChat] UserUid={GetCurrentUserUid()} GroupId={backendGroupId} " +
                $"HistoryEnrolled={_chatHistoryEnrolled}");

            await LoadMessagesAsync();
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine(
                $"[GROUP_CHAT] Group load failed: {ex}");

            GroupStatusLabel.Text =
                "Unable to load this group right now.";
        }
    }

    // ============================================================
    // LOAD MESSAGES
    // ============================================================

    private async Task LoadMessagesAsync()
    {
        var communityId =
            GetBackendCommunityId();

        if (string.IsNullOrWhiteSpace(
                communityId))
        {
            return;
        }

        try
        {
            var appwriteMessages =
                await _communityService.LoadGroupMessagesWithCacheAsync(
                    communityId,
                    100,
                    OrganizationalLevel,
                    _branchId > 0 ? _branchId.ToString() : null,
                    _regionId > 0 ? _regionId.ToString() : null,
                    _districtId > 0 ? _districtId.ToString() : null);

            var loadedMessages =
                appwriteMessages
                    .Where(
                        message =>
                            string.Equals(
                                message.CommunityId,
                                communityId,
                                StringComparison.Ordinal))
                    .Select(
                        ToUiMessage)
                    .OrderBy(
                        message =>
                            message.CreatedAt)
                    .ToList();

            await MainThread.InvokeOnMainThreadAsync(() =>
            {
                var hadMessages = _messages.Count > 0;
                var changed = MergeLoadedMessages(loadedMessages);
                if (changed || !_hasLoadedMessages)
                {
                    _hasLoadedMessages = true;
                    RenderMessages(!hadMessages);
                }
            });
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine(
                $"[GROUP_CHAT] Message load failed: {ex}");
        }
    }

    // ============================================================
    // MAP COMMUNITY MESSAGE
    // ============================================================

    private GroupChatMessageUi ToUiMessage(
        Models.CommunityMessage message)
    {
        var uiMessage = new GroupChatMessageUi
        {
            MessageId =
                string.IsNullOrWhiteSpace(
                    message.MessageId)
                    ? message.Id
                    : message.MessageId,

            ClientMessageId =
                message.ClientMessageId,

            GroupId =
                message.CommunityId,

            SenderUid =
                message.SenderUid,

            SenderName =
                string.IsNullOrWhiteSpace(
                    message.SenderName)
                    ? "Member"
                    : message.SenderName,

            Text =
                message.IsDeleted ? "Message deleted" : message.Content,

            MessageType =
                string.IsNullOrWhiteSpace(
                    message.MessageType)
                    ? "text"
                    : message.MessageType,

            MediaUrl =
                message.MediaUrl
                ?? string.Empty,

            ThumbnailUrl =
                message.ThumbnailUrl
                ?? string.Empty,

            FileName =
                message.FileName
                ?? string.Empty,

            FileSize =
                message.FileSize,

            Duration =
                message.Duration,

            CreatedAt =
                EnsureUtc(message.CreatedAt),

            UpdatedAt =
                message.UpdatedAt,

            IsDeleted =
                message.IsDeleted,

            IsEdited =
                message.IsEdited,

            ReplyToMessageId =
                message.ReplyToMessageId,

            ReplyToSenderName =
                message.ReplyToSenderName,

            ReplyToPreview =
                message.ReplyToPreview,

            Status =
                message.Status
        };
        uiMessage.SenderName = GetPublicSenderName(uiMessage);
        return uiMessage;
    }

    // ============================================================
    // CACHE MESSAGE
    // ============================================================

    private async Task CacheUiMessageAsync(
        GroupChatMessageUi message)
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

                    ClientMessageId =
                        message.ClientMessageId,

                    SenderUid =
                        message.SenderUid,

                    SenderName =
                        message.SenderName,

                    Content =
                        message.Text,

                    CommunityId =
                        message.GroupId,

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
                        message.UpdatedAt,

                    IsDeleted =
                        message.IsDeleted,

                    IsEdited =
                        message.IsEdited,

                    ReplyToMessageId =
                        message.ReplyToMessageId,

                    ReplyToSenderName =
                        message.ReplyToSenderName,

                    ReplyToPreview =
                        message.ReplyToPreview
                };

            await _communityService
                .CacheCommunityMessageAsync(
                    communityMessage);
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine(
                $"[GROUP_CHAT] Cache message failed: {ex}");
        }
    }

    // ============================================================
    // RENDER MESSAGES
    // ============================================================

    private void RenderMessages(
        bool scrollToBottom = false)
    {
        if (!MainThread.IsMainThread)
        {
            if (_renderQueued)
                return;

            _renderQueued = true;
            MainThread.BeginInvokeOnMainThread(() =>
            {
                _renderQueued = false;
                RenderMessages(scrollToBottom);
            });
            return;
        }

        MessagesLayout.Children.Clear();

        if (_messages.Count == 0)
        {
            MessagesLayout.Children.Add(new Border
            {
                BackgroundColor = Color.FromArgb("#FFFFFF"),
                Stroke = Color.FromArgb("#DCE7DF"),
                StrokeThickness = 1,
                StrokeShape = new RoundRectangle { CornerRadius = 18 },
                Padding = new Thickness(22, 24),
                Margin = new Thickness(8, 34, 8, 0),
                Content = new VerticalStackLayout
                {
                    Spacing = 6,
                    HorizontalOptions = LayoutOptions.Center,
                    Children =
                    {
                        new Label
                        {
                            Text = "✦",
                            FontSize = 26,
                            TextColor = Color.FromArgb("#A16207"),
                            HorizontalOptions = LayoutOptions.Center
                        },
                        new Label
                        {
                            Text = "Start the conversation",
                            FontSize = 17,
                            FontAttributes = FontAttributes.Bold,
                            TextColor = Color.FromArgb("#102A20"),
                            HorizontalOptions = LayoutOptions.Center
                        },
                        new Label
                        {
                            Text = "Be the first to share something with this community.",
                            FontSize = 13,
                            TextColor = Color.FromArgb("#667A70"),
                            HorizontalTextAlignment = Microsoft.Maui.TextAlignment.Center
                        }
                    }
                }
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

            MessagesLayout.Children.Add(
                CreateMessageBubble(message, isCurrentUser));
        }

        if (scrollToBottom)
            _ = ScrollMessagesToBottomAsync();
    }

    // ============================================================
    // MESSAGE BUBBLE
    // ============================================================

    private Microsoft.Maui.Controls.View CreateMessageBubble(
        GroupChatMessageUi message,
        bool isCurrentUser)
    {
        var border =
            new Border
            {
                Padding =
                    new Thickness(
                        10,
                        5),

                Margin =
                    new Thickness(
                        isCurrentUser ? 28 : 0,
                        0,
                        isCurrentUser ? 0 : 28,
                        3),

                BackgroundColor =
                    isCurrentUser
                        ? Color.FromArgb("#E4F4E9")
                        : GetSenderColor(message.SenderUid),

                Stroke =
                    Color.FromArgb("#DCE7DF"),

                StrokeThickness =
                    _selectedMessageIds.Contains(message.MessageId) ? 3 : 1,

                StrokeShape =
                    new RoundRectangle
                    {
                        CornerRadius = 16
                    },

                HorizontalOptions =
                    isCurrentUser ? LayoutOptions.End : LayoutOptions.Start,

                MaximumWidthRequest = 320,
                MinimumWidthRequest = 80
            };

        var stack =
            new VerticalStackLayout
            {
                Spacing = 2
            };

        stack.Children.Add(
            new Label
            {
                Text =
                    (_selectedMessageIds.Contains(message.MessageId) ? "✓ " : string.Empty) +
                    (isCurrentUser ? "You" : GetPublicSenderName(message)),

                FontSize =
                    11 * _appearance.ChatFontScale,

                FontAttributes =
                    FontAttributes.Bold,

                TextColor = isCurrentUser
                    ? Color.FromArgb("#075E36")
                    : Color.FromArgb("#315244"),
                FontFamily = _appearance.ChatFontFamily
            });

        AddMessageContent(
            stack,
            message);

        if (!string.IsNullOrWhiteSpace(message.ReplyToMessageId))
        {
            stack.Children.Insert(1, new Label
            {
                Text = message.ReplyToPreview == "Message deleted"
                    ? "Replying to deleted message"
                    : $"Replying to {SafePublicName(message.ReplyToSenderName)}: {message.ReplyToPreview}",
                FontSize = 10 * _appearance.ChatFontScale,
                TextColor = Color.FromArgb("#667A70"),
                LineBreakMode = LineBreakMode.TailTruncation
            });
        }

        var timestampText = message.CreatedAt.ToLocalTime()
            .ToString("HH:mm", CultureInfo.InvariantCulture);
        if (message.IsEdited || message.UpdatedAt.HasValue)
            timestampText += " · edited";

        stack.Children.Add(
            new Label
            {
                Text = timestampText,

                FontSize =
                    10 * _appearance.ChatFontScale,

                TextColor = Color.FromArgb("#64748B"),
                FontFamily = _appearance.ChatFontFamily,

                HorizontalOptions =
                    LayoutOptions.End
            });

        border.Content =
            stack;

        AttachNativeMessageGesture(border, message);

        if (isCurrentUser)
            return border;

        var avatar = new Border
        {
            WidthRequest = 30,
            HeightRequest = 30,
            Margin = new Thickness(0, 2, 6, 0),
            BackgroundColor = GetSenderColor(message.SenderUid),
            StrokeThickness = 0,
            StrokeShape = new RoundRectangle { CornerRadius = 15 },
            Content = new Label
            {
                Text = GetAvatarText(message),
                FontSize = 12,
                FontAttributes = FontAttributes.Bold,
                TextColor = Color.FromArgb("#315244"),
                HorizontalTextAlignment = Microsoft.Maui.TextAlignment.Center,
                VerticalTextAlignment = Microsoft.Maui.TextAlignment.Center
            }
        };
        var avatarTap = new TapGestureRecognizer();
        avatarTap.Tapped += async (_, _) => await ShowSenderDetailsAsync(message);
        avatar.GestureRecognizers.Add(avatarTap);

        return new HorizontalStackLayout
        {
            Spacing = 0,
            HorizontalOptions = LayoutOptions.Start,
            Children = { avatar, border }
        };
    }

    private string GetPublicSenderName(GroupChatMessageUi message)
    {
        if (_profilesByUid.TryGetValue(message.SenderUid, out var profile))
        {
            if (!string.IsNullOrWhiteSpace(profile.Username))
                return profile.Username.Trim();
            if (!string.IsNullOrWhiteSpace(profile.FullName))
                return profile.FullName.Trim();
        }

        return IsEmailLike(message.SenderName)
            ? "Member"
            : string.IsNullOrWhiteSpace(message.SenderName)
                ? "Member"
                : message.SenderName.Trim();
    }

    private string GetAvatarText(GroupChatMessageUi message)
    {
        var name = GetPublicSenderName(message);
        return name.Length == 0 ? "?" : name[..1].ToUpperInvariant();
    }

    private async Task ShowSenderDetailsAsync(GroupChatMessageUi message)
    {
        _profilesByUid.TryGetValue(message.SenderUid, out var profile);
        await DisplayAlert(
            "Sender details",
            $"Username: {GetPublicSenderName(message)}\n" +
            $"Name: {(!string.IsNullOrWhiteSpace(profile?.FullName) ? profile.FullName : "Unavailable")}\n" +
            $"Email: {(!string.IsNullOrWhiteSpace(profile?.Email) ? profile.Email : "Unavailable offline")}",
            "Close");
    }

    private static bool IsEmailLike(string? value) =>
        !string.IsNullOrWhiteSpace(value) &&
        value.Contains('@', StringComparison.Ordinal);

    private static string SafePublicName(string? value) =>
        IsEmailLike(value) ? "Member" :
        string.IsNullOrWhiteSpace(value) ? "Member" : value.Trim();

    private static Color GetSenderColor(string senderUid)
    {
        var palette = new[] { "#F0F6FF", "#F3F0FF", "#EFFAF7", "#FFF7ED", "#F8F4FF" };
        var hash = 17;
        foreach (var character in senderUid ?? string.Empty)
            hash = unchecked(hash * 31 + character);
        return Color.FromArgb(palette[(hash & int.MaxValue) % palette.Length]);
    }

    private void AttachNativeMessageGesture(
        Border container,
        GroupChatMessageUi message)
    {
#if ANDROID
        container.HandlerChanged += (_, _) =>
        {
            if (container.Handler?.PlatformView is not Android.Views.View nativeView ||
                nativeView.Tag is MessageGestureListener)
            {
                return;
            }

            var listener = new MessageGestureListener(
                message,
                BeginReply,
                ShowMessageActionsAsync,
                () => RenderMessages());
            var detector = new GestureDetector(
                nativeView.Context,
                listener);
            nativeView.Tag = listener;
            nativeView.Touch += (_, args) =>
            {
                listener.HandleTouch(args.Event);
                detector.OnTouchEvent(args.Event);
                if (args.Event?.ActionMasked is MotionEventActions.Up or MotionEventActions.Cancel)
                {
                    args.Handled = true;
                }
            };
        };
#endif
    }

    private async Task ShowMessageActionsAsync(GroupChatMessageUi message)
    {
        try
        {
            var actions = new List<string> { "Reply", "Select" };
            if (string.Equals(message.SenderUid, GetCurrentUserUid(), StringComparison.Ordinal))
            {
                actions.Add("Edit");
                actions.Add("Delete");
            }
            if (_selectedMessageIds.Count > 1)
                actions.Add("Delete selected");

            var choice = await DisplayActionSheet(
                "Message options", "Cancel", null, actions.ToArray());

            switch (choice)
            {
                case "Reply":
                    BeginReply(message);
                    break;
                case "Select":
                    ToggleMessageSelection(message);
                    break;
                case "Edit":
                    await EditMessageAsync(message);
                    break;
                case "Delete":
                    await DeleteMessageAsync(message);
                    break;
                case "Delete selected":
                    await DeleteSelectedMessagesAsync();
                    break;
            }
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine($"[GROUP_CHAT] Message actions failed: {ex}");
        }
    }

    private void BeginReply(GroupChatMessageUi message)
    {
        _replyingTo = message;
        ReplyPreviewLabel.Text = message.IsDeleted
            ? "Replying to deleted message"
            : $"Replying to {message.SenderName}: {Shorten(message.Text)}";
        ReplyPreviewLayout.IsVisible = true;
        MessageEntry.Focus();
    }

    private void ToggleMessageSelection(GroupChatMessageUi message)
    {
        if (!_selectedMessageIds.Add(message.MessageId))
            _selectedMessageIds.Remove(message.MessageId);

        GroupStatusLabel.Text = _selectedMessageIds.Count == 0
            ? $"{_messages.Count} messages in this group"
            : $"{_selectedMessageIds.Count} message(s) selected";
        RenderMessages();
    }

    private static string Shorten(string value) =>
        string.IsNullOrWhiteSpace(value)
            ? "Message"
            : value.Length <= 80 ? value : value[..77] + "...";

    private async Task EditMessageAsync(GroupChatMessageUi message)
    {
        if (message.IsDeleted ||
            !string.Equals(message.MessageType, "text", StringComparison.OrdinalIgnoreCase))
        {
            await DisplayAlert("Edit message", "Only text messages can currently be edited.", "OK");
            return;
        }

        var newText = await DisplayPromptAsync(
            "Edit message",
            "Change your message:",
            "Save",
            "Cancel",
            "Message",
            maxLength: 4000,
            keyboard: Keyboard.Default,
            initialValue: message.Text);

        if (newText == null)
            return;

        newText = newText.Trim();
        if (string.IsNullOrWhiteSpace(newText))
        {
            await DisplayAlert("Edit message", "The message cannot be empty.", "OK");
            return;
        }

        try
        {
            var updated = await _communityService.UpdateCommunityMessageAsync(
                message.MessageId,
                newText);
            ReplaceUiMessage(ToUiMessage(updated));
            await MainThread.InvokeOnMainThreadAsync(() => RenderMessages());
        }
        catch (UnauthorizedAccessException)
        {
            await DisplayAlert("Access denied", "You can only edit your own message.", "OK");
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine($"[GROUP_CHAT] Edit failed: {ex}");
            await DisplayAlert("Edit failed", "The message could not be edited.", "OK");
        }
    }

    private async Task DeleteMessageAsync(GroupChatMessageUi message)
    {
        if (!await DisplayAlert(
                "Delete message",
                "Delete this message permanently?",
                "Delete",
                "Cancel"))
            return;

        try
        {
            if (!await _communityService.DeleteCommunityMessageAsync(message.MessageId))
                return;

            await _communityService.MarkCommunityMessageLocallyDeletedAsync(
                message.GroupId,
                message.MessageId);
            message.IsDeleted = true;
            message.Text = "Message deleted";
            message.UpdatedAt = DateTime.UtcNow;
            ReplaceUiMessage(message);
            await MainThread.InvokeOnMainThreadAsync(() => RenderMessages());
        }
        catch (UnauthorizedAccessException)
        {
            await DisplayAlert("Access denied", "You can only delete your own message.", "OK");
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine($"[GROUP_CHAT] Delete message failed: {ex}");
            await DisplayAlert("Delete failed", "The message could not be deleted.", "OK");
        }
    }

    private void ReplaceUiMessage(GroupChatMessageUi message)
    {
        var index = _messages.FindIndex(existing =>
            string.Equals(existing.MessageId, message.MessageId, StringComparison.Ordinal));
        if (index >= 0)
            _messages[index] = message;
        else
            AddOrReplaceMessage(message);
    }

    private void RemoveUiMessage(string messageId)
    {
        var index =
            _messages.FindIndex(
                existing =>
                    string.Equals(
                        existing.MessageId,
                        messageId,
                        StringComparison.Ordinal));

        if (index >= 0)
            _messages.RemoveAt(index);
    }

    // ============================================================
    // MESSAGE CONTENT
    // ============================================================

    private void AddMessageContent(
        VerticalStackLayout stack,
        GroupChatMessageUi message)
    {
        if (message.IsDeleted)
        {
            stack.Children.Add(new Label
            {
                Text = "Message deleted",
                FontSize = 14,
                FontAttributes = FontAttributes.Italic,
                TextColor = Color.FromArgb("#667A70")
            });
            return;
        }

        var type =
            string.IsNullOrWhiteSpace(
                message.MessageType)
                ? "text"
                : message.MessageType
                    .Trim()
                    .ToLowerInvariant();

        type = MediaViewerService.DetectMediaType(
        message.MediaUrl,
        type,
        message.FileName);

        if (string.IsNullOrWhiteSpace(message.MediaUrl))
        type = "text";

        switch (type)
        {
            case "image":
                AddImageContent(
                    stack,
                    message);
                break;

            case "video":
                AddVideoContent(
                    stack,
                    message);
                break;

            case "audio":
                AddAudioContent(
                    stack,
                    message);
                break;

            default:
                stack.Children.Add(
                    new Label
                    {
                        Text =
                            message.Text,

                        FontSize = 14 * _appearance.ChatFontScale,
                        TextColor = Color.FromArgb("#102A20"),
                        FontFamily = _appearance.ChatFontFamily,

                        LineBreakMode =
                            LineBreakMode.WordWrap
                    });
                break;
        }
    }

    // ============================================================
    // IMAGE
    // ============================================================

    private void AddImageContent(
        VerticalStackLayout stack,
        GroupChatMessageUi message)
    {
        if (string.IsNullOrWhiteSpace(
                message.MediaUrl))
        {
            stack.Children.Add(
                new Label
                {
                    Text =
                        message.Status.Equals(
                            "uploading",
                            StringComparison.OrdinalIgnoreCase)
                            ? "Uploading image..."
                            : message.Status.Equals(
                                "failed",
                                StringComparison.OrdinalIgnoreCase)
                                ? "Image upload failed."
                                : "Image unavailable.",

                    TextColor =
                        Colors.Gray
                });

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

        tap.Tapped +=
            async (_, _) =>
            {
                await _mediaViewer.OpenMediaAsync(message.MediaUrl, "image", message.FileName);
            };

        image.GestureRecognizers.Add(
            tap);

        stack.Children.Add(
            image);

        if (!string.IsNullOrWhiteSpace(
                message.Text) &&
            !string.Equals(
                message.Text,
                message.FileName,
                StringComparison.OrdinalIgnoreCase))
        {
            stack.Children.Add(
                new Label
                {
                    Text =
                        message.Text,

                    FontSize =
                        13,

                    TextColor =
                        Colors.Black
                });
        }
    }

    // ============================================================
    // VIDEO
    // ============================================================

    private void AddVideoContent(
        VerticalStackLayout stack,
        GroupChatMessageUi message)
    {
        if (string.IsNullOrWhiteSpace(message.MediaUrl))
        {
            stack.Children.Add(new Label
            {
                Text =
                    message.Status.Equals(
                        "uploading",
                        StringComparison.OrdinalIgnoreCase)
                        ? "Uploading video..."
                        : message.Status.Equals(
                            "failed",
                            StringComparison.OrdinalIgnoreCase)
                            ? "Video upload failed."
                            : "Video unavailable.",
                TextColor = Colors.Gray
            });
            return;
        }

        var button =
            new Button
            {
                Text =
                    "▶  Play video",

                BackgroundColor =
                    Color.FromArgb("#1E40AF"),

                TextColor =
                    Colors.White,

                CornerRadius =
                    10
            };

        button.Clicked +=
            async (_, _) =>
            {
                await _mediaViewer.OpenMediaAsync(message.MediaUrl, "video", message.FileName);
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

        if (!string.IsNullOrWhiteSpace(
                message.Text) &&
            !string.Equals(
                message.Text,
                message.FileName,
                StringComparison.OrdinalIgnoreCase))
        {
            stack.Children.Add(
                new Label
                {
                    Text =
                        message.Text,

                    FontSize =
                        13,

                    TextColor =
                        Colors.Black
                });
        }
    }

    // ============================================================
    // AUDIO
    // ============================================================

    private void AddAudioContent(
        VerticalStackLayout stack,
        GroupChatMessageUi message)
    {
        if (string.IsNullOrWhiteSpace(message.MediaUrl))
        {
            stack.Children.Add(new Label
            {
                Text =
                    message.Status.Equals(
                        "uploading",
                        StringComparison.OrdinalIgnoreCase)
                        ? "Uploading audio..."
                        : message.Status.Equals(
                            "failed",
                            StringComparison.OrdinalIgnoreCase)
                            ? "Audio upload failed."
                            : "Audio unavailable.",
                TextColor = Colors.Gray
            });
            return;
        }

        var button =
            new Button
            {
                Text =
                    "▶  Play audio",

                BackgroundColor =
                    Color.FromArgb("#0F766E"),

                TextColor =
                    Colors.White,

                CornerRadius =
                    10
            };

        button.Clicked +=
            async (_, _) =>
            {
                await _mediaViewer.OpenMediaAsync(message.MediaUrl, "audio", message.FileName);
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

        if (!string.IsNullOrWhiteSpace(
                message.Text) &&
            !string.Equals(
                message.Text,
                message.FileName,
                StringComparison.OrdinalIgnoreCase))
        {
            stack.Children.Add(
                new Label
                {
                    Text =
                        message.Text,

                    FontSize =
                        13,

                    TextColor =
                        Colors.Black
                });
        }
    }

    // ============================================================
    // OPEN MEDIA
    // ============================================================

    // ============================================================
    // SEND BUTTON
    // ============================================================

    private async void OnSendClicked(
        object? sender,
        EventArgs e)
    {
        await SendComposerAsync();
    }

    // ============================================================
    // ENTER KEY
    // ============================================================

    private async void OnMessageEntryCompleted(
        object? sender,
        EventArgs e)
    {
        await SendComposerAsync();
    }

    // ============================================================
    // SEND COMPOSER
    // ============================================================

    private async Task SendComposerAsync()
    {
        if (_isComposerBusy)
        {
            return;
        }

        var text =
            MessageEntry.Text?.Trim()
            ?? string.Empty;

        if (_pendingAttachment == null &&
            string.IsNullOrWhiteSpace(text))
        {
            return;
        }

        _isComposerBusy = true;
        SetComposerBusy(
            true,
            _pendingAttachment == null
                ? "Sending..."
                : $"Uploading {_pendingAttachmentType}...");

        try
        {
            if (_pendingAttachment != null)
            {
                await SendPendingAttachmentAsync(text);
            }
            else
            {
                await SendTextMessageAsync(text);
            }
        }
        finally
        {
            _isComposerBusy = false;
            SetComposerBusy(false, null);
        }
    }

    // ============================================================
    // SEND TEXT MESSAGE
    // ============================================================

    private async Task SendTextMessageAsync(
        string text)
    {
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
                    "Sign in required",
                    "Please sign in before sending a message.",
                    "OK");

                return;
            }

            var validation =
                await ValidateGroupAccessAsync(
                    currentUser);

            if (!validation.IsAllowed)
            {
                await DisplayAlert(
                    "Access denied",
                    validation.Message,
                    "OK");

                return;
            }

            if (string.IsNullOrWhiteSpace(
                    GetCurrentUserUid()))
            {
                await DisplayAlert(
                    "Not authenticated",
                    "Firebase authentication is required.",
                    "OK");

                return;
            }

            var clientMessageId = Guid.NewGuid().ToString("N");
            var replyToMessageId = _replyingTo?.MessageId;
            var replyToSenderName = _replyingTo?.SenderName;
            var replyToPreview = _replyingTo?.IsDeleted == true
                ? "Message deleted"
                : Shorten(_replyingTo?.Text ?? string.Empty);
            var optimistic = new GroupChatMessageUi
            {
                MessageId = $"local-{clientMessageId}",
                ClientMessageId = clientMessageId,
                GroupId = GetBackendCommunityId(),
                SenderUid = GetCurrentUserUid(),
                SenderName = string.IsNullOrWhiteSpace(currentUser.Username)
                    ? currentUser.FullName
                    : currentUser.Username,
                Text = text,
                MessageType = "text",
                CreatedAt = DateTime.UtcNow,
                ReplyToMessageId = replyToMessageId,
                ReplyToSenderName = replyToSenderName,
                ReplyToPreview = replyToPreview,
                Status = "pending"
            };

            AddOrReplaceMessage(optimistic);
            RenderMessages(true);

            MessageEntry.Text =
                string.Empty;
            _replyingTo = null;
            ReplyPreviewLayout.IsVisible = false;

            _ = PersistOptimisticTextAsync(
                optimistic,
                clientMessageId,
                replyToMessageId,
                replyToSenderName,
                replyToPreview);
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine(
                $"[GROUP_CHAT] Send text failed: {ex}");

            await DisplayAlert(
                "Message failed to send",
                ex.Message,
                "OK");
        }
    }

    private async Task PersistOptimisticTextAsync(
        GroupChatMessageUi optimistic,
        string clientMessageId,
        string? replyToMessageId,
        string? replyToSenderName,
        string? replyToPreview)
    {
        try
        {
            var createdMessage = await _communityService.CreateCommunityMessageAsync(
                communityId: GetBackendCommunityId(),
                content: optimistic.Text,
                messageType: "text",
                branchId: _branchId > 0 ? _branchId.ToString() : null,
                regionId: _regionId > 0 ? _regionId.ToString() : null,
                districtId: _districtId > 0 ? _districtId.ToString() : null,
                organizationalLevel: OrganizationalLevel,
                clientMessageId: clientMessageId,
                replyToMessageId: replyToMessageId,
                replyToSenderName: replyToSenderName,
                replyToPreview: replyToPreview);

            await _communityService.CacheCommunityMessageAsync(createdMessage);
            await _communityService.SetChatHistoryEnrolledAsync(GetBackendCommunityId());
            _chatHistoryEnrolled = true;

            await MainThread.InvokeOnMainThreadAsync(() =>
            {
                AddOrReplaceMessage(ToUiMessage(createdMessage));
                RenderMessages();
            });
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine($"[GROUP_CHAT] Optimistic text persistence failed: {ex}");
            await MainThread.InvokeOnMainThreadAsync(() =>
            {
                optimistic.Status = "failed";
                RenderMessages();
            });
            await DisplayAlert("Message not sent", ex.Message, "OK");
        }
    }

    // ============================================================
    // ATTACHMENT BUTTON
    // ============================================================

    private async void OnAttachmentClicked(
        object? sender,
        EventArgs e)
    {
        try
        {
            var choice = await ShowAttachmentMenuAsync();

            switch (choice)
            {
                case "🖼  Image":
                    await PickImageAsync();
                    break;

                case "🎥  Video":
                    await PickVideoAsync();
                    break;

                case "🎵  Audio file":
                    await PickAudioAsync();
                    break;

                case "🎙  Record audio":
                    await RecordAudioAsync();
                    break;
            }
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine(
                $"[GROUP_CHAT] Attachment menu failed: {ex}");

            await DisplayAlert(
                "Attachment",
                "The attachment menu could not be opened.",
                "OK");
        }
    }

    private async Task<string?> ShowAttachmentMenuAsync()
    {
        var completion = new TaskCompletionSource<string?>(
            TaskCreationOptions.RunContinuationsAsynchronously);
        var modal = new ContentPage
        {
            BackgroundColor = Color.FromArgb("#66000000")
        };

        var options = new VerticalStackLayout
        {
            Spacing = 10,
            Padding = 18
        };
        options.Children.Add(new Label
        {
            Text = "Add to conversation",
            FontSize = 20,
            FontAttributes = FontAttributes.Bold,
            TextColor = Color.FromArgb("#102A20")
        });
        options.Children.Add(new Label
        {
            Text = "Share media with your group",
            FontSize = 12,
            TextColor = Color.FromArgb("#667A70"),
            Margin = new Thickness(0, -6, 0, 4)
        });

        void AddOption(string icon, string title, string description, string value)
        {
            var button = new Button
            {
                Text = $"{icon}   {title}\n       {description}",
                FontSize = 14,
                TextColor = Color.FromArgb("#102A20"),
                BackgroundColor = Color.FromArgb("#F4F8F5"),
                BorderColor = Color.FromArgb("#DCE7DF"),
                BorderWidth = 1,
                CornerRadius = 14,
                Padding = new Thickness(16, 10),
                MinimumHeightRequest = 62
            };
            button.Clicked += async (_, _) =>
            {
                completion.TrySetResult(value);
                if (Navigation.ModalStack.Contains(modal))
                    await Navigation.PopModalAsync();
            };
            options.Children.Add(button);
        }

        AddOption("🖼", "Image", "Choose a photo from this device.", "🖼  Image");
        AddOption("🎥", "Video", "Choose a video to share.", "🎥  Video");
        AddOption("🎵", "Audio File", "Choose an existing audio file.", "🎵  Audio file");
        AddOption("🎙", "Record Audio", "Record a new voice message.", "🎙  Record audio");

        var cancel = new Button
        {
            Text = "Cancel",
            BackgroundColor = Colors.Transparent,
            TextColor = Color.FromArgb("#315244"),
            FontAttributes = FontAttributes.Bold
        };
        cancel.Clicked += async (_, _) =>
        {
            completion.TrySetResult(null);
            if (Navigation.ModalStack.Contains(modal))
                await Navigation.PopModalAsync();
        };
        options.Children.Add(cancel);

        modal.Content = new Border
        {
            Margin = new Thickness(18, 0, 18, 18),
            Padding = 0,
            VerticalOptions = LayoutOptions.End,
            BackgroundColor = Colors.White,
            Stroke = Color.FromArgb("#DCE7DF"),
            StrokeShape = new RoundRectangle { CornerRadius = 24 },
            Content = options
        };
        modal.Disappearing += (_, _) => completion.TrySetResult(null);
        await Navigation.PushModalAsync(modal);
        return await completion.Task;
    }

        private async Task RecordAudioAsync()
        {
#if ANDROID
            var permission = await Permissions.RequestAsync<Permissions.Microphone>();
            if (permission != PermissionStatus.Granted)
            {
                await DisplayAlert(
                    "Microphone permission required",
                    "Allow microphone access to record an audio message.",
                    "OK");
                return;
            }

            var path = System.IO.Path.Combine(
                FileSystem.CacheDirectory,
                $"group-audio-{Guid.NewGuid():N}.m4a");

            try
            {
                _audioRecorder = new Android.Media.MediaRecorder();
                _audioRecorder.SetAudioSource(Android.Media.AudioSource.Mic);
                _audioRecorder.SetOutputFormat(Android.Media.OutputFormat.Mpeg4);
                _audioRecorder.SetAudioEncoder(Android.Media.AudioEncoder.Aac);
                _audioRecorder.SetOutputFile(path);
                _audioRecorder.Prepare();
                _audioRecorder.Start();
                var result = await ShowRecordingDialogAsync();
                StopAudioRecorder();

                if (result == RecordingResult.Completed &&
                    File.Exists(path) &&
                    new FileInfo(path).Length > 0)
                {
                    _pendingAttachment = new FileResult(path, "audio/mp4");
                    _pendingAttachmentType = "audio";
                    _pendingAttachmentLocalPath = path;
                    ShowPendingAttachmentPreview();
                }
                else
                {
                    TryDeleteRecording(path);
                }
            }
            catch (Exception ex)
            {
                StopAudioRecorder();
                TryDeleteRecording(path);
                System.Diagnostics.Debug.WriteLine($"[GROUP_CHAT] Audio recording failed: {ex}");
                await DisplayAlert("Recording unavailable", "The audio recording could not be started.", "OK");
            }
#else
            await DisplayAlert("Recording unavailable", "Audio recording is supported on Android only.", "OK");
#endif
        }

#if ANDROID
        private enum RecordingResult
        {
            Cancelled,
            Completed
        }

        private async Task<RecordingResult> ShowRecordingDialogAsync()
        {
            var completion = new TaskCompletionSource<RecordingResult>(
                TaskCreationOptions.RunContinuationsAsynchronously);
            var elapsed = TimeSpan.Zero;
            var timer = Dispatcher.CreateTimer();
            timer.Interval = TimeSpan.FromSeconds(1);

            var elapsedLabel = new Label
            {
                Text = "00:00",
                FontSize = 22,
                FontAttributes = FontAttributes.Bold,
                TextColor = Color.FromArgb("#102A20"),
                HorizontalOptions = LayoutOptions.Center
            };
            timer.Tick += (_, _) =>
            {
                elapsed += TimeSpan.FromSeconds(1);
                elapsedLabel.Text = elapsed.ToString(@"mm\:ss");
            };

            var recordingPage = new ContentPage
            {
                Title = "Record audio",
                BackgroundColor = Color.FromArgb("#F4F8F5"),
                Content = new Border
                {
                    Margin = 24,
                    Padding = 24,
                    BackgroundColor = Colors.White,
                    Stroke = Color.FromArgb("#DCE7DF"),
                    StrokeShape = new RoundRectangle { CornerRadius = 22 },
                    Content = new VerticalStackLayout
                    {
                        Spacing = 14,
                        VerticalOptions = LayoutOptions.Center,
                        Children =
                        {
                            new Label
                            {
                                Text = "🎙",
                                FontSize = 38,
                                HorizontalOptions = LayoutOptions.Center
                            },
                            new Label
                            {
                                Text = "Recording audio",
                                FontSize = 19,
                                FontAttributes = FontAttributes.Bold,
                                TextColor = Color.FromArgb("#102A20"),
                                HorizontalOptions = LayoutOptions.Center
                            },
                            new Label
                            {
                                Text = "Speak clearly, then tap Stop when finished.",
                                FontSize = 13,
                                TextColor = Color.FromArgb("#667A70"),
                                HorizontalTextAlignment = Microsoft.Maui.TextAlignment.Center
                            },
                            elapsedLabel,
                            new HorizontalStackLayout
                            {
                                Spacing = 12,
                                HorizontalOptions = LayoutOptions.Center,
                                Children =
                                {
                                    new Button
                                    {
                                        Text = "Cancel",
                                        TextColor = Color.FromArgb("#315244"),
                                        BackgroundColor = Color.FromArgb("#EAF2ED"),
                                        CornerRadius = 14,
                                        Command = new Command(() =>
                                        {
                                            timer.Stop();
                                            completion.TrySetResult(RecordingResult.Cancelled);
                                        })
                                    },
                                    new Button
                                    {
                                        Text = "Stop",
                                        TextColor = Colors.White,
                                        BackgroundColor = Color.FromArgb("#1A4D3A"),
                                        CornerRadius = 14,
                                        Command = new Command(() =>
                                        {
                                            timer.Stop();
                                            completion.TrySetResult(RecordingResult.Completed);
                                        })
                                    }
                                }
                            }
                        }
                    }
                }
            };

            recordingPage.Disappearing += (_, _) =>
            {
                timer.Stop();
                completion.TrySetResult(RecordingResult.Cancelled);
            };

            timer.Start();
            await Navigation.PushModalAsync(recordingPage);
            var result = await completion.Task;
            if (Navigation.ModalStack.Contains(recordingPage))
                await Navigation.PopModalAsync();
            return result;
        }

        private void StopAudioRecorder()
        {
            if (_audioRecorder is null)
                return;

            try
            {
                _audioRecorder.Stop();
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine($"[GROUP_CHAT] Recorder stop failed: {ex}");
            }
            finally
            {
                _audioRecorder.Release();
                _audioRecorder.Dispose();
                _audioRecorder = null;
            }
        }

        private static void TryDeleteRecording(string path)
        {
            try
            {
                if (File.Exists(path))
                    File.Delete(path);
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine($"[GROUP_CHAT] Recording cleanup failed: {ex}");
            }
        }
#endif

    // ============================================================
    // PICK IMAGE
    // ============================================================

    private async Task PickImageAsync()
    {
        try
        {
            var file =
                await MediaPicker.Default
                    .PickPhotoAsync(
                        new MediaPickerOptions
                        {
                            Title =
                                "Select an image"
                        });

            if (file == null)
            {
                return;
            }

            await PreparePendingAttachmentAsync(
                file,
                "image");
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine(
                $"[GROUP_CHAT] Image selection failed: {ex}");

            await DisplayAlert(
                "Image",
                $"The image could not be attached.\n\n{ex.Message}",
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
            var file =
                await MediaPicker.Default
                    .PickVideoAsync(
                        new MediaPickerOptions
                        {
                            Title =
                                "Select a video"
                        });

            if (file == null)
            {
                return;
            }

            await PreparePendingAttachmentAsync(
                file,
                "video");
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine(
                $"[GROUP_CHAT] Video selection failed: {ex}");

            await DisplayAlert(
                "Video",
                $"The video could not be attached.\n\n{ex.Message}",
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
                    new Dictionary<
                        DevicePlatform,
                        IEnumerable<string>>
                    {
                        [DevicePlatform.Android] =
                            new[]
                            {
                                "audio/*"
                            }
                    });

            var file =
                await FilePicker.Default
                    .PickAsync(
                        new PickOptions
                        {
                            PickerTitle =
                                "Select audio",

                            FileTypes =
                                fileType
                        });

            if (file == null)
            {
                return;
            }

            await PreparePendingAttachmentAsync(
                file,
                "audio");
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine(
                $"[GROUP_CHAT] Audio selection failed: {ex}");

            await DisplayAlert(
                "Audio",
                $"The audio could not be attached.\n\n{ex.Message}",
                "OK");
        }
    }

    // ============================================================
    // PREPARE PENDING ATTACHMENT
    // ============================================================

    private async Task PreparePendingAttachmentAsync(
        FileResult file,
        string messageType)
    {
        try
        {
            ClearPendingAttachment();

            if (string.IsNullOrWhiteSpace(
                    file.FileName))
            {
                throw new InvalidOperationException(
                    "The selected file has no filename.");
            }

            var safeFileName =
                System.IO.Path.GetFileName(
                    file.FileName);

            var localPath =
                System.IO.Path.Combine(
                    FileSystem.CacheDirectory,
                    $"{Guid.NewGuid():N}_{safeFileName}");

            await using var source =
                await file.OpenReadAsync();

            await using var target =
                File.Create(
                    localPath);

            await source.CopyToAsync(
                target);

            _pendingAttachment =
                new FileResult(
                    localPath,
                    file.ContentType);

            _pendingAttachmentType =
                messageType.Trim()
                    .ToLowerInvariant();

            _pendingAttachmentLocalPath =
                localPath;

            ShowPendingAttachmentPreview();

            System.Diagnostics.Debug.WriteLine(
                $"[GROUP_CHAT] Pending attachment ready: {localPath}");
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine(
                $"[GROUP_CHAT] Prepare attachment failed: {ex}");

            ClearPendingAttachment();

            await DisplayAlert(
                "Attachment",
                $"The selected file could not be prepared.\n\n{ex.Message}",
                "OK");
        }
    }

    // ============================================================
    // SHOW PENDING ATTACHMENT PREVIEW
    // ============================================================

    private void ShowPendingAttachmentPreview()
    {
        if (_pendingAttachment == null)
        {
            return;
        }

        AttachmentPreviewContainer.IsVisible = true;

        AttachmentPreviewNameLabel.Text =
            _pendingAttachment.FileName;

        AttachmentPreviewTypeLabel.Text =
            _pendingAttachmentType.ToUpperInvariant();

        var isImage =
            string.Equals(
                _pendingAttachmentType,
                "image",
                StringComparison.OrdinalIgnoreCase);

        AttachmentPreviewImage.IsVisible =
            isImage;

        if (isImage &&
            !string.IsNullOrWhiteSpace(
                _pendingAttachmentLocalPath))
        {
            AttachmentPreviewImage.Source =
                ImageSource.FromFile(
                    _pendingAttachmentLocalPath);
        }
        else
        {
            AttachmentPreviewImage.Source = null;
        }
    }

    // ============================================================
    // REMOVE PENDING ATTACHMENT
    // ============================================================

    private void OnRemoveAttachmentClicked(
        object? sender,
        EventArgs e)
    {
        ClearPendingAttachment();
    }

    private void OnCancelReplyClicked(
        object? sender,
        EventArgs e)
    {
        _replyingTo = null;
        ReplyPreviewLayout.IsVisible = false;
        ReplyPreviewLabel.Text = string.Empty;
    }

    private void ClearPendingAttachment()
    {
        try
        {
            if (!string.IsNullOrWhiteSpace(
                    _pendingAttachmentLocalPath) &&
                File.Exists(
                    _pendingAttachmentLocalPath))
            {
                File.Delete(
                    _pendingAttachmentLocalPath);
            }
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine(
                $"[GROUP_CHAT] Pending file cleanup failed: {ex}");
        }

        _pendingAttachment = null;
        _pendingAttachmentType = string.Empty;
        _pendingAttachmentLocalPath = string.Empty;

        if (AttachmentPreviewContainer != null)
        {
            AttachmentPreviewContainer.IsVisible = false;
        }

        if (AttachmentPreviewImage != null)
        {
            AttachmentPreviewImage.IsVisible = false;
            AttachmentPreviewImage.Source = null;
        }

        if (AttachmentPreviewNameLabel != null)
        {
            AttachmentPreviewNameLabel.Text =
                "Attachment";
        }

        if (AttachmentPreviewTypeLabel != null)
        {
            AttachmentPreviewTypeLabel.Text =
                string.Empty;
        }
    }

    // ============================================================
    // SEND PENDING ATTACHMENT
    // ============================================================

    private async Task SendPendingAttachmentAsync(
        string caption)
    {
        if (_pendingAttachment == null)
        {
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
                    "Sign in required",
                    "Please sign in before sending an attachment.",
                    "OK");

                return;
            }

            var validation =
                await ValidateGroupAccessAsync(
                    currentUser);

            if (!validation.IsAllowed)
            {
                await DisplayAlert(
                    "Access denied",
                    validation.Message,
                    "OK");

                return;
            }

            if (string.IsNullOrWhiteSpace(
                    GetCurrentUserUid()))
            {
                await DisplayAlert(
                    "Not authenticated",
                    "Firebase authentication is required.",
                    "OK");

                return;
            }

            var pendingType =
                _pendingAttachmentType.Trim().ToLowerInvariant();
            var pendingFileName =
                _pendingAttachment.FileName;
            var pendingMessageId =
                $"local-media-{Guid.NewGuid():N}";
            var pendingMessage =
                new GroupChatMessageUi
                {
                    MessageId = pendingMessageId,
                    ClientMessageId = pendingMessageId,
                    GroupId = _groupId,
                    SenderUid = GetCurrentUserUid(),
                    SenderName =
                        currentUser.Email
                        ?? "You",
                    Text = pendingFileName,
                    MessageType = pendingType,
                    FileName = pendingFileName,
                    CreatedAt = DateTime.UtcNow,
                    Status = "uploading",
                    ReplyToMessageId = _replyingTo?.MessageId,
                    ReplyToSenderName = _replyingTo?.SenderName,
                    ReplyToPreview =
                        _replyingTo?.IsDeleted == true
                            ? "Message deleted"
                            : Shorten(_replyingTo?.Text ?? string.Empty)
                };

            AddOrReplaceMessage(pendingMessage);
            RenderMessages();
            await ScrollMessagesToBottomAsync();

            CloudinaryUploadResult upload;

            switch (
                _pendingAttachmentType)
            {
                case "image":

                    upload =
                        await _cloudinaryService
                            .UploadImageAsync(
                                _pendingAttachment);

                    break;

                case "video":

                    upload =
                        await _cloudinaryService
                            .UploadVideoAsync(
                                _pendingAttachment);

                    break;

                case "audio":

                    upload =
                        await _cloudinaryService
                            .UploadAudioAsync(
                                _pendingAttachment);

                    break;

                default:

                    throw new InvalidOperationException(
                        "Unsupported attachment type.");
            }

            if (string.IsNullOrWhiteSpace(
                    upload.SecureUrl))
            {
                throw new InvalidOperationException(
                    "Cloudinary did not return a valid media URL.");
            }

            var content =
                string.IsNullOrWhiteSpace(caption)
                    ? _pendingAttachment.FileName
                    : caption;

            var createdMessage =
                await _communityService
                    .CreateCommunityMessageAsync(
                        communityId:
                            GetBackendCommunityId(),

                        content:
                            content,

                        messageType:
                            _pendingAttachmentType,

                        branchId:
                            _branchId > 0
                                ? _branchId.ToString()
                                : null,

                        regionId:
                            _regionId > 0
                                ? _regionId.ToString()
                                : null,

                        districtId:
                            _districtId > 0
                                ? _districtId.ToString()
                                : null,

                        organizationalLevel:
                            OrganizationalLevel,

                        mediaUrl:
                            upload.SecureUrl,

                        thumbnailUrl:
                            string.Empty,

                        fileName:
                            string.IsNullOrWhiteSpace(
                                upload.OriginalFilename)
                                ? _pendingAttachment.FileName
                                : upload.OriginalFilename,

                        fileSize:
                            upload.Bytes,

                        duration:
                            upload.Duration,

                        replyToMessageId:
                            _replyingTo?.MessageId,

                        replyToSenderName:
                            _replyingTo?.SenderName,

                        replyToPreview:
                            _replyingTo?.IsDeleted == true
                                ? "Message deleted"
                                : Shorten(_replyingTo?.Text ?? string.Empty));

            RemoveUiMessage(pendingMessageId);
            await _communityService
                .CacheCommunityMessageAsync(
                    createdMessage);

            AddOrReplaceMessage(
                ToUiMessage(
                    createdMessage));

            RenderMessages();
            await ScrollMessagesToBottomAsync();

            MessageEntry.Text =
                string.Empty;
            _replyingTo = null;
            ReplyPreviewLayout.IsVisible = false;

            ClearPendingAttachment();

            GroupStatusLabel.Text =
                string.Empty;
        }
        catch (UnauthorizedAccessException ex)
        {
            await DisplayAlert(
                "Access denied",
                ex.Message,
                "OK");
        }
        catch (Exception ex)
        {
            var uploadingMessage =
                _messages.LastOrDefault(
                    message =>
                        string.Equals(
                            message.Status,
                            "uploading",
                            StringComparison.OrdinalIgnoreCase));

            if (uploadingMessage != null)
            {
                uploadingMessage.Status = "failed";
                ReplaceUiMessage(uploadingMessage);
                RenderMessages();
            }

            System.Diagnostics.Debug.WriteLine(
                "========== GROUP CHAT ATTACHMENT ERROR ==========");

            System.Diagnostics.Debug.WriteLine(
                $"Exception Type: {ex.GetType().FullName}");

            System.Diagnostics.Debug.WriteLine(
                $"Message: {ex.Message}");

            System.Diagnostics.Debug.WriteLine(
                $"Inner Exception: {ex.InnerException?.Message}");

            System.Diagnostics.Debug.WriteLine(
                $"Full Exception: {ex}");

            System.Diagnostics.Debug.WriteLine(
                "================================================");

            await DisplayAlert(
                "Attachment not sent",
                $"The attachment could not be sent.\n\n{ex.Message}",
                "OK");
        }
    }

    // ============================================================
    // COMPOSER BUSY STATE
    // ============================================================

    private void SetComposerBusy(
        bool busy,
        string? status)
    {
        void Update()
        {
            AttachmentButton.IsEnabled =
                !busy;

            SendButton.IsEnabled =
                !busy;

            MessageEntry.IsEnabled =
                !busy;

            SendButton.Text =
                busy ? "…" : "↑";

            if (!string.IsNullOrWhiteSpace(
                    status))
            {
                GroupStatusLabel.Text =
                    status;
            }
        }

        if (MainThread.IsMainThread)
        {
            Update();
        }
        else
        {
            MainThread.BeginInvokeOnMainThread(Update);
        }
    }

    // ============================================================
    // ADD / REPLACE MESSAGE
    // ============================================================

    private void AddOrReplaceMessage(
        GroupChatMessageUi message)
    {
        if (string.IsNullOrWhiteSpace(message.MessageId))
        {
            System.Diagnostics.Debug.WriteLine(
                $"[GROUP_CHAT] Ignoring empty message id while adding chat message. sender_uid={message.SenderUid}, group={message.GroupId}");
            return;
        }

        var existingIndex =
            _messages.FindIndex(
                existing =>
                    string.Equals(
                        existing.MessageId,
                        message.MessageId,
                        StringComparison.Ordinal) ||
                    (!string.IsNullOrWhiteSpace(message.ClientMessageId) &&
                     string.Equals(
                         existing.ClientMessageId,
                         message.ClientMessageId,
                         StringComparison.Ordinal)));

        if (existingIndex >= 0)
        {
            _messages[existingIndex] =
                message;
            return;
        }

        _messages.Add(
            message);

        _messages.Sort(
            (left, right) =>
                left.CreatedAt.CompareTo(
                    right.CreatedAt));
    }

    private void OnMessagesScrolled(object? sender, ScrolledEventArgs e)
    {
        var scrollableHeight = Math.Max(
            0,
            MessagesScrollView.ContentSize.Height - MessagesScrollView.Height);
        var distanceFromBottom = e.ScrollY - (scrollableHeight - 24);
        _isReadingOlderMessages = distanceFromBottom < -80;
        if (!_isReadingOlderMessages)
        {
            _unreadIncomingCount = 0;
            NewMessagesButton.IsVisible = false;
        }
    }

    private async void OnNewMessagesClicked(object? sender, EventArgs e)
    {
        _unreadIncomingCount = 0;
        NewMessagesButton.IsVisible = false;
        _isReadingOlderMessages = false;
        await ScrollMessagesToBottomAsync();
    }

    // ============================================================
    // MEMBERS
    // ============================================================

    private async Task<List<GroupMemberUi>>
    LoadGroupMembersAsync()
    {
    try
    {
        if (string.IsNullOrWhiteSpace(_groupId))
        {
            return new List<GroupMemberUi>();
        }

        var result =
            await _appwriteService.Databases.ListDocuments(
                AppwriteService.DatabaseId,
                "cct_group_members",
                new List<string>
                {
                    global::Appwrite.Query.Equal("group_id", _groupId.Trim()),
                    global::Appwrite.Query.Equal("is_active", true),
                    global::Appwrite.Query.Limit(100)
                },
                null,
                null,
                100);

        var memberships =
            result.Documents
                .Select(document =>
                {
                    using var json =
                        JsonDocument.Parse(
                            JsonSerializer.Serialize(document.Data));
                    var data = json.RootElement;
                    return new ExactGroupMembership
                    {
                        Uid = TryGetString(data, "user_uid"),
                        Role = TryGetString(data, "role")
                    };
                })
                .Where(member => !string.IsNullOrWhiteSpace(member.Uid))
                .ToList();

        var profiles =
            await _firestore
                .GetCollection("users")
                .GetDocumentsAsync<FirestoreUserProfileDocument>(
                    Source.Default);

        var profilesByUid =
            new Dictionary<string, FirestoreUserProfileDocument>(
                StringComparer.Ordinal);

        if (profiles != null)
        {
            foreach (var document in profiles.Documents)
            {
                var profile = document.Data;
                if (profile == null)
                    continue;

                var uid = string.IsNullOrWhiteSpace(profile.Uid)
                    ? profile.DocumentId
                    : profile.Uid;
                if (!string.IsNullOrWhiteSpace(uid))
                {
                    profilesByUid[uid] = profile;
                    _profilesByUid[uid] = profile;
                }
            }
        }

        var currentUid = GetCurrentUserUid();
        return memberships
            .Select(member =>
            {
                profilesByUid.TryGetValue(member.Uid, out var profile);
                return new GroupMemberUi
                {
                    Uid = member.Uid,
                    DisplayName = profile == null
                        ? member.Uid
                        : !string.IsNullOrWhiteSpace(profile.FullName)
                            ? profile.FullName
                            : !string.IsNullOrWhiteSpace(profile.Username)
                                ? profile.Username
                                : "Member",
                    Role = string.IsNullOrWhiteSpace(member.Role)
                        ? profile?.Role ?? "Member"
                        : member.Role,
                    LeadershipLevel = profile?.LeadershipLevel ?? "Member",
                    IsCurrentUser = string.Equals(
                        currentUid,
                        member.Uid,
                        StringComparison.Ordinal)
                };
            })
            .OrderBy(member => member.DisplayName, StringComparer.OrdinalIgnoreCase)
            .ToList();
    }
    catch (Exception ex)
    {
        System.Diagnostics.Debug.WriteLine(
            $"[GROUP_CHAT] Exact group member load failed: {ex}");
        throw;
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
                await LoadGroupMembersAsync();

            if (members.Count == 0)
            {
                await DisplayAlert(
                    "Group Members",
                    "No registered members are assigned to this group yet.",
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
                                : $" - {member.LeadershipLevel}")));

            await DisplayAlert(
                $"Group Members ({members.Count})",
                details,
                "OK");
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine(
                $"[GROUP_CHAT] Members dialog failed: {ex}");

            await DisplayAlert(
                "Group Members",
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
                    "Please sign in to manage this group.",
                    "OK");

                return;
            }

            var validation =
                await ValidateGroupAccessAsync(
                    currentUser);

            if (!validation.IsAllowed)
            {
                await DisplayAlert(
                    "Access denied",
                    validation.Message,
                    "OK");

                return;
            }

            if (!IsAuthorizedToManageMembers(
                    currentUser))
            {
                await DisplayAlert(
                    "Access denied",
                    "Only authorized group leaders can add or invite members.",
                    "OK");

                return;
            }

            var invitationId =
                Guid.NewGuid().ToString("N");

            var invitation =
                new GroupInvitationRecord
                {
                    InvitationId =
                        invitationId,

                    GroupId =
                        _groupId,

                    GroupName =
                        GroupName,

                    OrganizationalLevel =
                        OrganizationalLevel,

                    CreatedByUid =
                        GetCurrentUserUid(),

                    CreatedAt =
                        DateTime.UtcNow,

                    Status =
                        "pending"
                };

            await _firestore
                .GetCollection(
                    "groupInvitations")
                .GetDocument(
                    invitationId)
                .SetDataAsync(
                    invitation);

            var deepLink =
                $"cctuscf://groupInvite" +
                $"?groupId={_groupId}" +
                $"&invitationId={invitationId}";

            await Share.Default.RequestAsync(
                new ShareTextRequest
                {
                    Title =
                        $"Invite people to {GroupName}",

                    Text =
                        $"Join CCT-USCF and connect with the {GroupName}." +
                        $"\n\n{deepLink}"
                });

            await DisplayAlert(
                $"Invite people to {GroupName}",
                "The group invitation link was created and shared.",
                "OK");
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine(
                $"[GROUP_CHAT] Invitation failed: {ex}");

            await DisplayAlert(
                "Invitation failed",
                "The invitation could not be created.",
                "OK");
        }
    }

    // ============================================================
    // AUTHORIZATION
    // ============================================================

    private bool IsAuthorizedToManageMembers(
        CCT_USCF.Models.CurrentUser currentUser)
    {
        var level =
            NormalizeLevel(
                OrganizationalLevel);

        if (string.IsNullOrWhiteSpace(
                level))
        {
            return false;
        }

        return string.Equals(
            currentUser.LeadershipLevel,
            level,
            StringComparison.OrdinalIgnoreCase);
    }

    private async Task<(
        bool IsAllowed,
        string Message)>
        ValidateGroupAccessAsync(
            CCT_USCF.Models.CurrentUser currentUser)
    {
        var level =
            NormalizeLevel(
                OrganizationalLevel);

        if (string.IsNullOrWhiteSpace(
                _groupId))
        {
            return (
                false,
                "This group is unavailable.");
        }

        if (string.IsNullOrWhiteSpace(
                level))
        {
            return (
                false,
                "The group could not be identified.");
        }

        if (IsLeaderGroup())
        {
            if (!string.Equals(
                    currentUser.LeadershipLevel,
                    level,
                    StringComparison.OrdinalIgnoreCase))
            {
                return (
                    false,
                    $"You are not a member of the {GroupName}.");
            }

            if (string.Equals(
                    level,
                    "District",
                    StringComparison.OrdinalIgnoreCase) &&
                (!currentUser.DistrictId.HasValue ||
                 currentUser.DistrictId.Value != DistrictId))
            {
                return (
                    false,
                    "This group is outside your assigned organizational area.");
            }

            if (string.Equals(
                    level,
                    "Regional",
                    StringComparison.OrdinalIgnoreCase) &&
                (!currentUser.RegionId.HasValue ||
                 currentUser.RegionId.Value != RegionId))
            {
                return (
                    false,
                    "This group is outside your assigned organizational area.");
            }

            if (string.Equals(
                    level,
                    "National",
                    StringComparison.OrdinalIgnoreCase) &&
                !string.Equals(
                    currentUser.LeadershipLevel,
                    "National",
                    StringComparison.OrdinalIgnoreCase))
            {
                return (
                    false,
                    "You are not registered at this organizational level.");
            }

            return (
                true,
                "Group access approved.");
        }

        if (string.Equals(
                level,
                "National",
                StringComparison.OrdinalIgnoreCase))
        {
            return string.Equals(
                currentUser.LeadershipLevel,
                "National",
                StringComparison.OrdinalIgnoreCase)
                ? (
                    true,
                    "National group access approved.")
                : (
                    false,
                    "You are not registered at this organizational level.");
        }

        if (string.Equals(
                level,
                "Regional",
                StringComparison.OrdinalIgnoreCase))
        {
            if (!currentUser.RegionId.HasValue)
            {
                return (
                    false,
                    "You are not assigned to a region.");
            }

            return currentUser.RegionId.Value == RegionId
                ? (
                    true,
                    "Regional group access approved.")
                : (
                    false,
                    "This group is outside your assigned organizational area.");
        }

        if (string.Equals(
                level,
                "District",
                StringComparison.OrdinalIgnoreCase))
        {
            if (!currentUser.DistrictId.HasValue)
            {
                return (
                    false,
                    "You are not assigned to a district.");
            }

            return currentUser.DistrictId.Value == DistrictId
                ? (
                    true,
                    "District group access approved.")
                : (
                    false,
                    "This group is outside your assigned organizational area.");
        }

        if (string.Equals(
                level,
                "Branch",
                StringComparison.OrdinalIgnoreCase))
        {
            var selectedBranchId =
                BranchId > 0
                    ? BranchId
                    : TryParseBranchIdFromGroupId(
                        _groupId);

            if (!currentUser.BranchId.HasValue)
            {
                return (
                    false,
                    "You are not assigned to a branch.");
            }

            return currentUser.BranchId.Value == selectedBranchId
                ? (
                    true,
                    "Branch group access approved.")
                : (
                    false,
                    "This group is outside your assigned branch.");
        }

        return (
            false,
            "The selected group could not be validated.");
    }

    // ============================================================
    // ENSURE MEMBERSHIP
    // ============================================================

    private async Task EnsureCurrentUserMembershipAsync(
        CCT_USCF.Models.CurrentUser currentUser)
    {
        try
        {
            var currentUid =
                GetCurrentUserUid();

            if (string.IsNullOrWhiteSpace(
                    currentUid))
            {
                return;
            }

            var member =
                new FirestoreGroupMemberDocument
                {
                    DocumentId =
                        currentUid,

                    Uid =
                        currentUid,

                    FullName =
                        !string.IsNullOrWhiteSpace(
                            currentUser.FullName)
                            ? currentUser.FullName
                            : currentUser.Username,

                    Username =
                        currentUser.Username,

                    Role =
                        currentUser.Role,

                    LeadershipLevel =
                        currentUser.LeadershipLevel,

                    GroupName =
                        GroupName,

                    OrganizationalLevel =
                        OrganizationalLevel,

                    RegionId =
                        currentUser.RegionId
                        ?? RegionId,

                    DistrictId =
                        currentUser.DistrictId
                        ?? DistrictId,

                    BranchId =
                        currentUser.BranchId
                        ?? BranchId,

                    Status =
                        "active",

                    CreatedAt =
                        DateTime.UtcNow
                };

            await _firestore
                .GetCollection(
                    $"groups/{_groupId}/members")
                .GetDocument(
                    currentUid)
                .SetDataAsync(
                    member);
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine(
                $"[GROUP_CHAT] Ensure membership failed: {ex}");
        }
    }

    // ============================================================
    // COMMUNITY ID
    // ============================================================

    private string GetBackendCommunityId()
    {
        // A selected Group record owns the chat identity. Scope IDs remain
        // metadata for authorization and display, never the conversation key.
        return _groupId.Trim();
    }

    // ============================================================
    // LEVEL HELPERS
    // ============================================================

    private bool IsLeaderGroup()
    {
        return
            GroupName.Contains(
                "Leader Group",
                StringComparison.OrdinalIgnoreCase)
            ||
            GroupType.Contains(
                "Leader Group",
                StringComparison.OrdinalIgnoreCase);
    }

    private static string NormalizeLevel(
        string? value)
    {
        if (string.IsNullOrWhiteSpace(
                value))
        {
            return string.Empty;
        }

        return value.Trim() switch
        {
            "District Group" =>
                "District",

            "Regional Group" =>
                "Regional",

            "Region Group" =>
                "Regional",

            "National Group" =>
                "National",

            "Branch Group" =>
                "Branch",

            _ =>
                value.Trim()
        };
    }

    private static int TryParseBranchIdFromGroupId(
        string? groupId)
    {
        if (string.IsNullOrWhiteSpace(
                groupId))
        {
            return 0;
        }

        var digits =
            new string(
                groupId
                    .Where(char.IsDigit)
                    .ToArray());

        return
            int.TryParse(
                digits,
                out var parsed) &&
            parsed > 0
                ? parsed
                : 0;
    }

    // ============================================================
    // JSON HELPERS
    // ============================================================

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

        return long.TryParse(
                value.ToString(),
                out var parsed)
            ? parsed
            : 0;
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

        if (value.ValueKind ==
            JsonValueKind.Number)
        {
            if (value.TryGetDouble(
                    out var number))
            {
                return number;
            }
        }

        return double.TryParse(
                value.ToString(),
                NumberStyles.Any,
                CultureInfo.InvariantCulture,
                out var parsed)
            ? parsed
            : 0;
    }

    private static DateTime TryGetDateTime(
        JsonElement element,
        string propertyName)
    {
        if (!element.TryGetProperty(
                propertyName,
                out var value))
        {
            return default;
        }

        if (value.ValueKind ==
                JsonValueKind.Null ||
            value.ValueKind ==
                JsonValueKind.Undefined)
        {
            return default;
        }

        return DateTime.TryParse(
                value.ToString(),
                null,
                DateTimeStyles.RoundtripKind,
                out var parsed)
            ? EnsureUtc(parsed)
            : default;
    }

    private static bool TryGetBoolean(
        JsonElement element,
        string propertyName)
    {
        if (!element.TryGetProperty(propertyName, out var value))
            return false;

        return value.ValueKind switch
        {
            JsonValueKind.True => true,
            JsonValueKind.False => false,
            JsonValueKind.String =>
                bool.TryParse(value.GetString(), out var parsed) && parsed,
            _ => false
        };
    }

    private static DateTime EnsureUtc(
        DateTime value)
    {
        return value.Kind switch
        {
            DateTimeKind.Utc =>
                value,

            DateTimeKind.Local =>
                value.ToUniversalTime(),

            _ =>
                DateTime.SpecifyKind(
                    value,
                    DateTimeKind.Utc)
        };
    }

    private static string GetAppwriteDocumentId(
        JsonElement element)
    {
        var id =
            TryGetString(
                element,
                "$id");

        return string.IsNullOrWhiteSpace(id)
            ? TryGetString(
                element,
                "message_id")
            : id;
    }

    private string GetCurrentUserUid()
    {
        return _auth.CurrentUser?.Uid
            ?? string.Empty;
    }

    // ============================================================
    // REFRESH
    // ============================================================

    private async void OnMessagesRefreshing(
        object? sender,
        EventArgs e)
    {
        try
        {
            await LoadMessagesAsync();
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine(
                $"[GROUP_CHAT] Refresh failed: {ex}");
        }
        finally
        {
            MessagesRefreshView.IsRefreshing =
                false;
        }
    }

    private bool MergeLoadedMessages(
        IReadOnlyList<GroupChatMessageUi> loadedMessages)
    {
        var changed = false;
        foreach (var message in loadedMessages)
        {
            var existingIndex = _messages.FindIndex(existing =>
                string.Equals(existing.MessageId, message.MessageId, StringComparison.Ordinal));
            if (existingIndex < 0)
            {
                _messages.Add(message);
                changed = true;
            }
            else if (!AreMessagesEquivalent(_messages[existingIndex], message))
            {
                _messages[existingIndex] = message;
                changed = true;
            }
        }

        if (changed)
            _messages.Sort((left, right) => left.CreatedAt.CompareTo(right.CreatedAt));

        return changed;
    }

    private static bool AreMessagesEquivalent(
        GroupChatMessageUi left,
        GroupChatMessageUi right) =>
        string.Equals(left.Text, right.Text, StringComparison.Ordinal) &&
        string.Equals(left.MessageType, right.MessageType, StringComparison.Ordinal) &&
        string.Equals(left.MediaUrl, right.MediaUrl, StringComparison.Ordinal) &&
        left.IsDeleted == right.IsDeleted &&
        left.IsEdited == right.IsEdited &&
        left.UpdatedAt == right.UpdatedAt;

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
                $"[GROUP_CHAT] Scroll failed: {ex}");
        }
    }

    // ============================================================
    // UI MODELS
    // ============================================================

    private sealed class GroupChatMessageUi
    {
        public string MessageId { get; set; } =
            string.Empty;

        public string ClientMessageId { get; set; } =
            string.Empty;

        public string GroupId { get; set; } =
            string.Empty;

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
        public bool IsDeleted { get; set; }
        public bool IsEdited { get; set; }
        public string? ReplyToMessageId { get; set; }
        public string? ReplyToSenderName { get; set; }
        public string? ReplyToPreview { get; set; }
        public string Status { get; set; } = "sent";
    }

    private sealed class GroupMemberUi
    {
        public string Uid { get; set; } =
            string.Empty;

        public string DisplayName { get; set; } =
            string.Empty;

        public string Role { get; set; } =
            "Member";

        public string LeadershipLevel { get; set; } =
            "Member";

        public bool IsCurrentUser { get; set; }
    }

    private sealed class ExactGroupMembership
    {
        public string Uid { get; set; } = string.Empty;
        public string Role { get; set; } = string.Empty;
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

        [FirestoreProperty("email")]
        public string Email { get; set; } =
            string.Empty;

        [FirestoreProperty("role")]
        public string Role { get; set; } =
            string.Empty;

        [FirestoreProperty("leadershipLevel")]
        public string LeadershipLevel { get; set; } =
            string.Empty;

        [FirestoreProperty("regionId")]
        public int RegionId { get; set; }

        [FirestoreProperty("districtId")]
        public int DistrictId { get; set; }

        [FirestoreProperty("branchId")]
        public int BranchId { get; set; }
    }

    // ============================================================
    // FIRESTORE GROUP MEMBER
    // ============================================================

    private sealed class FirestoreGroupMemberDocument
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

        [FirestoreProperty("leadershipLevel")]
        public string LeadershipLevel { get; set; } =
            string.Empty;

        [FirestoreProperty("groupName")]
        public string GroupName { get; set; } =
            string.Empty;

        [FirestoreProperty("organizationalLevel")]
        public string OrganizationalLevel { get; set; } =
            string.Empty;

        [FirestoreProperty("regionId")]
        public int RegionId { get; set; }

        [FirestoreProperty("districtId")]
        public int DistrictId { get; set; }

        [FirestoreProperty("branchId")]
        public int BranchId { get; set; }

        [FirestoreProperty("status")]
        public string Status { get; set; } =
            "active";

        [FirestoreProperty("createdAt")]
        public DateTime CreatedAt { get; set; } =
            DateTime.UtcNow;
    }

    // ============================================================
    // GROUP INVITATION
    // ============================================================

    private sealed class GroupInvitationRecord
        : IFirestoreObject
    {
        [FirestoreDocumentId]
        public string InvitationId { get; set; } =
            string.Empty;

        [FirestoreProperty("groupId")]
        public string GroupId { get; set; } =
            string.Empty;

        [FirestoreProperty("groupName")]
        public string GroupName { get; set; } =
            string.Empty;

        [FirestoreProperty("organizationalLevel")]
        public string OrganizationalLevel { get; set; } =
            string.Empty;

        [FirestoreProperty("createdByUid")]
        public string CreatedByUid { get; set; } =
            string.Empty;

        [FirestoreProperty("createdAt")]
        public DateTime CreatedAt { get; set; } =
            DateTime.UtcNow;

        [FirestoreProperty("status")]
        public string Status { get; set; } =
            "pending";
    }

#if ANDROID
    private sealed class MessageGestureListener : GestureDetector.SimpleOnGestureListener
    {
        private readonly GroupChatMessageUi _message;
        private readonly Action<GroupChatMessageUi> _reply;
        private readonly Func<GroupChatMessageUi, Task> _showActions;
        private readonly Action _render;
        private CancellationTokenSource? _holdCancellation;
        private float _downX;
        private float _downY;
        private bool _holdTriggered;
        private bool _swipeTriggered;

        public MessageGestureListener(
            GroupChatMessageUi message,
            Action<GroupChatMessageUi> reply,
            Func<GroupChatMessageUi, Task> showActions,
            Action render)
        {
            _message = message;
            _reply = reply;
            _showActions = showActions;
            _render = render;
        }

        public override bool OnDown(MotionEvent? e)
        {
            if (e == null)
                return false;

            _downX = e.GetX();
            _downY = e.GetY();
            _holdTriggered = false;
            _swipeTriggered = false;
            _holdCancellation?.Cancel();
            _holdCancellation = new CancellationTokenSource();
            var token = _holdCancellation.Token;

            _ = Task.Run(
                async () =>
                {
                    try
                    {
                        await Task.Delay(3000, token);
                        if (!token.IsCancellationRequested &&
                            !_holdTriggered)
                        {
                            _holdTriggered = true;
                            MainThread.BeginInvokeOnMainThread(
                                async () => await _showActions(_message));
                        }
                    }
                    catch (OperationCanceledException)
                    {
                    }
                },
                token);
            return true;
        }

        public void HandleTouch(MotionEvent? e)
        {
            if (e == null)
                return;

            if (e.ActionMasked == MotionEventActions.Move)
            {
                var deltaX = e.GetX() - _downX;
                var deltaY = e.GetY() - _downY;
                _holdCancellation?.Cancel();

                if (!_swipeTriggered &&
                    deltaX <= -80 &&
                    Math.Abs(deltaX) > Math.Abs(deltaY) * 1.25f)
                {
                    _swipeTriggered = true;
                    MainThread.BeginInvokeOnMainThread(
                        () =>
                        {
                            _reply(_message);
                            _render();
                        });
                }
            }
            else if (e.ActionMasked is MotionEventActions.Up or MotionEventActions.Cancel)
            {
                _holdCancellation?.Cancel();
            }
        }

        public override void OnLongPress(MotionEvent? e)
        {
        }

        public override bool OnFling(
            MotionEvent? e1,
            MotionEvent? e2,
            float velocityX,
            float velocityY)
        {
            if (e1 == null || e2 == null)
                return false;

            var deltaX = e2.GetX() - e1.GetX();
            var deltaY = e2.GetY() - e1.GetY();
            if (!_swipeTriggered &&
                deltaX <= -80 &&
                Math.Abs(deltaX) > Math.Abs(deltaY) * 1.25f)
            {
                _swipeTriggered = true;
                _holdCancellation?.Cancel();
                MainThread.BeginInvokeOnMainThread(
                    () =>
                    {
                        _reply(_message);
                        _render();
                    });
                return true;
            }

            return false;
        }
    }
#endif
}