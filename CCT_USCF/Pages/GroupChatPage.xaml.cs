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

[QueryProperty(nameof(GroupId), "groupId")]
[QueryProperty(nameof(GroupName), "groupName")]
[QueryProperty(nameof(GroupType), "groupType")]
[QueryProperty(nameof(OrganizationalLevel), "organizationalLevel")]
[QueryProperty(nameof(RegionId), "regionId")]
[QueryProperty(nameof(DistrictId), "districtId")]
[QueryProperty(nameof(BranchId), "branchId")]
public partial class GroupChatPage : ContentPage
{
    private readonly IFirebaseAuth _auth;
    private readonly IFirebaseFirestore _firestore;
    private readonly CommunityService _communityService;
    private readonly List<GroupChatMessageUi> _messages = new();
    private bool _isLoading;
    private bool _realtimeEnabled;
    private bool _realtimeListenerAttached;
    private ClientWebSocket? _appwriteRealtimeSocket;
    private CancellationTokenSource? _appwriteRealtimeCts;

    public GroupChatPage()
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

    private string _groupId = string.Empty;
    public string GroupId
    {
        get => _groupId;
        set
        {
            _groupId = string.IsNullOrWhiteSpace(value) ? string.Empty : value;
            if (!string.IsNullOrWhiteSpace(GroupName))
                GroupTitleLabel.Text = GroupName;
        }
    }

    private string _groupName = "Group Chat";
    public string GroupName
    {
        get => _groupName;
        set
        {
            _groupName = string.IsNullOrWhiteSpace(value) ? "Group Chat" : value;
            GroupTitleLabel.Text = _groupName;
        }
    }

    private string _groupType = "Group";
    public string GroupType
    {
        get => _groupType;
        set => _groupType = string.IsNullOrWhiteSpace(value) ? "Group" : value;
    }

    private string _organizationalLevel = "Group";
    public string OrganizationalLevel
    {
        get => _organizationalLevel;
        set => _organizationalLevel = string.IsNullOrWhiteSpace(value) ? "Group" : value;
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

    protected override async void OnAppearing()
    {
        base.OnAppearing();
        _realtimeEnabled = true;
        AttachRealtimeListener();
        await LoadGroupAsync();
    }

    protected override void OnDisappearing()
    {
        base.OnDisappearing();
        _realtimeEnabled = false;
        DisposeRealtimeListener();
    }

    private void AttachRealtimeListener()
    {
        if (_realtimeListenerAttached || !_realtimeEnabled || string.IsNullOrWhiteSpace(_groupId))
            return;

        _realtimeListenerAttached = true;

        try
        {
            _appwriteRealtimeCts?.Cancel();
            _appwriteRealtimeCts?.Dispose();
            _appwriteRealtimeCts = new CancellationTokenSource();

            System.Diagnostics.Debug.WriteLine($"[GROUP_CHAT] Appwrite realtime listener attached for group {_groupId}");
            _ = Task.Run(async () =>
            {
                try
                {
                    await ListenForAppwriteMessagesAsync(_appwriteRealtimeCts.Token);
                }
                catch (OperationCanceledException)
                {
                    System.Diagnostics.Debug.WriteLine($"[GROUP_CHAT] Appwrite realtime listener cancelled for group {_groupId}");
                }
                catch (Exception ex)
                {
                    System.Diagnostics.Debug.WriteLine($"[GROUP_CHAT] Appwrite realtime listener error for group {_groupId}: {ex}");
                    _realtimeListenerAttached = false;
                }
            });
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine($"[GROUP_CHAT] Appwrite realtime listener setup failed: {ex}");
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
            System.Diagnostics.Debug.WriteLine($"[GROUP_CHAT] Appwrite realtime disconnect failed: {ex}");
        }

        _appwriteRealtimeSocket = null;
    }

    private async Task ListenForAppwriteMessagesAsync(CancellationToken cancellationToken)
    {
        var socket = new ClientWebSocket();
        _appwriteRealtimeSocket = socket;

        var uriBuilder = new UriBuilder(AppwriteConfig.Endpoint)
        {
            Scheme = Uri.UriSchemeWss,
            Path = "/v1/realtime",
            Query = $"project={Uri.EscapeDataString(AppwriteConfig.ProjectId)}"
        };

        var channel = _communityService.GetCommunityMessagesChannel();
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
            {
                break;
            }

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

            var messageId = TryGetString(payload, "message_id");
            var groupId = TryGetString(payload, "group_id");
            if (string.IsNullOrWhiteSpace(groupId))
                groupId = TryGetString(payload, "community_id");

            if (!string.Equals(groupId, _groupId, StringComparison.Ordinal))
                return;

            var senderUid = TryGetString(payload, "sender_id");
            if (string.IsNullOrWhiteSpace(senderUid))
                senderUid = TryGetString(payload, "sender_uid");

            var senderName = TryGetString(payload, "sender_name");
            var content = TryGetString(payload, "content");
            var createdAtValue = TryGetDateTime(payload, "created_at");

            var adaptiveMessage = new GroupChatMessageUi
            {
                MessageId = string.IsNullOrWhiteSpace(messageId) ? Guid.NewGuid().ToString("N") : messageId,
                GroupId = groupId,
                SenderUid = senderUid,
                SenderName = string.IsNullOrWhiteSpace(senderName) ? "Member" : senderName,
                Text = content,
                CreatedAt = createdAtValue == default ? DateTime.UtcNow : createdAtValue
            };

            MainThread.BeginInvokeOnMainThread(() =>
            {
                if (_messages.Any(message => string.Equals(message.MessageId, adaptiveMessage.MessageId, StringComparison.Ordinal)))
                    return;

                _messages.Add(adaptiveMessage);
                _messages.Sort((left, right) => left.CreatedAt.CompareTo(right.CreatedAt));
                RenderMessages();
            });
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine($"[GROUP_CHAT] Appwrite realtime payload parse failed: {ex}");
        }
    }

