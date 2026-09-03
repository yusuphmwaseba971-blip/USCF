using System.Net.WebSockets;
using System.Text;
using System.Text.Json;
using CCT_USCF.Services;
using CCT_USCF.Services.Appwrite;
using Microsoft.Maui.ApplicationModel;
using Microsoft.Maui.Controls;
using Microsoft.Maui.Controls.Shapes;
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

    private readonly List<BranchChatMessageUi> _messages = new();

    private bool _isLoading;
    private bool _realtimeEnabled;
    private bool _realtimeListenerAttached;

    private ClientWebSocket? _appwriteRealtimeSocket;
    private CancellationTokenSource? _appwriteRealtimeCts;

    public BranchChatPage()
    {
        InitializeComponent();

        _auth = MauiProgram.Services.GetRequiredService<IFirebaseAuth>();
        _firestore = MauiProgram.Services.GetRequiredService<IFirebaseFirestore>();
        _communityService = MauiProgram.Services.GetRequiredService<CommunityService>();

        var tap = new TapGestureRecognizer();
        tap.Tapped += MembersLabel_Tapped;
        MembersLabel.GestureRecognizers.Add(tap);

        AddMemberButton.Clicked += AddMemberButton_Clicked;
    }

    private int _branchId;

    public int BranchId
    {
        get => _branchId;
        set
        {
            _branchId = value;

            if (!string.IsNullOrWhiteSpace(BranchName))
                BranchTitleLabel.Text = BranchName;
        }
    }

    private string _branchName = "Branch Group";

    public string BranchName
    {
        get => _branchName;
        set
        {
            _branchName = string.IsNullOrWhiteSpace(value)
                ? "Branch Group"
                : value;

            BranchTitleLabel.Text = _branchName;
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

            // Resolve branch first.
            if (_branchId <= 0)
            {
                var currentUser =
                    MauiProgram.CurrentUser
                    ?? await MauiProgram.CreateAuthServiceForPages().GetCurrentUserAsync();

                if (currentUser?.BranchId is int branchId && branchId > 0)
                {
                    BranchId = branchId;
                    BranchName = currentUser.Branch ?? "Branch Group";
                }
            }

            if (_branchId <= 0)
            {
                BranchStatusLabel.Text = "Branch information is unavailable.";
                return;
            }

            // Realtime starts only after branch ID is known.
            AttachRealtimeListener();

            // Load local cache / initial Appwrite data.
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

            _appwriteRealtimeCts = new CancellationTokenSource();

            var cancellationToken = _appwriteRealtimeCts.Token;

            System.Diagnostics.Debug.WriteLine(
                $"[BRANCH_CHAT] Appwrite realtime listener attached for branch {_branchId}");

            _ = Task.Run(async () =>
            {
                try
                {
                    await ListenForAppwriteMessagesAsync(cancellationToken);
                }
                catch (OperationCanceledException)
                {
                    System.Diagnostics.Debug.WriteLine(
                        $"[BRANCH_CHAT] Appwrite realtime listener cancelled for branch {_branchId}");
                }
                catch (Exception ex)
                {
                    System.Diagnostics.Debug.WriteLine(
                        $"[BRANCH_CHAT] Appwrite realtime listener error for branch {_branchId}: {ex}");

                    _realtimeListenerAttached = false;
                }
            });
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine(
                $"[BRANCH_CHAT] Appwrite realtime listener setup failed: {ex}");

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
                $"[BRANCH_CHAT] Appwrite realtime disconnect failed: {ex}");
        }

        _appwriteRealtimeSocket = null;
    }

    private async Task ListenForAppwriteMessagesAsync(
        CancellationToken cancellationToken)
    {
        using var socket = new ClientWebSocket();

        _appwriteRealtimeSocket = socket;

        var uriBuilder = new UriBuilder(AppwriteService.Endpoint)
        {
            Scheme = Uri.UriSchemeWss,
            Path = "/v1/realtime",
            Query =
                $"project={Uri.EscapeDataString(AppwriteService.ProjectId)}"
        };

        // Listen only to the Community Messages collection.
        var channel = _communityService.GetCommunityMessagesChannel();

        var subscription = JsonSerializer.Serialize(new
        {
            type = "subscribe",
            channels = new[] { channel }
        });

        System.Diagnostics.Debug.WriteLine(
            $"[BRANCH_CHAT] Realtime endpoint: {uriBuilder.Uri}");

        System.Diagnostics.Debug.WriteLine(
            $"[BRANCH_CHAT] Realtime channel: {channel}");

        await socket.ConnectAsync(
            uriBuilder.Uri,
            cancellationToken);

        await socket.SendAsync(
            Encoding.UTF8.GetBytes(subscription),
            WebSocketMessageType.Text,
            true,
            cancellationToken);

        System.Diagnostics.Debug.WriteLine(
            $"[BRANCH_CHAT] Realtime subscription sent for branch {_branchId}");

        var buffer = new byte[16 * 1024];
        var messageBuilder = new StringBuilder();

        while (
            socket.State == WebSocketState.Open &&
            !cancellationToken.IsCancellationRequested)
        {
            var result = await socket.ReceiveAsync(
                new ArraySegment<byte>(buffer),
                cancellationToken);

            if (result.MessageType == WebSocketMessageType.Close)
                break;

            var chunk = Encoding.UTF8.GetString(
                buffer,
                0,
                result.Count);

            messageBuilder.Append(chunk);

            if (!result.EndOfMessage)
                continue;

            var rawMessage = messageBuilder.ToString();
            messageBuilder.Clear();

            ProcessRealtimeMessage(rawMessage);
        }
    }

    private void ProcessRealtimeMessage(string rawMessage)
    {
        if (string.IsNullOrWhiteSpace(rawMessage))
            return;

        try
        {
            using var document = JsonDocument.Parse(rawMessage);

            var root = document.RootElement;

            if (!root.TryGetProperty("type", out var typeElement))
                return;

            var eventType = typeElement.ToString();

            if (!string.Equals(
                    eventType,
                    "event",
                    StringComparison.OrdinalIgnoreCase))
            {
                return;
            }

            JsonElement payload;

            if (!root.TryGetProperty("payload", out payload))
            {
                if (!root.TryGetProperty("data", out payload))
                    return;
            }

            if (payload.ValueKind != JsonValueKind.Object)
                return;

            // ====================================================
            // NEW COMMUNITY MESSAGE SCHEMA
            //
            // message_id
            // sender_uid
            // sender_name
            // content
            // community_id
            // message_type
            // created_at
            // ====================================================

            var communityId = TryGetString(
                payload,
                "community_id");

            if (!string.Equals(
                    communityId,
                    _branchId.ToString(),
                    StringComparison.Ordinal))
            {
                return;
            }

            var messageId = GetAppwriteDocumentId(payload);

            if (string.IsNullOrWhiteSpace(messageId))
                return;

            var senderUid = TryGetString(
                payload,
                "sender_uid");

            var senderName = TryGetString(
                payload,
                "sender_name");

            if (string.IsNullOrWhiteSpace(senderName))
                senderName = "Member";

            var content = TryGetString(
                payload,
                "content");

            if (string.IsNullOrWhiteSpace(content))
                return;

            var createdAtText = TryGetString(
                payload,
                "created_at");

            var createdAt = DateTime.TryParse(
                createdAtText,
                null,
                System.Globalization.DateTimeStyles.RoundtripKind,
                out var parsedCreatedAt)
                    ? parsedCreatedAt.ToUniversalTime()
                    : DateTime.UtcNow;

            var message = new BranchChatMessageUi
            {
                MessageId = messageId,
                BranchId = _branchId,
                SenderUid = senderUid,
                SenderName = senderName,
                Text = content,
                CreatedAt = createdAt
            };

            System.Diagnostics.Debug.WriteLine(
                $"[BRANCH_CHAT_REALTIME] New message received: " +
                $"message_id={message.MessageId}, " +
                $"community_id={communityId}, " +
                $"sender_uid={message.SenderUid}");

            _ = HandleRealtimeMessageAsync(message);
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine(
                $"[BRANCH_CHAT] Appwrite realtime payload parse failed: {ex}");
        }
    }

    private async Task HandleRealtimeMessageAsync(
        BranchChatMessageUi message)
    {
        try
        {
            // Save realtime message into SQLite cache.
            await CacheUiMessageAsync(message);

            await MainThread.InvokeOnMainThreadAsync(() =>
            {
                if (_messages.Any(existing =>
                    string.Equals(
                        existing.MessageId,
                        message.MessageId,
                        StringComparison.Ordinal)))
                {
                    return;
                }

                _messages.Add(message);

                _messages.Sort(
                    (left, right) =>
                        left.CreatedAt.CompareTo(right.CreatedAt));

                RenderMessages();
            });
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine(
                $"[BRANCH_CHAT_REALTIME] Failed to cache/display realtime message: {ex}");
        }
    }

    private static string GetAppwriteDocumentId(
        JsonElement element)
    {
        var id = TryGetString(element, "$id");

        if (!string.IsNullOrWhiteSpace(id))
            return id;

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

        if (value.ValueKind == JsonValueKind.Null ||
            value.ValueKind == JsonValueKind.Undefined)
        {
            return string.Empty;
        }

        return value.ToString();
    }

    // ============================================================
    // PAGE LOAD
    // ============================================================

    private async Task LoadBranchGroupAsync()
    {
        BranchStatusLabel.Text = "Loading Branch Group...";

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
                ?? await MauiProgram.CreateAuthServiceForPages()
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

            var members = await LoadBranchMembersAsync();

            System.Diagnostics.Debug.WriteLine(
                $"[BRANCH_CHAT] Current Firebase UID={GetCurrentUserUid()} " +
                $"Current Branch ID={_branchId} " +
                $"Branch name={BranchName} " +
                $"Member query count={members.Count}");

            BranchStatusLabel.Text =
                members.Count == 1
                    ? "1 member in this Branch"
                    : $"{members.Count} members in this Branch";

            MembersLabel.Text =
                members.Count == 1
                    ? "Members (1)"
                    : $"Members ({members.Count})";

            // ====================================================
            // CACHE-FIRST MESSAGE LOAD
            //
            // If SQLite contains messages:
            //     use SQLite only.
            //
            // If SQLite is empty:
            //     fetch latest 100 from Appwrite,
            //     save them to SQLite,
            //     display them.
            // ====================================================

            await LoadMessagesFromCacheFirstAsync();
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine(
                $"[BRANCH CHAT] Load failed: {ex}");

            BranchStatusLabel.Text =
                "Unable to load the Church Group right now.";
        }
    }

    private async Task LoadMessagesFromCacheFirstAsync()
    {
        if (_branchId <= 0)
            return;

        try
        {
            BranchStatusLabel.Text = "Loading messages...";

            var messages =
                await _communityService.LoadGroupMessagesWithCacheAsync(
                    _branchId.ToString(),
                    100);

            var uiMessages = messages
                .Where(message =>
                    string.Equals(
                        message.CommunityId,
                        _branchId.ToString(),
                        StringComparison.Ordinal))
                .Select(ToUiMessage)
                .OrderBy(message => message.CreatedAt)
                .ToList();

            _messages.Clear();

            foreach (var message in uiMessages)
                _messages.Add(message);

            RenderMessages();

            System.Diagnostics.Debug.WriteLine(
                $"[BRANCH_CHAT] Cache-first load complete. " +
                $"Messages displayed={_messages.Count}");
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
                string.IsNullOrWhiteSpace(message.MessageId)
                    ? message.Id
                    : message.MessageId,

            BranchId = int.TryParse(
                message.CommunityId,
                out var branchId)
                    ? branchId
                    : 0,

            SenderUid = message.SenderUid,

            SenderName =
                string.IsNullOrWhiteSpace(message.SenderName)
                    ? "Member"
                    : message.SenderName,

            Text = message.Content,

            CreatedAt =
                message.CreatedAt.Kind == DateTimeKind.Utc
                    ? message.CreatedAt
                    : message.CreatedAt.ToUniversalTime()
        };
    }

    // ============================================================
    // PULL TO REFRESH
    // ============================================================

    private async Task RefreshMessagesAsync()
    {
        if (_isLoading || _branchId <= 0)
            return;

        _isLoading = true;

        try
        {
            System.Diagnostics.Debug.WriteLine(
                $"[BRANCH_CHAT_REFRESH] Checking for messages newer than local cache...");

            // IMPORTANT:
            // This does NOT download all 100 messages again.
            //
            // CommunityService reads the newest cached created_at
            // and asks Appwrite only for newer messages.
            var newMessages =
                await _communityService.SyncNewerGroupMessagesAsync(
                    _branchId.ToString(),
                    100);

            if (newMessages.Count == 0)
            {
                System.Diagnostics.Debug.WriteLine(
                    "[BRANCH_CHAT_REFRESH] No new messages.");

                return;
            }

            foreach (var message in newMessages)
            {
                var uiMessage = ToUiMessage(message);

                if (_messages.Any(existing =>
                    string.Equals(
                        existing.MessageId,
                        uiMessage.MessageId,
                        StringComparison.Ordinal)))
                {
                    continue;
                }

                _messages.Add(uiMessage);
            }

            _messages.Sort(
                (left, right) =>
                    left.CreatedAt.CompareTo(right.CreatedAt));

            RenderMessages();

            System.Diagnostics.Debug.WriteLine(
                $"[BRANCH_CHAT_REFRESH] Added {newMessages.Count} new messages.");
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine(
                $"[BRANCH CHAT] Incremental refresh failed: {ex}");
        }
        finally
        {
            _isLoading = false;
        }
    }

    // ============================================================
    // SQLITE CACHE FOR REALTIME/SEND
    // ============================================================

    private async Task CacheUiMessageAsync(
        BranchChatMessageUi message)
    {
        try
        {
            var communityMessage =
                new Models.CommunityMessage
                {
                    Id = message.MessageId,
                    MessageId = message.MessageId,
                    SenderUid = message.SenderUid,
                    SenderName = message.SenderName,
                    Content = message.Text,
                    CommunityId = message.BranchId.ToString(),
                    MessageType = "text",
                    CreatedAt = message.CreatedAt
                };

            await _communityService.CacheCommunityMessageAsync(
                communityMessage);
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine(
                $"[BRANCH_CHAT] SQLite cache write failed: {ex}");
        }
    }

    // ============================================================
    // FIRESTORE MEMBERS
    // ============================================================

    private async Task<List<BranchMemberUi>> LoadBranchMembersAsync()
    {
        try
        {
            System.Diagnostics.Debug.WriteLine(
                $"[BRANCH_CHAT] Member query start: branchId={_branchId}");

            var snapshot = await _firestore
                .GetCollection("users")
                .GetDocumentsAsync<FirestoreUserProfileDocument>(
                    Source.Default);

            if (snapshot == null)
                return new List<BranchMemberUi>();

            var members = snapshot.Documents
                .Select(document => document.Data)
                .Where(profile =>
                    profile != null &&
                    profile.BranchId == _branchId)
                .Select(profile => new BranchMemberUi
                {
                    Uid =
                        string.IsNullOrWhiteSpace(profile!.Uid)
                            ? profile.DocumentId
                            : profile.Uid,

                    DisplayName =
                        !string.IsNullOrWhiteSpace(profile.FullName)
                            ? profile.FullName
                            : !string.IsNullOrWhiteSpace(profile.Username)
                                ? profile.Username
                                : "Member",

                    Role =
                        string.IsNullOrWhiteSpace(profile.Role)
                            ? "Member"
                            : profile.Role,

                    IsCurrentUser =
                        string.Equals(
                            GetCurrentUserUid(),
                            string.IsNullOrWhiteSpace(profile.Uid)
                                ? profile.DocumentId
                                : profile.Uid,
                            StringComparison.Ordinal)
                })
                .OrderBy(
                    member => member.DisplayName,
                    StringComparer.OrdinalIgnoreCase)
                .ToList();

            System.Diagnostics.Debug.WriteLine(
                $"[BRANCH_CHAT] Member count for branch {_branchId}: {members.Count}");

            return members;
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine(
                $"[BRANCH_CHAT] Load members failed: {ex}");

            return new List<BranchMemberUi>();
        }
    }

    // ============================================================
    // RENDER
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

                    TextColor = Colors.Gray,
                    FontSize = 15,
                    Margin = new Thickness(8, 16)
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

            var container = new Border
            {
                Padding = new Thickness(12, 10),

                BackgroundColor =
                    isCurrentUser
                        ? Color.FromArgb("#DBEAFE")
                        : Colors.White,

                StrokeThickness = 0,

                StrokeShape =
                    new RoundRectangle
                    {
                        CornerRadius = 12
                    },

                Margin =
                    new Thickness(
                        isCurrentUser ? 24 : 0,
                        0,
                        isCurrentUser ? 0 : 24,
                        8),

                WidthRequest = 290,

                HorizontalOptions =
                    isCurrentUser
                        ? LayoutOptions.End
                        : LayoutOptions.Start
            };

            var stack =
                new VerticalStackLayout
                {
                    Spacing = 4
                };

            stack.Children.Add(
                new Label
                {
                    Text = senderText,
                    FontAttributes = FontAttributes.Bold,
                    FontSize = 12,

                    TextColor =
                        isCurrentUser
                            ? Color.FromArgb("#1D4ED8")
                            : Colors.DarkSlateBlue
                });

            stack.Children.Add(
                new Label
                {
                    Text = message.Text,
                    FontSize = 15,
                    TextColor = Colors.Black,
                    LineBreakMode = LineBreakMode.WordWrap
                });

            stack.Children.Add(
                new Label
                {
                    Text =
                        message.CreatedAt
                            .ToLocalTime()
                            .ToString("HH:mm"),

                    FontSize = 11,
                    TextColor = Colors.Gray,
                    HorizontalOptions = LayoutOptions.End
                });

            container.Content = stack;

            MessagesLayout.Children.Add(container);
        }

        if (MessagesLayout.Parent is ScrollView scrollView)
        {
            _ = MainThread.InvokeOnMainThreadAsync(
                () => scrollView.ScrollToAsync(
                    0,
                    double.MaxValue,
                    false));
        }
    }

    // ============================================================
    // SEND MESSAGE
    // ============================================================

    private async void OnSendClicked(
        object sender,
        EventArgs e)
    {
        var text = MessageEntry.Text?.Trim();

        if (string.IsNullOrWhiteSpace(text))
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
                ?? await MauiProgram.CreateAuthServiceForPages()
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
                _auth.CurrentUser?.Uid ?? string.Empty;

            if (string.IsNullOrWhiteSpace(currentUid))
            {
                await DisplayAlert(
                    "Not authenticated",
                    "Firebase authentication is required to send a message.",
                    "OK");

                return;
            }

            if (currentUser.BranchId != _branchId)
            {
                await DisplayAlert(
                    "Access denied",
                    "You can only send messages in your own Branch Group.",
                    "OK");

                return;
            }

            System.Diagnostics.Debug.WriteLine(
                $"[BRANCH_CHAT_SEND] Sending message. " +
                $"branch={_branchId}, uid={currentUid}");

            var createdMessage =
                await _communityService.CreateCommunityMessageAsync(
                    communityId: _branchId.ToString(),
                    content: text,
                    messageType: "text",
                    branchId: _branchId.ToString(),
                    organizationalLevel: "Branch");

            if (createdMessage == null ||
                string.IsNullOrWhiteSpace(
                    createdMessage.MessageId))
            {
                await DisplayAlert(
                    "Unable to send message",
                    "The message was not accepted by the server. Please try again.",
                    "OK");

                return;
            }

            // ====================================================
            // APPWRITE HAS NOW PERSISTED THE MESSAGE.
            //
            // Save the same message locally.
            // ====================================================

            await _communityService.CacheCommunityMessageAsync(
                createdMessage);

            var uiMessage =
                ToUiMessage(createdMessage);

            if (!_messages.Any(existing =>
                string.Equals(
                    existing.MessageId,
                    uiMessage.MessageId,
                    StringComparison.Ordinal)))
            {
                _messages.Add(uiMessage);

                _messages.Sort(
                    (left, right) =>
                        left.CreatedAt.CompareTo(right.CreatedAt));

                RenderMessages();
            }

            MessageEntry.Text = string.Empty;

            System.Diagnostics.Debug.WriteLine(
                $"[BRANCH_CHAT_SEND] Message successfully persisted and cached. " +
                $"message_id={createdMessage.MessageId}");
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine(
                "========== BRANCH CHAT SEND ERROR ==========");

            System.Diagnostics.Debug.WriteLine(
                $"Exception Type: {ex.GetType().FullName}");

            System.Diagnostics.Debug.WriteLine(
                $"Message: {ex.Message}");

            System.Diagnostics.Debug.WriteLine(
                $"Inner Exception: {ex.InnerException?.Message}");

            System.Diagnostics.Debug.WriteLine(
                $"Full Exception: {ex}");

            System.Diagnostics.Debug.WriteLine(
                "============================================");

            var errorDetails =
                $"Type: {ex.GetType().Name}\n\n" +
                $"Message: {ex.Message}";

            if (ex.InnerException != null)
            {
                errorDetails +=
                    $"\n\nInner error: {ex.InnerException.Message}";
            }

            await DisplayAlert(
                "APPWRITE SEND ERROR",
                errorDetails,
                "OK");
        }
    }

    // ============================================================
    // MEMBERS
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
                        m =>
                            $"• {m.DisplayName}" +
                            (m.IsCurrentUser
                                ? " - You"
                                : $" - {m.Role}")));

            await DisplayAlert(
                $"Branch Members ({members.Count})",
                details,
                "OK");
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine(
                $"[BRANCH CHAT] Members label failed: {ex}");

            await DisplayAlert(
                "Branch Members",
                "The member list could not be loaded right now.",
                "OK");
        }
    }

    // ============================================================
    // INVITATION
    // ============================================================

    private async void AddMemberButton_Clicked(
        object? sender,
        EventArgs e)
    {
        try
        {
            var currentUser =
                MauiProgram.CurrentUser
                ?? await MauiProgram.CreateAuthServiceForPages()
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

            var invitationId =
                Guid.NewGuid().ToString("N");

            var invitation =
                new BranchInvitationRecord
                {
                    InvitationId = invitationId,
                    BranchId = _branchId,
                    BranchName = BranchName,
                    CreatedByUid = GetCurrentUserUid(),
                    CreatedAt = DateTime.UtcNow,
                    Status = "active"
                };

            var invitationRef =
                _firestore
                    .GetCollection("branchInvitations")
                    .GetDocument(invitationId);

            await invitationRef.SetDataAsync(
                invitation);

            var deepLink =
                $"cctuscf://invite?branchId={_branchId}" +
                $"&invitationId={invitationId}";

            System.Diagnostics.Debug.WriteLine(
                $"[BRANCH_CHAT] Invitation created: " +
                $"invitationId={invitationId} " +
                $"branchId={_branchId} " +
                $"createdByUid={GetCurrentUserUid()}");

            await Share.Default.RequestAsync(
                new ShareTextRequest
                {
                    Title =
                        $"Invite people to {BranchName}",

                    Text =
                        $"Join CCT-USCF and connect with the {BranchName}." +
                        $"\n\n{deepLink}"
                });

            await DisplayAlert(
                "Invite people to " + BranchName,
                "The branch invitation link was created and shared.",
                "OK");
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine(
                $"[BRANCH CHAT] Invitation creation failed: {ex}");

            await DisplayAlert(
                "Invitation could not be created",
                "Please check your connection and try again.",
                "OK");
        }
    }

    // ============================================================
    // PULL TO REFRESH EVENT
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
            MessagesRefreshView.IsRefreshing = false;
        }
    }

    // ============================================================
    // HELPERS / MODELS
    // ============================================================

    private string GetCurrentUserUid()
    {
        return _auth.CurrentUser?.Uid ?? string.Empty;
    }

    private sealed class BranchInvitationRecord : IFirestoreObject
    {
        [FirestoreDocumentId]
        public string InvitationId { get; set; } = string.Empty;

        [FirestoreProperty("branchId")]
        public int BranchId { get; set; }

        [FirestoreProperty("branchName")]
        public string BranchName { get; set; } = string.Empty;

        [FirestoreProperty("createdByUid")]
        public string CreatedByUid { get; set; } = string.Empty;

        [FirestoreProperty("createdAt")]
        public DateTime CreatedAt { get; set; } = DateTime.UtcNow;

        [FirestoreProperty("status")]
        public string Status { get; set; } = "active";
    }

    private sealed class FirestoreUserProfileDocument : IFirestoreObject
    {
        [FirestoreDocumentId]
        public string DocumentId { get; set; } = string.Empty;

        [FirestoreProperty("uid")]
        public string Uid { get; set; } = string.Empty;

        [FirestoreProperty("fullName")]
        public string FullName { get; set; } = string.Empty;

        [FirestoreProperty("username")]
        public string Username { get; set; } = string.Empty;

        [FirestoreProperty("role")]
        public string Role { get; set; } = string.Empty;

        [FirestoreProperty("branchId")]
        public int BranchId { get; set; }

        [FirestoreProperty("regionId")]
        public int RegionId { get; set; }

        [FirestoreProperty("districtId")]
        public int DistrictId { get; set; }
    }

    private sealed class BranchChatMessageUi
    {
        public string MessageId { get; set; } = string.Empty;
        public int BranchId { get; set; }
        public string SenderUid { get; set; } = string.Empty;
        public string SenderName { get; set; } = string.Empty;
        public string Text { get; set; } = string.Empty;
        public DateTime CreatedAt { get; set; } = DateTime.UtcNow;
    }

    private async void OnAttachmentClicked(
    object? sender,
    EventArgs e)
{
    try
    {
        var choice = await DisplayActionSheet(
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
    }
}
private async Task PickImageAsync()
{
    try
    {
        var result = await MediaPicker.Default.PickPhotoAsync(
            new MediaPickerOptions
            {
                Title = "Select an image"
            });

        if (result == null)
            return;

        System.Diagnostics.Debug.WriteLine(
            $"[BRANCH_CHAT] Image selected: {result.FileName}");

        // Cloudinary upload will be connected here.
        await DisplayAlert(
            "Image selected",
            result.FileName,
            "OK");
    }
    catch (Exception ex)
    {
        System.Diagnostics.Debug.WriteLine(
            $"[BRANCH_CHAT] Image picker failed: {ex}");

        await DisplayAlert(
            "Image",
            "Unable to select the image.",
            "OK");
    }
}

private async Task PickVideoAsync()
{
    try
    {
        var result = await MediaPicker.Default.PickVideoAsync(
            new MediaPickerOptions
            {
                Title = "Select a video"
            });

        if (result == null)
            return;

        System.Diagnostics.Debug.WriteLine(
            $"[BRANCH_CHAT] Video selected: {result.FileName}");

        // Cloudinary upload will be connected here.
        await DisplayAlert(
            "Video selected",
            result.FileName,
            "OK");
    }
    catch (Exception ex)
    {
        System.Diagnostics.Debug.WriteLine(
            $"[BRANCH_CHAT] Video picker failed: {ex}");

        await DisplayAlert(
            "Video",
            "Unable to select the video.",
            "OK");
    }
}
    private sealed class BranchMemberUi
    {
        public string Uid { get; set; } = string.Empty;
        public string DisplayName { get; set; } = string.Empty;
        public string Role { get; set; } = "Member";
        public bool IsCurrentUser { get; set; }
    }
}