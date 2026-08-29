using Microsoft.Maui.Controls.Shapes;
using Plugin.Firebase.Auth;
using Plugin.Firebase.Firestore;
using CCT_USCF.Services;

namespace CCT_USCF.Pages;

[QueryProperty(nameof(BranchId), "branchId")]
[QueryProperty(nameof(BranchName), "branchName")]
public partial class BranchChatPage : ContentPage
{
    private readonly IFirebaseAuth _auth;
    private readonly IFirebaseFirestore _firestore;
    private readonly List<FirestoreMessageDocument> _messages = new();
    private bool _isLoading;

    public BranchChatPage()
    {
        InitializeComponent();
        _auth = MauiProgram.Services.GetRequiredService<IFirebaseAuth>();
        _firestore = MauiProgram.Services.GetRequiredService<IFirebaseFirestore>();
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

        if (_branchId <= 0)
        {
            var currentUser = MauiProgram.CurrentUser ?? await MauiProgram.CreateAuthServiceForPages().GetCurrentUserAsync();
            if (currentUser?.BranchId is int branchId && branchId > 0)
            {
                BranchId = branchId;
                BranchName = currentUser.Branch ?? "Branch Group";
            }
        }

        await LoadBranchGroupAsync();
        Device.StartTimer(TimeSpan.FromSeconds(4), () =>
        {
            _ = RefreshMessagesAsync();
            return true;
        });
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

            var branchMembers = await LoadBranchMembersAsync();
            if (branchMembers.Count == 0)
            {
                BranchStatusLabel.Text = "No branch members found in Firebase.";
            }
            else
            {
                BranchStatusLabel.Text = $"{branchMembers.Count} members in this Branch";
            }

            MembersLabel.Text = branchMembers.Count > 0
                ? $"Members: {string.Join(", ", branchMembers.Take(12))}"
                : "Members: none";

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
        if (_isLoading)
            return;

        _isLoading = true;

        try
        {
            if (_branchId <= 0)
                return;

            var messages = await LoadMessagesAsync();
            _messages.Clear();
            foreach (var message in messages)
                _messages.Add(message);

            RenderMessages();
        }
        finally
        {
            _isLoading = false;
        }
    }

    private async Task<List<FirestoreMessageDocument>> LoadMessagesAsync()
    {
        try
        {
            var snapshot = await _firestore
                .GetCollection("messages")
                .GetDocumentsAsync<FirestoreMessageDocument>(Source.Default);

            if (snapshot == null)
                return new List<FirestoreMessageDocument>();

            return snapshot.Documents
                .Select(document => document.Data)
                .Where(doc => doc != null && doc.BranchId == _branchId)
                .Select(doc => doc!)
                .OrderBy(doc => doc.Timestamp)
                .ToList();
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine($"[BRANCH CHAT] Load messages failed: {ex}");
            return new List<FirestoreMessageDocument>();
        }
    }

    private async Task<List<string>> LoadBranchMembersAsync()
    {
        try
        {
            var snapshot = await _firestore
                .GetCollection("users")
                .GetDocumentsAsync<FirestoreUserProfileDocument>(Source.Default);

            if (snapshot == null)
                return new List<string>();

            return snapshot.Documents
                .Select(document => document.Data)
                .Where(profile => profile != null && profile.BranchId == _branchId)
                .Select(profile => profile!)
                .Select(profile => !string.IsNullOrWhiteSpace(profile.FullName) ? profile.FullName : profile.Username)
                .Where(name => !string.IsNullOrWhiteSpace(name))
                .OrderBy(name => name, StringComparer.OrdinalIgnoreCase)
                .ToList();
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine($"[BRANCH CHAT] Load members failed: {ex}");
            return new List<string>();
        }
    }