    private static string TryGetString(JsonElement element, string propertyName)
    {
        return element.TryGetProperty(propertyName, out var value) && value.ValueKind != JsonValueKind.Null && value.ValueKind != JsonValueKind.Undefined
            ? value.ToString()
            : string.Empty;
    }

    private static DateTime TryGetDateTime(JsonElement element, string propertyName)
    {
        if (!element.TryGetProperty(propertyName, out var value) || value.ValueKind == JsonValueKind.Null || value.ValueKind == JsonValueKind.Undefined)
            return default;

        return DateTime.TryParse(value.ToString(), out var dateTime) ? dateTime : default;
    }

    private async Task LoadGroupAsync()
    {
        GroupStatusLabel.Text = "Loading group...";

        try
        {
            await FirebaseInit.Initialized;

            var currentUser = MauiProgram.CurrentUser ?? await MauiProgram.CreateAuthServiceForPages().GetCurrentUserAsync();
            if (currentUser == null)
            {
                GroupStatusLabel.Text = "Please sign in to access this group.";
                return;
            }

            if (string.IsNullOrWhiteSpace(_groupId))
            {
                GroupStatusLabel.Text = "The selected group is unavailable.";
                return;
            }

            var validation = await ValidateGroupAccessAsync(currentUser);
            if (!validation.IsAllowed)
            {
                GroupStatusLabel.Text = validation.Message;
                return;
            }

            await EnsureCurrentUserMembershipAsync(currentUser);

            var members = await LoadGroupMembersAsync();
            GroupStatusLabel.Text = members.Count == 1 ? "1 member in this group" : $"{members.Count} members in this group";
            MembersLabel.Text = members.Count == 1 ? "Members (1)" : $"Members ({members.Count})";

            await RefreshMessagesAsync();
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine($"[GROUP_CHAT] Load failed: {ex}");
            GroupStatusLabel.Text = "Unable to connect to the group right now. Please check your internet connection and try again.";
        }
    }

