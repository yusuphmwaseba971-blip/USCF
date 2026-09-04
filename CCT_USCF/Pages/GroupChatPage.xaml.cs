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

namespace CCT_USCF.Pages;

[QueryProperty(nameof(GroupId), "groupId")]
[QueryProperty(nameof(GroupName), "groupName")]
[QueryProperty(nameof(GroupType), "groupType")]
[QueryProperty(nameof(OrganizationalLevel), "organizationalLevel")]
[QueryProperty(nameof(RegionId), "regionId")]
[QueryProperty(nameof(DistrictId), "districtId")]
[QueryProperty(nameof(BranchId), "branchId")]
public partial class GroupChatPage : ContentPage
{
    // ============================================================
    // SERVICES
    // ============================================================

    private readonly IFirebaseAuth _auth;
    private readonly IFirebaseFirestore _firestore;
    private readonly CommunityService _communityService;
    private readonly CloudinaryService _cloudinaryService;

    // ============================================================
    // MESSAGE STATE
    // ============================================================

    private readonly List<GroupChatMessageUi> _messages = new();

    private bool _realtimeEnabled;
    private bool _realtimeListenerAttached;

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

    // ============================================================
    // CONSTRUCTOR
    // ============================================================

    public GroupChatPage()
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

        membersTap.Tapped +=
            MembersLabel_Tapped;

        MembersLabel.GestureRecognizers.Add(
            membersTap);

