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
            {
                BranchTitleLabel.Text = BranchName;
            }
        }
    }

    private string _branchName = "Branch Group";
    public string BranchName
    {
        get => _branchName;
        set
        {
            _branchName = string.IsNullOrWhiteSpace(value) ? "Branch Group" : value;
            BranchTitleLabel.Text = _branchName;
        }
    }

    protected override async void OnAppearing()
    {
        base.OnAppearing();
        _realtimeEnabled = true;
        AttachRealtimeListener();

        if (_branchId <= 0)
        {
            var currentUser = MauiProgram.CurrentUser ?? await MauiProgram.CreateAuthServiceForPages().GetCurrentUserAsync();
            if (currentUser?.BranchId is int branchId && branchId > 0)
            {
                BranchId = branchId;
                BranchName = currentUser.Branch ?? "Branch Group";
            }
        }

        if (_branchId > 0)
            AttachRealtimeListener();

        await LoadBranchGroupAsync();
    }

    protected override void OnDisappearing()
    {
        base.OnDisappearing();
        _realtimeEnabled = false;
        DisposeRealtimeListener();
    }

    private void AttachRealtimeListener()
    {
        if (_realtimeListenerAttached || !_realtimeEnabled || _branchId <= 0)
            return;

        _realtimeListenerAttached = true;

        try
        {
            _appwriteRealtimeCts?.Cancel();
            _appwriteRealtimeCts?.Dispose();
            _appwriteRealtimeCts = new CancellationTokenSource();

            System.Diagnostics.Debug.WriteLine($"[BRANCH_CHAT] Appwrite realtime listener attached for branch {_branchId}");
            _ = Task.Run(async () =>
            {
                try
                {
                    await ListenForAppwriteMessagesAsync(_appwriteRealtimeCts.Token);
                }
                catch (OperationCanceledException)
                {
                    System.Diagnostics.Debug.WriteLine($"[BRANCH_CHAT] Appwrite realtime listener cancelled for branch {_branchId}");
                }
                catch (Exception ex)
                {
                    System.Diagnostics.Debug.WriteLine($"[BRANCH_CHAT] Appwrite realtime listener error for branch {_branchId}: {ex}");
                    _realtimeListenerAttached = false;
                }
            });
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine($"[BRANCH_CHAT] Appwrite realtime listener setup failed: {ex}");
            _realtimeListenerAttached = false;
        }
    }

    private void DisposeRealtimeListener()
    {
        _realtimeListenerAttached = false;
        _appwriteRealtimeCts?.Cancel();
        _appwriteRealtimeCts?.Dispose();
        _appwriteRealtimeCts = null;

        try
        {
            _appwriteRealtimeSocket?.Abort();
            _appwriteRealtimeSocket?.Dispose();
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine($"[BRANCH_CHAT] Appwrite realtime disconnect failed: {ex}");
        }

        _appwriteRealtimeSocket = null;
    }

    private async Task ListenForAppwriteMessagesAsync(CancellationToken cancellationToken)
    {
        var socket = new ClientWebSocket();
        _appwriteRealtimeSocket = socket;

        var uriBuilder = new UriBuilder(AppwriteService.Endpoint)
        {
            Scheme = Uri.UriSchemeWss,
            Path = "/v1/realtime",
            Query = $"project={Uri.EscapeDataString(AppwriteService.ProjectId)}"
        };

        var channel = _communityService.GetMessagesChannel();
        var subscription = JsonSerializer.Serialize(new
        {
            type = "register",
            channels = new[] { channel }
        });

        await socket.ConnectAsync(uriBuilder.Uri, cancellationToken);
        await socket.SendAsync(Encoding.UTF8.GetBytes(subscription), WebSocketMessageType.Text, true, cancellationToken);

        var buffer = new byte[16 * 1024];
        var messageBuilder = new StringBuilder();

        while (socket.State == WebSocketState.Open && !cancellationToken.IsCancellationRequested)
        {
            var result = await socket.ReceiveAsync(new ArraySegment<byte>(buffer), cancellationToken);
            if (result.MessageType == WebSocketMessageType.Close)
                break;

            var chunk = Encoding.UTF8.GetString(buffer, 0, result.Count);
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
            if (!root.TryGetProperty("type", out var typeElement) ||
                !string.Equals(typeElement.GetString(), "event", StringComparison.OrdinalIgnoreCase))
            {
                return;
            }

            if (!root.TryGetProperty("payload", out var payload) && !root.TryGetProperty("data", out payload))
                return;

            if (payload.ValueKind != JsonValueKind.Object)
                return;

            var groupId = TryGetString(payload, "group_id");
            if (string.IsNullOrWhiteSpace(groupId))
                groupId = TryGetString(payload, "community_id");

            if (!string.Equals(groupId, _branchId.ToString(), StringComparison.Ordinal))
                return;

            var message = new BranchChatMessageUi
            {
                MessageId = GetAppwriteDocumentId(payload),
                BranchId = _branchId,
                SenderUid = TryGetString(payload, "sender_id"),
                SenderName = string.IsNullOrWhiteSpace(TryGetString(payload, "sender_name")) ? "Member" : TryGetString(payload, "sender_name"),
                Text = TryGetString(payload, "content"),
                CreatedAt = DateTime.TryParse(TryGetString(payload, "created_at"), out var createdAt) ? createdAt : DateTime.UtcNow
            };

            MainThread.BeginInvokeOnMainThread(() =>
            {
                if (_messages.Any(existing => string.Equals(existing.MessageId, message.MessageId, StringComparison.Ordinal)))
                    return;

                _messages.Add(message);
                _messages.Sort((left, right) => left.CreatedAt.CompareTo(right.CreatedAt));
                RenderMessages();
            });
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine($"[BRANCH_CHAT] Appwrite realtime payload parse failed: {ex}");
        }
    }

    private static string GetAppwriteDocumentId(JsonElement element)
    {
        var id = TryGetString(element, "$id");
        return string.IsNullOrWhiteSpace(id)
            ? TryGetString(element, "message_id")
            : id;
    }
    private static string TryGetString(JsonElement element, string propertyName)
    {
        return element.TryGetProperty(propertyName, out var value) && value.ValueKind != JsonValueKind.Null && value.ValueKind != JsonValueKind.Undefined
            ? value.ToString()
            : string.Empty;
    }

    private async Task LoadBranchGroupAsync()
    {
        BranchStatusLabel.Text = "Loading Branch Group...";

        try
        {
            if (_branchId <= 0)
            {
                BranchStatusLabel.Text = "Branch information is unavailable.";
                return;
            }

            await FirebaseInit.Initialized;

            var currentUser = MauiProgram.CurrentUser ?? await MauiProgram.CreateAuthServiceForPages().GetCurrentUserAsync();
            if (currentUser == null)
            {
                BranchStatusLabel.Text = "Please sign in to access your branch community.";
                return;
            }

            if (currentUser.BranchId is int userBranchId && userBranchId != _branchId)
            {
                BranchStatusLabel.Text = "Your account is not assigned to this branch.";
                return;
            }

            var members = await LoadBranchMembersAsync();
            System.Diagnostics.Debug.WriteLine($"[BRANCH_CHAT] Current Firebase UID={GetCurrentUserUid()} Current Branch ID={_branchId} Branch name={BranchName} Member query count={members.Count}");
            BranchStatusLabel.Text = members.Count == 1 ? "1 member in this Branch" : $"{members.Count} members in this Branch";
            MembersLabel.Text = members.Count == 1 ? "Members (1)" : $"Members ({members.Count})";

            await RefreshMessagesAsync();
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine($"[BRANCH CHAT] Load failed: {ex}");
            BranchStatusLabel.Text = "Unable to connect to the Church Group right now. Please check your internet connection and try again.";
        }
    }

    private async Task RefreshMessagesAsync()
    {
        if (_isLoading || _branchId <= 0)
            return;

        _isLoading = true;

        try
        {
            var messages = await LoadMessagesAsync();
            _messages.Clear();
            foreach (var message in messages)
            {
                _messages.Add(message);
            }

            RenderMessages();
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine($"[BRANCH CHAT] Refresh messages failed: {ex}");
        }
        finally
        {
            _isLoading = false;
        }
    }

    private async Task<List<BranchChatMessageUi>> LoadMessagesAsync()
    {
        try
        {
            var messages = await _communityService.GetGroupMessagesAsync(_branchId.ToString(), 100);

            return messages
                .Where(message => string.Equals(message.CommunityId, _branchId.ToString(), StringComparison.Ordinal))
                .Select(message => new BranchChatMessageUi
                {
                    MessageId = string.IsNullOrWhiteSpace(message.MessageId) ? message.Id : message.MessageId,
                    BranchId = _branchId,
                    SenderUid = message.SenderUid,
                    SenderName = string.IsNullOrWhiteSpace(message.SenderName) ? "Member" : message.SenderName,
                    Text = message.Content,
                    CreatedAt = message.CreatedAt
                })
                .OrderBy(doc => doc.CreatedAt)
                .ToList();
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine($"[BRANCH CHAT] Load messages failed: {ex}");
            return new List<BranchChatMessageUi>();
        }
    }

    private async Task<List<BranchMemberUi>> LoadBranchMembersAsync()
    {
        try
        {
            System.Diagnostics.Debug.WriteLine($"[BRANCH_CHAT] Member query start: branchId={_branchId}");
            var snapshot = await _firestore
                .GetCollection("users")
                .GetDocumentsAsync<FirestoreUserProfileDocument>(Source.Default);

            if (snapshot == null)
                return new List<BranchMemberUi>();

            var members = snapshot.Documents
                .Select(document => document.Data)
                .Where(profile => profile != null && profile.BranchId == _branchId)
                .Select(profile => new BranchMemberUi
                {
                    Uid = string.IsNullOrWhiteSpace(profile!.Uid) ? profile.DocumentId : profile.Uid,
                    DisplayName = !string.IsNullOrWhiteSpace(profile.FullName) ? profile.FullName : (!string.IsNullOrWhiteSpace(profile.Username) ? profile.Username : "Member"),
                    Role = string.IsNullOrWhiteSpace(profile.Role) ? "Member" : profile.Role,
                    IsCurrentUser = string.Equals(GetCurrentUserUid(), string.IsNullOrWhiteSpace(profile.Uid) ? profile.DocumentId : profile.Uid, StringComparison.Ordinal)
                })
                .OrderBy(member => member.DisplayName, StringComparer.OrdinalIgnoreCase)
                .ToList();

            System.Diagnostics.Debug.WriteLine($"[BRANCH_CHAT] Member count for branch {_branchId}: {members.Count}");
            return members;
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine($"[BRANCH CHAT] Load members failed: {ex}");
            return new List<BranchMemberUi>();
        }
    }

    private void RenderMessages()
    {
        MessagesLayout.Children.Clear();

        if (_messages.Count == 0)
        {
            MessagesLayout.Children.Add(new Label
            {
                Text = "No messages yet. Start the conversation.",
                TextColor = Colors.Gray,
                FontSize = 15,
                Margin = new Thickness(8, 16)
            });
            return;
        }

        foreach (var message in _messages)
        {
            var isCurrentUser = string.Equals(message.SenderUid, GetCurrentUserUid(), StringComparison.Ordinal);
            var senderText = isCurrentUser ? "You" : message.SenderName;

            var container = new Border
            {
                Padding = new Thickness(12, 10),
                BackgroundColor = isCurrentUser ? Color.FromArgb("#DBEAFE") : Colors.White,
                StrokeThickness = 0,
                StrokeShape = new RoundRectangle { CornerRadius = 12 },
                Margin = new Thickness(isCurrentUser ? 24 : 0, 0, isCurrentUser ? 0 : 24, 8),
                WidthRequest = 290,
                HorizontalOptions = isCurrentUser ? LayoutOptions.End : LayoutOptions.Start
            };

            var stack = new VerticalStackLayout { Spacing = 4 };
            stack.Children.Add(new Label
            {
                Text = senderText,
                FontAttributes = FontAttributes.Bold,
                FontSize = 12,
                TextColor = isCurrentUser ? Color.FromArgb("#1D4ED8") : Colors.DarkSlateBlue
            });
            stack.Children.Add(new Label
            {
                Text = message.Text,
                FontSize = 15,
                TextColor = Colors.Black,
                LineBreakMode = LineBreakMode.WordWrap
            });
            stack.Children.Add(new Label
            {
                Text = message.CreatedAt.ToLocalTime().ToString("HH:mm"),
                FontSize = 11,
                TextColor = Colors.Gray,
                HorizontalOptions = LayoutOptions.End
            });

            container.Content = stack;
            MessagesLayout.Children.Add(container);
        }

        if (MessagesLayout.Parent is ScrollView scrollView)
        {
            _ = MainThread.InvokeOnMainThreadAsync(() => scrollView.ScrollToAsync(0, double.MaxValue, false));
        }
    }

    private async void OnSendClicked(object sender, EventArgs e)
    {
        var text = MessageEntry.Text?.Trim();
        if (string.IsNullOrWhiteSpace(text))
        {
            await DisplayAlert("Message required", "Please enter a message before sending.", "OK");
            return;
        }

        try
        {
            await FirebaseInit.Initialized;

            var currentUser = MauiProgram.CurrentUser ?? await MauiProgram.CreateAuthServiceForPages().GetCurrentUserAsync();
            if (currentUser == null)
            {
                await DisplayAlert("Not authenticated", "Please sign in to send a message.", "OK");
                return;
            }

            var currentUid = _auth.CurrentUser?.Uid ?? string.Empty;
            if (string.IsNullOrWhiteSpace(currentUid))
            {
                await DisplayAlert("Not authenticated", "Firebase authentication is required to send a message.", "OK");
                return;
            }

            if (currentUser.BranchId != _branchId)
            {
                await DisplayAlert("Access denied", "You can only send messages in your own Branch Group.", "OK");
                return;
            }

            var createdMessage = await _communityService.CreateCommunityMessageAsync(
                communityId: _branchId.ToString(),
                content: text,
                messageType: "text",
                branchId: _branchId.ToString(),
                organizationalLevel: "Branch");

            if (createdMessage == null || string.IsNullOrWhiteSpace(createdMessage.MessageId))
            {
                await DisplayAlert("Unable to send message", "The message was not accepted by the server. Please try again.", "OK");
                return;
            }

            var uiMessage = new BranchChatMessageUi
            {
                MessageId = createdMessage.MessageId,
                BranchId = _branchId,
                SenderUid = createdMessage.SenderUid,
                SenderName = string.IsNullOrWhiteSpace(createdMessage.SenderName) ? "You" : createdMessage.SenderName,
                Text = createdMessage.Content,
                CreatedAt = createdMessage.CreatedAt
            };

            if (!_messages.Any(existing => string.Equals(existing.MessageId, uiMessage.MessageId, StringComparison.Ordinal)))
            {
                _messages.Add(uiMessage);
                _messages.Sort((left, right) => left.CreatedAt.CompareTo(right.CreatedAt));
                RenderMessages();
            }

            MessageEntry.Text = string.Empty;
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

    private async void MembersLabel_Tapped(object? sender, EventArgs e)
    {
        try
        {
            var members = await LoadBranchMembersAsync();
            if (members.Count == 0)
            {
                await DisplayAlert("Branch Members", "No registered users are assigned to this branch yet.", "OK");
                return;
            }

            var details = string.Join(Environment.NewLine, members.Select(m => $"• {m.DisplayName}{(m.IsCurrentUser ? " - You" : $" - {m.Role}")}"));
            await DisplayAlert($"Branch Members ({members.Count})", details, "OK");
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine($"[BRANCH CHAT] Members label failed: {ex}");
            await DisplayAlert("Branch Members", "The member list could not be loaded right now.", "OK");
        }
    }

    private async void AddMemberButton_Clicked(object? sender, EventArgs e)
    {
        try
        {
            var currentUser = MauiProgram.CurrentUser ?? await MauiProgram.CreateAuthServiceForPages().GetCurrentUserAsync();
            if (currentUser == null)
            {
                await DisplayAlert("Sign in required", "Please sign in to manage branch membership.", "OK");
                return;
            }

            if (currentUser.BranchId is int userBranchId && userBranchId != _branchId)
            {
                await DisplayAlert("Access denied", "Your account is not assigned to this branch.", "OK");
                return;
            }

            var invitationId = Guid.NewGuid().ToString("N");
            var invitation = new BranchInvitationRecord
            {
                InvitationId = invitationId,
                BranchId = _branchId,
                BranchName = BranchName,
                CreatedByUid = GetCurrentUserUid(),
                CreatedAt = DateTime.UtcNow,
                Status = "active"
            };

            var invitationRef = _firestore.GetCollection("branchInvitations").GetDocument(invitationId);
            await invitationRef.SetDataAsync(invitation);

            var deepLink = $"cctuscf://invite?branchId={_branchId}&invitationId={invitationId}";
            System.Diagnostics.Debug.WriteLine($"[BRANCH_CHAT] Invitation created: invitationId={invitationId} branchId={_branchId} createdByUid={GetCurrentUserUid()}");

            await Share.Default.RequestAsync(new ShareTextRequest
            {
                Title = $"Invite people to {BranchName}",
                Text = $"Join CCT-USCF and connect with the {BranchName}.\n\n{deepLink}"
            });

            await DisplayAlert("Invite people to " + BranchName, "The branch invitation link was created and shared.", "OK");
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine($"[BRANCH CHAT] Invitation creation failed: {ex}");
            await DisplayAlert("Invitation could not be created", "Please check your connection and try again.", "OK");
        }
    }

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
    }private async void OnMessagesRefreshing(object sender, EventArgs e)
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
    private class BranchChatMessageUi
    {
        public string MessageId { get; set; } = string.Empty;
        public int BranchId { get; set; }
        public string SenderUid { get; set; } = string.Empty;
        public string SenderName { get; set; } = string.Empty;
        public string Text { get; set; } = string.Empty;
        public DateTime CreatedAt { get; set; } = DateTime.UtcNow;
    }

    private class BranchMemberUi
    {
        public string Uid { get; set; } = string.Empty;
        public string DisplayName { get; set; } = string.Empty;
        public string Role { get; set; } = "Member";
        public bool IsCurrentUser { get; set; }
    }
}