    private async Task RefreshMessagesAsync()
    {
        if (_isLoading || string.IsNullOrWhiteSpace(_groupId))
            return;

        _isLoading = true;

        try
        {
            var messages = await LoadMessagesAsync();
            _messages.Clear();
            foreach (var message in messages)
                _messages.Add(message);

            RenderMessages();
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine($"[GROUP_CHAT] Refresh messages failed: {ex}");
        }
        finally
        {
            _isLoading = false;
        }
    }

    private async Task<List<GroupChatMessageUi>> LoadMessagesAsync()
    {
        try
        {
            var appwriteMessages = await _communityService.GetCommunityMessagesAsync(
                communityId: GetBackendCommunityId(),
                limit: 100,
                organizationalLevel: OrganizationalLevel,
                branchId: _branchId > 0 ? _branchId.ToString() : null,
                regionId: _regionId > 0 ? _regionId.ToString() : null,
                districtId: _districtId > 0 ? _districtId.ToString() : null);

            return appwriteMessages
                .Where(message => string.Equals(message.CommunityId, GetBackendCommunityId(), StringComparison.Ordinal))
                .Select(message => new GroupChatMessageUi
                {
                    MessageId = message.MessageId,
                    GroupId = message.CommunityId,
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
            System.Diagnostics.Debug.WriteLine($"[GROUP_CHAT] Load messages failed: {ex}");
            return new List<GroupChatMessageUi>();
        }
    }

    private async Task<List<GroupMemberUi>> LoadGroupMembersAsync()
    {
        try
        {
            var snapshot = await _firestore
                .GetCollection($"groups/{_groupId}/members")
                .GetDocumentsAsync<FirestoreGroupMemberDocument>(Source.Default);

            if (snapshot == null || !snapshot.Documents.Any())
            {
                return await LoadGroupMembersFromUsersAsync();
            }

            return snapshot.Documents
                .Select(document => document.Data)
                .Where(member => member != null)
                .Select(member => new GroupMemberUi
                {
                    Uid = string.IsNullOrWhiteSpace(member!.Uid) ? member.DocumentId : member.Uid,
                    DisplayName = !string.IsNullOrWhiteSpace(member.FullName) ? member.FullName : (!string.IsNullOrWhiteSpace(member.Username) ? member.Username : "Member"),
                    Role = string.IsNullOrWhiteSpace(member.Role) ? "Member" : member.Role,
                    LeadershipLevel = string.IsNullOrWhiteSpace(member.LeadershipLevel) ? "Member" : member.LeadershipLevel,
                    IsCurrentUser = string.Equals(GetCurrentUserUid(), string.IsNullOrWhiteSpace(member.Uid) ? member.DocumentId : member.Uid, StringComparison.Ordinal)
                })
                .OrderBy(member => member.DisplayName, StringComparer.OrdinalIgnoreCase)
                .ToList();
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine($"[GROUP_CHAT] Load members failed: {ex}");
            return await LoadGroupMembersFromUsersAsync();
        }
    }

    private async Task<List<GroupMemberUi>> LoadGroupMembersFromUsersAsync()
    {
        try
        {
            var snapshot = await _firestore
                .GetCollection("users")
                .GetDocumentsAsync<FirestoreUserProfileDocument>(Source.Default);

            if (snapshot == null)
                return new List<GroupMemberUi>();

            var currentUid = GetCurrentUserUid();
            var members = snapshot.Documents
                .Select(document => document.Data)
                .Where(profile => profile != null && IsProfileEligibleForGroup(profile, currentUid))
                .Select(profile => new GroupMemberUi
                {
                    Uid = string.IsNullOrWhiteSpace(profile!.Uid) ? profile.DocumentId : profile.Uid,
                    DisplayName = !string.IsNullOrWhiteSpace(profile.FullName) ? profile.FullName : (!string.IsNullOrWhiteSpace(profile.Username) ? profile.Username : "Member"),
                    Role = string.IsNullOrWhiteSpace(profile.Role) ? "Member" : profile.Role,
                    LeadershipLevel = string.IsNullOrWhiteSpace(profile.LeadershipLevel) ? "Member" : profile.LeadershipLevel,
                    IsCurrentUser = string.Equals(currentUid, string.IsNullOrWhiteSpace(profile.Uid) ? profile.DocumentId : profile.Uid, StringComparison.Ordinal)
                })
                .OrderBy(member => member.DisplayName, StringComparer.OrdinalIgnoreCase)
                .ToList();

            return members;
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine($"[GROUP_CHAT] Fallback member scan failed: {ex}");
            return new List<GroupMemberUi>();
        }
    }

    private bool IsProfileEligibleForGroup(FirestoreUserProfileDocument profile, string currentUid)
    {
        var normalizedLevel = NormalizeLevel(OrganizationalLevel);
        if (string.IsNullOrWhiteSpace(normalizedLevel))
            return false;

        if (profile == null)
            return false;

        if (string.Equals(normalizedLevel, "District", StringComparison.OrdinalIgnoreCase))
        {
            return profile.DistrictId > 0 && DistrictId > 0 && profile.DistrictId == DistrictId;
        }

        if (string.Equals(normalizedLevel, "Regional", StringComparison.OrdinalIgnoreCase))
        {
            return profile.RegionId > 0 && RegionId > 0 && profile.RegionId == RegionId;
        }

        if (string.Equals(normalizedLevel, "National", StringComparison.OrdinalIgnoreCase))
        {
            return string.Equals(profile.LeadershipLevel, "National", StringComparison.OrdinalIgnoreCase)
                || string.Equals(profile.Role, "National Leader", StringComparison.OrdinalIgnoreCase)
                || string.Equals(currentUid, string.IsNullOrWhiteSpace(profile.Uid) ? profile.DocumentId : profile.Uid, StringComparison.OrdinalIgnoreCase);
        }

        return false;
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

            var validation = await ValidateGroupAccessAsync(currentUser);
            if (!validation.IsAllowed)
            {
                await DisplayAlert("Access denied", validation.Message, "OK");
                return;
            }

            var currentUid = GetCurrentUserUid();
            if (string.IsNullOrWhiteSpace(currentUid))
            {
                await DisplayAlert("Not authenticated", "Firebase authentication is required to send a message.", "OK");
                return;
            }

            var createdMessage = await _communityService.CreateCommunityMessageAsync(
                communityId: GetBackendCommunityId(),
                content: text,
                messageType: "text",
                branchId: _branchId > 0 ? _branchId.ToString() : null,
                regionId: _regionId > 0 ? _regionId.ToString() : null,
                districtId: _districtId > 0 ? _districtId.ToString() : null,
                organizationalLevel: OrganizationalLevel);

            MessageEntry.Text = string.Empty;
            await RefreshMessagesAsync();

            if (createdMessage == null || string.IsNullOrWhiteSpace(createdMessage.MessageId))
            {
                await DisplayAlert("Unable to send message", "Unable to send message. Please try again.", "OK");
            }
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine($"[GROUP_CHAT] Send message failed: {ex}");
            await DisplayAlert("Message could not be sent", "Please check your connection and try again.", "OK");
        }
    }

    private async void MembersLabel_Tapped(object? sender, EventArgs e)
    {
        try
        {
            var members = await LoadGroupMembersAsync();
            if (members.Count == 0)
            {
                await DisplayAlert("Group Members", "No registered members are assigned to this group yet.", "OK");
                return;
            }

            var details = string.Join(Environment.NewLine, members.Select(m => $"• {m.DisplayName}{(m.IsCurrentUser ? " - You" : $" - {m.LeadershipLevel}")}"));
            await DisplayAlert($"Group Members ({members.Count})", details, "OK");
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine($"[GROUP_CHAT] Members label failed: {ex}");
            await DisplayAlert("Group Members", "The member list could not be loaded right now.", "OK");
        }
    }

    private async void AddMemberButton_Clicked(object? sender, EventArgs e)
    {
        try
        {
            var currentUser = MauiProgram.CurrentUser ?? await MauiProgram.CreateAuthServiceForPages().GetCurrentUserAsync();
            if (currentUser == null)
            {
                await DisplayAlert("Sign in required", "Please sign in to manage this group.", "OK");
                return;
            }

            var validation = await ValidateGroupAccessAsync(currentUser);
            if (!validation.IsAllowed)
            {
                await DisplayAlert("Access denied", validation.Message, "OK");
                return;
            }

            var isAuthorized = IsAuthorizedToManageMembers(currentUser);
            if (!isAuthorized)
            {
                await DisplayAlert("Access denied", "Only authorized group leaders can add or invite members.", "OK");
                return;
            }

            var invitationId = Guid.NewGuid().ToString("N");
            var invitation = new GroupInvitationRecord
            {
                InvitationId = invitationId,
                GroupId = _groupId,
                GroupName = GroupName,
                OrganizationalLevel = OrganizationalLevel,
                CreatedByUid = GetCurrentUserUid(),
                CreatedAt = DateTime.UtcNow,
                Status = "pending"
            };

            var invitationRef = _firestore.GetCollection("groupInvitations").GetDocument(invitationId);
            await invitationRef.SetDataAsync(invitation);

            var deepLink = $"cctuscf://groupInvite?groupId={_groupId}&invitationId={invitationId}";
            System.Diagnostics.Debug.WriteLine($"[GROUP_CHAT] Invitation created: invitationId={invitationId} groupId={_groupId} createdByUid={GetCurrentUserUid()}");

            await Share.Default.RequestAsync(new ShareTextRequest
            {
                Title = $"Invite people to {GroupName}",
                Text = $"Join CCT-USCF and connect with the {GroupName}.\n\n{deepLink}"
            });

            await DisplayAlert("Invite people to " + GroupName, "The group invitation link was created and shared.", "OK");
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine($"[GROUP_CHAT] Invitation creation failed: {ex}");
            await DisplayAlert("Invitation could not be created", "Please check your connection and try again.", "OK");
        }
    }

    private bool IsAuthorizedToManageMembers(CCT_USCF.Models.CurrentUser currentUser)
    {
        var normalizedLevel = NormalizeLevel(OrganizationalLevel);
        if (string.IsNullOrWhiteSpace(normalizedLevel))
            return false;

        if (string.Equals(currentUser.LeadershipLevel, normalizedLevel, StringComparison.OrdinalIgnoreCase))
            return true;

        return IsLeaderGroup() && string.Equals(currentUser.LeadershipLevel, normalizedLevel, StringComparison.OrdinalIgnoreCase);
    }

    private async Task<(bool IsAllowed, string Message)> ValidateGroupAccessAsync(CCT_USCF.Models.CurrentUser currentUser)
    {
        var normalizedLevel = NormalizeLevel(OrganizationalLevel);
        if (string.IsNullOrWhiteSpace(_groupId))
            return (false, "This group is unavailable.");

        if (string.IsNullOrWhiteSpace(normalizedLevel))
            return (false, "The group could not be identified.");

        if (IsLeaderGroup())
        {
            if (!string.Equals(currentUser.LeadershipLevel, normalizedLevel, StringComparison.OrdinalIgnoreCase))
                return (false, $"You are not a member of the {GroupName}.");

            if (string.Equals(normalizedLevel, "District", StringComparison.OrdinalIgnoreCase) && (currentUser.DistrictId == null || currentUser.DistrictId.Value != DistrictId))
                return (false, "This group is outside your assigned organizational area.");

            if (string.Equals(normalizedLevel, "Regional", StringComparison.OrdinalIgnoreCase) && (currentUser.RegionId == null || currentUser.RegionId.Value != RegionId))
                return (false, "This group is outside your assigned organizational area.");

            if (string.Equals(normalizedLevel, "National", StringComparison.OrdinalIgnoreCase) && !string.Equals(currentUser.LeadershipLevel, "National", StringComparison.OrdinalIgnoreCase))
                return (false, "You are not registered at this organizational level.");

            return (true, $"{GroupName} access approved.");
        }

        if (string.Equals(normalizedLevel, "National", StringComparison.OrdinalIgnoreCase))
        {
            if (!string.Equals(currentUser.LeadershipLevel, "National", StringComparison.OrdinalIgnoreCase))
                return (false, "You are not registered at this organizational level.");

            return (true, "National group access approved.");
        }

        if (string.Equals(normalizedLevel, "Regional", StringComparison.OrdinalIgnoreCase))
        {
            if (!string.Equals(currentUser.LeadershipLevel, "Regional", StringComparison.OrdinalIgnoreCase) && !currentUser.RegionId.HasValue)
                return (false, "You are not registered at this organizational level.");

            if (!currentUser.RegionId.HasValue || currentUser.RegionId.Value != RegionId)
                return (false, "This group is outside your assigned organizational area.");

            return (true, "Regional group access approved.");
        }

        if (string.Equals(normalizedLevel, "District", StringComparison.OrdinalIgnoreCase))
        {
            if (!string.Equals(currentUser.LeadershipLevel, "District", StringComparison.OrdinalIgnoreCase) && !currentUser.DistrictId.HasValue)
                return (false, "You are not registered at this organizational level.");

            if (!currentUser.DistrictId.HasValue || currentUser.DistrictId.Value != DistrictId)
                return (false, "This group is outside your assigned organizational area.");

            return (true, "District group access approved.");
        }

        return (false, "The selected group could not be validated.");
    }

    private async Task EnsureCurrentUserMembershipAsync(CCT_USCF.Models.CurrentUser currentUser)
    {
        try
        {
            var currentUid = GetCurrentUserUid();
            if (string.IsNullOrWhiteSpace(currentUid))
                return;

            var member = new FirestoreGroupMemberDocument
            {
                DocumentId = currentUid,
                Uid = currentUid,
                FullName = !string.IsNullOrWhiteSpace(currentUser.FullName) ? currentUser.FullName : currentUser.Username,
                Username = currentUser.Username,
                Role = currentUser.Role,
                LeadershipLevel = currentUser.LeadershipLevel,
                GroupName = GroupName,
                OrganizationalLevel = OrganizationalLevel,
                RegionId = currentUser.RegionId ?? RegionId,
                DistrictId = currentUser.DistrictId ?? DistrictId,
                BranchId = currentUser.BranchId ?? BranchId,
                Status = "active",
                CreatedAt = DateTime.UtcNow
            };

            await _firestore
                .GetCollection($"groups/{_groupId}/members")
                .GetDocument(currentUid)
                .SetDataAsync(member);
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine($"[GROUP_CHAT] Ensure membership failed: {ex}");
        }
    }

    private string GetBackendCommunityId()
    {
        var normalizedLevel = NormalizeLevel(OrganizationalLevel);

        if (string.Equals(normalizedLevel, "District", StringComparison.OrdinalIgnoreCase) && _districtId > 0)
            return _districtId.ToString();

        if ((string.Equals(normalizedLevel, "Regional", StringComparison.OrdinalIgnoreCase) ||
             string.Equals(normalizedLevel, "Region", StringComparison.OrdinalIgnoreCase)) && _regionId > 0)
            return _regionId.ToString();

        if (string.Equals(normalizedLevel, "Branch", StringComparison.OrdinalIgnoreCase) && _branchId > 0)
            return _branchId.ToString();

        return _groupId;
    }
    private bool IsLeaderGroup() =>
        GroupName.Contains("Leader Group", StringComparison.OrdinalIgnoreCase)
        || GroupType.Contains("Leader Group", StringComparison.OrdinalIgnoreCase);

    private static string NormalizeLevel(string? value)
    {
        if (string.IsNullOrWhiteSpace(value))
            return string.Empty;

        var normalized = value.Trim();
        return normalized switch
        {
            "District Group" => "District",
            "Regional Group" => "Regional",
            "National Group" => "National",
            "Branch Group" => "Branch",
            _ => normalized
        };
    }

    private string GetCurrentUserUid() =>
        _auth.CurrentUser?.Uid ?? string.Empty;

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

        [FirestoreProperty("leadershipLevel")]
        public string LeadershipLevel { get; set; } = string.Empty;

        [FirestoreProperty("regionId")]
        public int RegionId { get; set; }

        [FirestoreProperty("districtId")]
        public int DistrictId { get; set; }

        [FirestoreProperty("branchId")]
        public int BranchId { get; set; }
    }