    private void RenderMessages()
    {
        MessagesLayout.Children.Clear();

        if (_messages.Count == 0)
        {
            MessagesLayout.Children.Add(new Label
            {
                Text = "No messages yet.\n\nStart the conversation with your Branch community.",
                TextColor = Colors.Gray,
                FontSize = 15,
                Margin = new Thickness(8, 16)
            });
            return;
        }

        foreach (var message in _messages)
        {
            var container = new Border
            {
                Padding = new Thickness(12, 10),
                BackgroundColor = message.SenderId == (_auth.CurrentUser?.Uid ?? string.Empty) ? Color.FromArgb("#DBEAFE") : Colors.White,
                StrokeThickness = 0,
                StrokeShape = new RoundRectangle { CornerRadius = 12 },
                Margin = new Thickness(0, 0, 0, 8)
            };

            var stack = new VerticalStackLayout
            {
                Spacing = 4,
            };

            stack.Children.Add(new Label
            {
                Text = message.SenderName,
                FontAttributes = FontAttributes.Bold,
                FontSize = 12,
                TextColor = Colors.DarkSlateBlue
            });

            stack.Children.Add(new Label
            {
                Text = message.Text,
                FontSize = 15,
                TextColor = Colors.Black
            });

            stack.Children.Add(new Label
            {
                Text = message.Timestamp.ToLocalTime().ToString("HH:mm"),
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
            return;

        try
        {
            await FirebaseInit.Initialized;

            var currentUser = MauiProgram.CurrentUser ?? await MauiProgram.CreateAuthServiceForPages().GetCurrentUserAsync();
            if (currentUser == null)
            {
                await DisplayAlert("Not authenticated", "Please sign in to send a message.", "OK");
                return;
            }

            if (currentUser.BranchId != _branchId)
            {
                await DisplayAlert("Access denied", "You can only send messages in your own Branch Group.", "OK");
                return;
            }

            var message = new FirestoreMessageDocument
            {
                MessageId = Guid.NewGuid().ToString("N"),
                SenderId = _auth.CurrentUser?.Uid ?? currentUser.Id.ToString(),
                SenderName = !string.IsNullOrWhiteSpace(currentUser.FullName) ? currentUser.FullName : currentUser.Username,
                Text = text,
                Timestamp = DateTime.UtcNow,
                GroupId = $"branch:{_branchId}",
                BranchId = _branchId
            };

            await _firestore
                .GetCollection("messages")
                .GetDocument(message.MessageId)
                .SetDataAsync(message);

            MessageEntry.Text = string.Empty;
            await RefreshMessagesAsync();
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine($"[BRANCH CHAT] Send message failed: {ex}");
            await DisplayAlert("Connection error", "Unable to send the message right now. Please try again.", "OK");
        }
    }

    private sealed class FirestoreUserProfileDocument : IFirestoreObject
    {
        [FirestoreDocumentId]
        public string DocumentId { get; set; } = string.Empty;

        [FirestoreProperty("fullName")]
        public string FullName { get; set; } = string.Empty;

        [FirestoreProperty("username")]
        public string Username { get; set; } = string.Empty;

        [FirestoreProperty("branchId")]
        public int BranchId { get; set; }
    }

    private sealed class FirestoreMessageDocument : IFirestoreObject
    {
        [FirestoreDocumentId]
        public string MessageId { get; set; } = string.Empty;

        [FirestoreProperty("messageId")]
        public string? StoredMessageId { get; set; }

        [FirestoreProperty("senderId")]
        public string SenderId { get; set; } = string.Empty;

        [FirestoreProperty("senderName")]
        public string SenderName { get; set; } = string.Empty;

        [FirestoreProperty("text")]
        public string Text { get; set; } = string.Empty;

        [FirestoreProperty("timestamp")]
        public DateTime Timestamp { get; set; } = DateTime.UtcNow;

        [FirestoreProperty("groupId")]
        public string GroupId { get; set; } = string.Empty;

        [FirestoreProperty("branchId")]
        public int BranchId { get; set; }
    }
}