        AddMemberButton.Clicked +=
            AddMemberButton_Clicked;
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
                        createdAt
                };

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
            await MainThread.InvokeOnMainThreadAsync(
                () =>
                {
                    AddOrReplaceMessage(
                        message);

                    RenderMessages();
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

            var members =
                await LoadGroupMembersAsync();

            MembersLabel.Text =
                members.Count == 1
                    ? "Members (1)"
                    : $"Members ({members.Count})";

            GroupStatusLabel.Text =
                members.Count == 1
                    ? "1 member in this group"
                    : $"{members.Count} members in this group";

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
                await _communityService
                    .GetCommunityMessagesAsync(
                        communityId:
                            communityId,

                        limit:
                            100,

                        organizationalLevel:
                            OrganizationalLevel,

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
                                : null);

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

            _messages.Clear();

            _messages.AddRange(
                loadedMessages);

            RenderMessages();
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
        return new GroupChatMessageUi
        {
            MessageId =
                string.IsNullOrWhiteSpace(
                    message.MessageId)
                    ? message.Id
                    : message.MessageId,

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
                message.Content,

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
                EnsureUtc(
                    message.CreatedAt)
        };
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
                        message.CreatedAt
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

                    FontSize =
                        15,

                    TextColor =
                        Colors.Gray,

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

            MessagesLayout.Children.Add(
                CreateMessageBubble(
                    message,
                    isCurrentUser));
        }

        _ =
            ScrollMessagesToBottomAsync();
    }

    // ============================================================
    // MESSAGE BUBBLE
    // ============================================================

    private Border CreateMessageBubble(
        GroupChatMessageUi message,
        bool isCurrentUser)
    {
        var border =
            new Border
            {
                WidthRequest =
                    290,

                Padding =
                    new Thickness(
                        12,
                        10),

                Margin =
                    new Thickness(
                        isCurrentUser ? 24 : 0,
                        0,
                        isCurrentUser ? 0 : 24,
                        8),

                BackgroundColor =
                    isCurrentUser
                        ? Color.FromArgb("#DBEAFE")
                        : Colors.White,

                StrokeThickness =
                    0,

                StrokeShape =
                    new RoundRectangle
                    {
                        CornerRadius = 12
                    },

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
                    isCurrentUser
                        ? "You"
                        : message.SenderName,

                FontSize =
                    12,

                FontAttributes =
                    FontAttributes.Bold,

                TextColor =
                    isCurrentUser
                        ? Color.FromArgb("#1D4ED8")
                        : Colors.DarkSlateBlue
            });

        AddMessageContent(
            stack,
            message);

        stack.Children.Add(
            new Label
            {
                Text =
                    message.CreatedAt
                        .ToLocalTime()
                        .ToString(
                            "HH:mm",
                            CultureInfo.InvariantCulture),

                FontSize =
                    11,

                TextColor =
                    Colors.Gray,

                HorizontalOptions =
                    LayoutOptions.End
            });

        border.Content =
            stack;

        return border;
    }

    // ============================================================
    // MESSAGE CONTENT
    // ============================================================

    private void AddMessageContent(
        VerticalStackLayout stack,
        GroupChatMessageUi message)
    {
        var type =
            string.IsNullOrWhiteSpace(
                message.MessageType)
                ? "text"
                : message.MessageType
                    .Trim()
                    .ToLowerInvariant();

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

                        FontSize =
                            15,

                        TextColor =
                            Colors.Black,

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
                        "Image unavailable.",

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
                await OpenMediaAsync(
                    message.MediaUrl);
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

    private static async Task OpenMediaAsync(
        string mediaUrl)
    {
        if (string.IsNullOrWhiteSpace(
                mediaUrl))
        {
            return;
        }

        try
        {
            await Launcher.Default.OpenAsync(
                new Uri(
                    mediaUrl));
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine(
                $"[GROUP_CHAT] Open media failed: {ex}");
        }
    }

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
        var text =
            MessageEntry.Text?.Trim()
            ?? string.Empty;

        if (_pendingAttachment != null)
        {
            await SendPendingAttachmentAsync(
                text);

            return;
        }

        if (string.IsNullOrWhiteSpace(
                text))
        {
            return;
        }

        await SendTextMessageAsync(
            text);
    }

    // ============================================================
    // SEND TEXT MESSAGE
    // ============================================================

    private async Task SendTextMessageAsync(
        string text)
    {
        try
        {
            SetComposerBusy(
                true,
                "Sending...");

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

            var createdMessage =
                await _communityService
                    .CreateCommunityMessageAsync(
                        communityId:
                            GetBackendCommunityId(),

                        content:
                            text,

                        messageType:
                            "text",

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
                            OrganizationalLevel);

            await _communityService
                .CacheCommunityMessageAsync(
                    createdMessage);

            AddOrReplaceMessage(
                ToUiMessage(
                    createdMessage));

            MessageEntry.Text =
                string.Empty;

            RenderMessages();
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine(
                $"[GROUP_CHAT] Send text failed: {ex}");

            await DisplayAlert(
                "Message not sent",
                ex.Message,
                "OK");
        }
        finally
        {
            SetComposerBusy(
                false,
                null);
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
                $"[GROUP_CHAT] Attachment menu failed: {ex}");

            await DisplayAlert(
                "Attachment",
                "The attachment menu could not be opened.",
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
            SetComposerBusy(
                true,
                $"Uploading {_pendingAttachmentType}...");

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
                            upload.Duration);

            await _communityService
                .CacheCommunityMessageAsync(
                    createdMessage);

            AddOrReplaceMessage(
                ToUiMessage(
                    createdMessage));

            MessageEntry.Text =
                string.Empty;

            ClearPendingAttachment();

            RenderMessages();

            GroupStatusLabel.Text =
                "Message sent";
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
        finally
        {
            SetComposerBusy(
                false,
                null);
        }
    }

    // ============================================================
    // COMPOSER BUSY STATE
    // ============================================================

    private void SetComposerBusy(
        bool busy,
        string? status)
    {
        MainThread.BeginInvokeOnMainThread(
            () =>
            {
                AttachmentButton.IsEnabled =
                    !busy;

                SendButton.IsEnabled =
                    !busy;

                MessageEntry.IsEnabled =
                    !busy;

                if (!string.IsNullOrWhiteSpace(
                        status))
                {
                    GroupStatusLabel.Text =
                        status;
                }
            });
    }

    // ============================================================
    // ADD / REPLACE MESSAGE
    // ============================================================

    private void AddOrReplaceMessage(
        GroupChatMessageUi message)
    {
        var existingIndex =
            _messages.FindIndex(
                existing =>
                    string.Equals(
                        existing.MessageId,
                        message.MessageId,
                        StringComparison.Ordinal));

        if (existingIndex >= 0)
        {
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
    }

    // ============================================================
    // MEMBERS
    // ============================================================

    private async Task<List<GroupMemberUi>>
        LoadGroupMembersAsync()
    {
        try
        {
            var snapshot =
                await _firestore
                    .GetCollection(
                        $"groups/{_groupId}/members")
                    .GetDocumentsAsync<
                        FirestoreGroupMemberDocument>(
                        Source.Default);

            if (snapshot != null &&
                snapshot.Documents.Any())
            {
                return snapshot.Documents
                    .Select(
                        document =>
                            document.Data)
                    .Where(
                        member =>
                            member != null)
                    .Select(
                        member =>
                            new GroupMemberUi
                            {
                                Uid =
                                    string.IsNullOrWhiteSpace(
                                        member!.Uid)
                                        ? member.DocumentId
                                        : member.Uid,

                                DisplayName =
                                    !string.IsNullOrWhiteSpace(
                                        member.FullName)
                                        ? member.FullName
                                        : !string.IsNullOrWhiteSpace(
                                            member.Username)
                                            ? member.Username
                                            : "Member",

                                Role =
                                    string.IsNullOrWhiteSpace(
                                        member.Role)
                                        ? "Member"
                                        : member.Role,

                                LeadershipLevel =
                                    string.IsNullOrWhiteSpace(
                                        member.LeadershipLevel)
                                        ? "Member"
                                        : member.LeadershipLevel,

                                IsCurrentUser =
                                    string.Equals(
                                        GetCurrentUserUid(),
                                        string.IsNullOrWhiteSpace(
                                            member.Uid)
                                            ? member.DocumentId
                                            : member.Uid,
                                        StringComparison.Ordinal)
                            })
                    .OrderBy(
                        member =>
                            member.DisplayName,
                        StringComparer.OrdinalIgnoreCase)
                    .ToList();
            }

            return await LoadGroupMembersFromUsersAsync();
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine(
                $"[GROUP_CHAT] Group member load failed: {ex}");

            return await LoadGroupMembersFromUsersAsync();
        }
    }

    private async Task<List<GroupMemberUi>>
        LoadGroupMembersFromUsersAsync()
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
                return new List<GroupMemberUi>();
            }

            var currentUid =
                GetCurrentUserUid();

            return snapshot.Documents
                .Select(
                    document =>
                        document.Data)
                .Where(
                    profile =>
                        profile != null &&
                        IsProfileEligibleForGroup(
                            profile,
                            currentUid))
                .Select(
                    profile =>
                        new GroupMemberUi
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

                            LeadershipLevel =
                                string.IsNullOrWhiteSpace(
                                    profile.LeadershipLevel)
                                    ? "Member"
                                    : profile.LeadershipLevel,

                            IsCurrentUser =
                                string.Equals(
                                    currentUid,
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
                $"[GROUP_CHAT] User member fallback failed: {ex}");

            return new List<GroupMemberUi>();
        }
    }

    private bool IsProfileEligibleForGroup(
        FirestoreUserProfileDocument profile,
        string currentUid)
    {
        var level =
            NormalizeLevel(
                OrganizationalLevel);

        if (string.IsNullOrWhiteSpace(
                level))
        {
            return false;
        }

        if (string.Equals(
                level,
                "District",
                StringComparison.OrdinalIgnoreCase))
        {
            return
                profile.DistrictId > 0 &&
                DistrictId > 0 &&
                profile.DistrictId == DistrictId;
        }

        if (string.Equals(
                level,
                "Regional",
                StringComparison.OrdinalIgnoreCase))
        {
            return
                profile.RegionId > 0 &&
                RegionId > 0 &&
                profile.RegionId == RegionId;
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

            return
                selectedBranchId > 0 &&
                profile.BranchId == selectedBranchId;
        }

        if (string.Equals(
                level,
                "National",
                StringComparison.OrdinalIgnoreCase))
        {
            var profileUid =
                string.IsNullOrWhiteSpace(
                    profile.Uid)
                    ? profile.DocumentId
                    : profile.Uid;

            return
                string.Equals(
                    profile.LeadershipLevel,
                    "National",
                    StringComparison.OrdinalIgnoreCase)
                ||
                string.Equals(
                    profile.Role,
                    "National Leader",
                    StringComparison.OrdinalIgnoreCase)
                ||
                string.Equals(
                    currentUid,
                    profileUid,
                    StringComparison.OrdinalIgnoreCase);
        }

        return false;
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
        var level =
            NormalizeLevel(
                OrganizationalLevel);

        if (string.Equals(
                level,
                "Branch",
                StringComparison.OrdinalIgnoreCase))
        {
            if (_branchId > 0)
            {
                return _branchId.ToString();
            }

            var parsedBranchId =
                TryParseBranchIdFromGroupId(
                    _groupId);

            if (parsedBranchId > 0)
            {
                return parsedBranchId.ToString();
            }
        }

        if (string.Equals(
                level,
                "District",
                StringComparison.OrdinalIgnoreCase) &&
            _districtId > 0)
        {
            return _districtId.ToString();
        }

        if ((string.Equals(
                level,
                "Regional",
                StringComparison.OrdinalIgnoreCase)
             ||
             string.Equals(
                 level,
                 "Region",
                 StringComparison.OrdinalIgnoreCase))
            &&
            _regionId > 0)
        {
            return _regionId.ToString();
        }

        return _groupId;
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
}