    private sealed class FirestoreGroupMemberDocument : IFirestoreObject
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

        [FirestoreProperty("leadershipLevel")]
        public string LeadershipLevel { get; set; } = string.Empty;

        [FirestoreProperty("groupName")]
        public string GroupName { get; set; } = string.Empty;

        [FirestoreProperty("organizationalLevel")]
        public string OrganizationalLevel { get; set; } = string.Empty;

        [FirestoreProperty("regionId")]
        public int RegionId { get; set; }

        [FirestoreProperty("districtId")]
        public int DistrictId { get; set; }

        [FirestoreProperty("branchId")]
        public int BranchId { get; set; }

        [FirestoreProperty("status")]
        public string Status { get; set; } = "active";

        [FirestoreProperty("createdAt")]
        public DateTime CreatedAt { get; set; } = DateTime.UtcNow;
    }

    private sealed class FirestoreGroupChatMessage : IFirestoreObject
    {
        [FirestoreDocumentId]
        public string MessageId { get; set; } = string.Empty;

        [FirestoreProperty("groupId")]
        public string GroupId { get; set; } = string.Empty;

        [FirestoreProperty("senderUid")]
        public string SenderUid { get; set; } = string.Empty;

        [FirestoreProperty("senderName")]
        public string SenderName { get; set; } = string.Empty;

        [FirestoreProperty("text")]
        public string Text { get; set; } = string.Empty;

        [FirestoreProperty("createdAt")]
        public DateTime CreatedAt { get; set; } = DateTime.UtcNow;

        [FirestoreProperty("timestamp")]
        public DateTime Timestamp { get; set; } = DateTime.UtcNow;
    }

    private sealed class GroupInvitationRecord : IFirestoreObject
    {
        [FirestoreDocumentId]
        public string InvitationId { get; set; } = string.Empty;

        [FirestoreProperty("groupId")]
        public string GroupId { get; set; } = string.Empty;

        [FirestoreProperty("groupName")]
        public string GroupName { get; set; } = string.Empty;

        [FirestoreProperty("organizationalLevel")]
        public string OrganizationalLevel { get; set; } = string.Empty;

        [FirestoreProperty("createdByUid")]
        public string CreatedByUid { get; set; } = string.Empty;

        [FirestoreProperty("createdAt")]
        public DateTime CreatedAt { get; set; } = DateTime.UtcNow;

        [FirestoreProperty("status")]
        public string Status { get; set; } = "pending";
    }

    private class GroupChatMessageUi
    {
        public string MessageId { get; set; } = string.Empty;
        public string GroupId { get; set; } = string.Empty;
        public string SenderUid { get; set; } = string.Empty;
        public string SenderName { get; set; } = string.Empty;
        public string Text { get; set; } = string.Empty;
        public DateTime CreatedAt { get; set; } = DateTime.UtcNow;
    }

    private class GroupMemberUi
    {
        public string Uid { get; set; } = string.Empty;
        public string DisplayName { get; set; } = string.Empty;
        public string Role { get; set; } = "Member";
        public string LeadershipLevel { get; set; } = "Member";
        public bool IsCurrentUser { get; set; }
    }
}
