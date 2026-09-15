using Microsoft.Maui.Controls.Shapes;
using Plugin.Firebase.Auth;
using Plugin.Firebase.Firestore;
using CCT_USCF.Controls;
using CCT_USCF.Services;

namespace CCT_USCF.Pages;

[QueryProperty(nameof(Destination), "destination")]
public partial class ChurchGroupSelectionPage : ContentPage
{
    private readonly IFirebaseAuth _auth;
    private readonly IFirebaseFirestore _firestore;
    private readonly ChurchGroupService _groupService;
    private string _selectedLevel = string.Empty;
    private CCT_USCF.Models.CurrentUser? _loadedUser;
    private string _destination = string.Empty;

    public ChurchGroupSelectionPage()
    {
        InitializeComponent();
        _auth = MauiProgram.Services.GetRequiredService<IFirebaseAuth>();
        _firestore = MauiProgram.Services.GetRequiredService<IFirebaseFirestore>();
        _groupService = MauiProgram.Services.GetRequiredService<ChurchGroupService>();
    }

    public string Destination
    {
        set
        {
            _destination = Uri.UnescapeDataString(value ?? string.Empty);
            DestinationLabel.Text = $"Posting destination: {_destination}";
            ApplyDestinationFilter();
        }
    }

    private void ApplyDestinationFilter()
    {
        var branchOnly =
            _destination.Equals("CSSF Member", StringComparison.OrdinalIgnoreCase) ||
            _destination.Equals("Branch Group", StringComparison.OrdinalIgnoreCase) ||
            _destination.Equals("Branch", StringComparison.OrdinalIgnoreCase) ||
            _destination.Equals("Other Leader", StringComparison.OrdinalIgnoreCase);

        var communityOnly =
            _destination.Equals("Full Community", StringComparison.OrdinalIgnoreCase);

        NationalButton.IsVisible = !branchOnly && !communityOnly;
        RegionalButton.IsVisible = !branchOnly && !communityOnly;
        DistrictButton.IsVisible = !branchOnly && !communityOnly;
        BranchButton.IsVisible = !communityOnly;
    }

    private async void OnNationalClicked(object sender, EventArgs e) =>
        await LoadGroupsAsync("National");

    private async void OnRegionalClicked(object sender, EventArgs e) =>
        await LoadGroupsAsync("Regional");

    private async void OnDistrictClicked(object sender, EventArgs e) =>
        await LoadGroupsAsync("District");

    private async void OnBranchClicked(object sender, EventArgs e) =>
        await LoadGroupsAsync("Branch");

    private async Task LoadGroupsAsync(string level)
    {
        GroupsLayout.Clear();
        AddGroupButton.IsVisible = false;
        StatusLabel.Text = "Loading groups...";
        _selectedLevel = level;

        try
        {
            await FirebaseInit.Initialized;
            var user = MauiProgram.CurrentUser ?? await MauiProgram.CreateAuthServiceForPages().GetCurrentUserAsync();
            if (user == null)
            {
                StatusLabel.Text = "Your authenticated profile is unavailable.";
                return;
            }
            _loadedUser = user;

            AddGroupButton.IsVisible = CanCreateGroups(level, user);
            var groups = await GetGroupsForLevelAsync(level, user);
            if (groups.Count == 0)
            {
                StatusLabel.Text = $"No {level.ToLowerInvariant()} groups yet. Groups created for your {level.ToLowerInvariant()} scope will appear here.";
                return;
            }

            StatusLabel.Text = $"{level} groups";
            foreach (var group in groups)
            {
                var (accent, accentBorder, accentBackground, icon) = GetGroupTheme(group, level);
                var card = new ChurchGroupCard
                {
                    GroupName = group.Name,
                    ScopeLabel = $"{group.Level} • {group.GroupType}",
                    MemberSummary = await BuildGroupMetaAsync(group, user),
                    Icon = icon,
                    Accent = accent,
                    AccentBorder = accentBorder,
                    AccentBackground = accentBackground,
                    Margin = new Thickness(0, 0, 0, 2)
                };
                card.Clicked += async (_, _) => await SelectGroupAsync(group, user);
                GroupsLayout.Add(card);
            }
        }

        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine($"[CHURCH GROUP] Loading {level} groups failed: {ex}");
            StatusLabel.Text = "Unable to connect to the Church Group right now. Please check your internet connection and try again.";
        }
    }

    private static (Color Accent, Color Border, Color Background, string Icon) GetGroupTheme(
        FirestoreGroupDocument group,
        string level)
    {
        var type = group.GroupType ?? string.Empty;
        if (type.Contains("PRAYER", StringComparison.OrdinalIgnoreCase))
            return (Color.FromArgb("#2F7D52"), Color.FromArgb("#BFD8C8"), Color.FromArgb("#EEF7F0"), "✦");
        if (type.Contains("CHOIR", StringComparison.OrdinalIgnoreCase) ||
            type.Contains("MUSIC", StringComparison.OrdinalIgnoreCase))
            return (Color.FromArgb("#8A5A2B"), Color.FromArgb("#E5C9A8"), Color.FromArgb("#FFF7ED"), "♫");
        if (type.Contains("YOUTH", StringComparison.OrdinalIgnoreCase))
            return (Color.FromArgb("#2A7F8E"), Color.FromArgb("#B9DDE0"), Color.FromArgb("#EEF9FA"), "◉");
        if (type.Contains("LEADER", StringComparison.OrdinalIgnoreCase) ||
            type.Contains("PASTOR", StringComparison.OrdinalIgnoreCase))
            return (Color.FromArgb("#51458A"), Color.FromArgb("#D2CBEA"), Color.FromArgb("#F5F3FF"), "★");
        if (type.Contains("WOMEN", StringComparison.OrdinalIgnoreCase))
            return (Color.FromArgb("#A34D78"), Color.FromArgb("#E7C3D5"), Color.FromArgb("#FFF3F8"), "✿");
        if (type.Contains("MEN", StringComparison.OrdinalIgnoreCase))
            return (Color.FromArgb("#315B7D"), Color.FromArgb("#C2D7E7"), Color.FromArgb("#F1F7FC"), "◆");
        if (type.Contains("EVANGEL", StringComparison.OrdinalIgnoreCase) ||
            type.Contains("MISSION", StringComparison.OrdinalIgnoreCase))
            return (Color.FromArgb("#C05A2A"), Color.FromArgb("#F0C7B0"), Color.FromArgb("#FFF5EF"), "➤");
        if (type.Contains("GENERAL", StringComparison.OrdinalIgnoreCase) ||
            type.Contains("MAIN", StringComparison.OrdinalIgnoreCase))
            return (Color.FromArgb("#315E50"), Color.FromArgb("#C6DDD5"), Color.FromArgb("#F0F8F5"), "✚");

        return level switch
        {
            "National" => (Color.FromArgb("#2A7F8E"), Color.FromArgb("#B9DDE0"), Color.FromArgb("#EEF9FA"), "◎"),
            "Regional" => (Color.FromArgb("#6657A6"), Color.FromArgb("#D2CBEA"), Color.FromArgb("#F5F3FF"), "⌖"),
            "District" => (Color.FromArgb("#B7791F"), Color.FromArgb("#EAD5AE"), Color.FromArgb("#FFFBEB"), "⌂"),
            _ => (Color.FromArgb("#2F7D52"), Color.FromArgb("#BFD8C8"), Color.FromArgb("#EEF7F0"), "✝")
        };
    }

    private bool CanCreateGroups(string level, CCT_USCF.Models.CurrentUser user)
        {
            var values = new[] { user.Role, user.LeadershipLevel, user.LeadershipDuty }
                .Where(value => !string.IsNullOrWhiteSpace(value))
                .Select(value => value!.ToLowerInvariant())
                .ToList();
            var isLeader = values.Any(value =>
                value.Contains("leader") ||
                value.Contains("admin") ||
                value.Contains("chairman") ||
                value.Contains("pastor") ||
                value.Contains("priest") ||
                value.Contains("coordinator"));
            if (!isLeader)
                return false;

            return level switch
            {
                "National" => true,
                "Regional" => user.RegionId.HasValue,
                "District" => user.DistrictId.HasValue,
                "Branch" => user.BranchId.HasValue,
                _ => false
            };
        }

        private async void OnAddGroupClicked(object sender, EventArgs e)
        {
            if (_loadedUser == null || string.IsNullOrWhiteSpace(_selectedLevel))
                return;

            var name = await DisplayPromptAsync("Create New Group", "Group name");
            if (string.IsNullOrWhiteSpace(name))
                return;
            var description = await DisplayPromptAsync("Create New Group", "Description (optional)");
            var type = await DisplayActionSheet(
                "Group type",
                "Cancel",
                null,
                "Choir",
                "Prayer Team",
                "Youth",
                "Media",
                "Bible Study",
                "Women",
                "Men",
                "Evangelism",
                "Leaders",
                "Custom");
            if (string.IsNullOrWhiteSpace(type) || type == "Cancel")
                return;

            var confirmed = await DisplayAlert(
                "Create group",
                $"{name.Trim()}\n\nScope: {_selectedLevel}\n\nThe group will be created under your verified {_selectedLevel.ToLowerInvariant()} scope.",
                "Create",
                "Cancel");
            if (!confirmed)
                return;

            AddGroupButton.IsEnabled = false;
            try
            {
                var group = await _groupService.CreateGroupAsync(
                    name.Trim(),
                    description?.Trim() ?? string.Empty,
                    type.ToUpperInvariant(),
                    _selectedLevel.ToUpperInvariant());

                await DisplayAlert("Group created", "Your group is ready.", "Open");
                var created = new FirestoreGroupDocument
                {
                    DocumentId = group.GroupId,
                    Name = group.GroupName,
                    Level = group.ScopeType,
                    GroupType = group.GroupType,
                    CanManage = true,
                    RegionId = group.RegionId ?? 0,
                    DistrictId = group.DistrictId ?? 0,
                    BranchId = group.BranchId,
                    IsCustom = true,
                    MemberUids = new List<string> { GetFirebaseUid() }
                };
                // Refresh the selected scope from the backend before opening the
                // group so persistence and filtering use the same source of truth.
                await LoadGroupsAsync(_selectedLevel);
                await SelectGroupAsync(created, _loadedUser);
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine($"[CHURCH GROUP] Create failed: {ex}");
                await DisplayAlert("Unable to create group", ex.Message, "OK");
            }
            finally
            {
                AddGroupButton.IsEnabled = true;
            }
        }

    private async Task<List<FirestoreGroupDocument>> GetGroupsForLevelAsync(string level, CCT_USCF.Models.CurrentUser user)
    {
        IReadOnlyList<CCT_USCF.Models.ChurchGroup> registeredGroups;

        try
        {
            registeredGroups = await _groupService.GetGroupsAsync(level.ToUpperInvariant());
        }
        catch (HttpRequestException ex)
        {
            registeredGroups = Array.Empty<CCT_USCF.Models.ChurchGroup>();
            System.Diagnostics.Debug.WriteLine(
                $"[CHURCH GROUP] {level} registry unavailable; no offline groups will be synthesized. {ex}");
        }
        catch (InvalidOperationException ex) when (
            ex.Message.StartsWith("Group request failed", StringComparison.Ordinal))
        {
            registeredGroups = Array.Empty<CCT_USCF.Models.ChurchGroup>();
            System.Diagnostics.Debug.WriteLine(
                $"[CHURCH GROUP] {level} registry returned an error; no offline groups will be synthesized. {ex}");
        }

        var groups = registeredGroups
            .Where(group => group.IsActive)
            .Where(group => GroupMatchesScope(level, group, user))
            .Select(group => new FirestoreGroupDocument
            {
                DocumentId = group.GroupId,
                Name = group.GroupName,
                Level = group.ScopeType,
                RegionId = group.RegionId ?? 0,
                DistrictId = group.DistrictId ?? 0,
                BranchId = group.BranchId,
                GroupType = group.GroupType,
                CanManage = group.CanManage,
                IsCustom = string.Equals(group.GroupType, "CUSTOM", StringComparison.OrdinalIgnoreCase),
                MemberUids = new List<string> { GetFirebaseUid() }
            })
            .ToList();

        return groups.OrderBy(group => group.IsCustom ? 1 : 0).ThenBy(group => group.Name).ToList();
    }

    private static bool GroupMatchesScope(string level, CCT_USCF.Models.ChurchGroup group, CCT_USCF.Models.CurrentUser user)
    {
        if (!string.Equals(group.ScopeType, level, StringComparison.OrdinalIgnoreCase))
            return false;

        return level.ToUpperInvariant() switch
        {
            "NATIONAL" => true,
            "REGIONAL" => user.RegionId.HasValue && group.RegionId == user.RegionId,
            "DISTRICT" => user.DistrictId.HasValue && group.DistrictId == user.DistrictId,
            "BRANCH" => user.BranchId.HasValue && group.BranchId == user.BranchId,
            _ => false
        };
    }

    private async Task<string> BuildGroupMetaAsync(FirestoreGroupDocument group, CCT_USCF.Models.CurrentUser user)
    {
        var memberNames = await GetMembersForGroupAsync(group, user);
        if (memberNames.Count > 0)
            return $"{memberNames.Count} real members • {string.Join(", ", memberNames.Take(2))}{(memberNames.Count > 2 ? ", ..." : string.Empty)}";

        return "community group • no real members assigned yet";
    }

    private async Task<List<string>> GetMembersForGroupAsync(FirestoreGroupDocument group, CCT_USCF.Models.CurrentUser user)
    {
        try
        {
            var snapshot = await _firestore
                .GetCollection("users")
                .GetDocumentsAsync<FirestoreUserProfileDocument>(Source.Default);

            if (snapshot == null)
                return new List<string>();

            var members = new HashSet<string>(StringComparer.OrdinalIgnoreCase);

            foreach (var document in snapshot.Documents)
            {
                var profile = document.Data;
                if (profile == null)
                   continue;

                if (MatchesGroupMembership(profile, group, user))
                {
                   var name = !string.IsNullOrWhiteSpace(profile.FullName)
                       ? profile.FullName
                       : profile.Username;

                   if (!string.IsNullOrWhiteSpace(name))
                       members.Add(name);
                }
            }

            return members
                .OrderBy(name => name, StringComparer.OrdinalIgnoreCase)
                .ToList();
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine($"[CHURCH GROUP] Loading members failed: {ex}");
            return new List<string>();
        }
    }

    private static bool MatchesGroupMembership(FirestoreUserProfileDocument profile, FirestoreGroupDocument group, CCT_USCF.Models.CurrentUser user)
    {
        if (group.MemberIds != null && group.MemberIds.Contains(profile.DocumentId, StringComparer.OrdinalIgnoreCase))
            return true;

        if (group.MemberUids != null && group.MemberUids.Contains(profile.DocumentId, StringComparer.OrdinalIgnoreCase))
            return true;

        if (string.Equals(group.Level, "Branch", StringComparison.OrdinalIgnoreCase) &&
            profile.BranchId > 0 &&
            user.BranchId.HasValue &&
            profile.BranchId == user.BranchId.Value)
        {
            return true;
        }

        if (string.Equals(group.Level, "Regional", StringComparison.OrdinalIgnoreCase) &&
            profile.RegionId > 0 &&
            user.RegionId.HasValue &&
            profile.RegionId == user.RegionId.Value)
        {
            return true;
        }

        if (string.Equals(group.Level, "District", StringComparison.OrdinalIgnoreCase) &&
            profile.DistrictId > 0 &&
            user.DistrictId.HasValue &&
            profile.DistrictId == user.DistrictId.Value)
        {
            return true;
        }

        if (group.Name.Contains("Leader Group", StringComparison.OrdinalIgnoreCase) &&
            !string.IsNullOrWhiteSpace(profile.LeadershipLevel) &&
            string.Equals(profile.LeadershipLevel, group.Level, StringComparison.OrdinalIgnoreCase))
        {
            return true;
        }

        return false;
    }

    private async Task SelectGroupAsync(FirestoreGroupDocument group, CCT_USCF.Models.CurrentUser user)
    {
        var isMember = IsMemberOfGroup(group, user);
        if (!isMember)
        {
            var memberNames = await GetMembersForGroupAsync(group, user);
            var summary = memberNames.Count > 0
                ? $"Currently visible members: {string.Join(", ", memberNames.Take(6))}."
                : "No members are currently assigned to this group in Firebase.";

            await DisplayAlert("Membership required",
                $"You are not a member of the {group.Name} group.\n\n{summary}\n\nPlease communicate with your leader or Chairman.", "OK");
            return;
        }

        if (!group.IsCustom &&
            (string.Equals(group.Level, "Branch", StringComparison.OrdinalIgnoreCase) ||
            group.Name.Contains("Branch", StringComparison.OrdinalIgnoreCase))
           )
        {
            var branchId = group.BranchId ?? user.BranchId ?? 0;
            if (branchId <= 0)
            {
                await DisplayAlert("Branch unavailable", "Your branch assignment could not be verified.", "OK");
                return;
            }
            var branchName = !string.IsNullOrWhiteSpace(group.Name) ? group.Name : (user.Branch ?? "Branch Group");
            await Shell.Current.GoToAsync($"{nameof(BranchChatPage)}?branchId={branchId}&branchName={Uri.EscapeDataString(branchName)}");
            return;
        }

        var groupId = !string.IsNullOrWhiteSpace(group.DocumentId)
            ? group.DocumentId
            : group.Name.Replace(" ", "-").Replace("/", "-").Trim('-');

        await Shell.Current.GoToAsync(
            $"{nameof(GroupChatPage)}?groupId={Uri.EscapeDataString(groupId)}&groupName={Uri.EscapeDataString(group.Name)}&groupType={Uri.EscapeDataString(group.GroupType)}&organizationalLevel={Uri.EscapeDataString(group.Level)}&regionId={group.RegionId}&districtId={group.DistrictId}&branchId={group.BranchId ?? user.BranchId ?? 0}&canDelete={group.CanManage}");
    }

    private bool IsMemberOfGroup(FirestoreGroupDocument group, CCT_USCF.Models.CurrentUser user)
    {
        var firebaseUid = GetFirebaseUid();

        var isInMemberIds = group.MemberIds?.Contains(user.Id.ToString(), StringComparer.OrdinalIgnoreCase) == true;
        var isInMemberUids = group.MemberUids?.Contains(firebaseUid, StringComparer.OrdinalIgnoreCase) == true;

        if (isInMemberIds || isInMemberUids)
            return true;

        if (string.Equals(group.Level, "Branch", StringComparison.OrdinalIgnoreCase) &&
            user.BranchId.HasValue &&
            group.BranchId.HasValue &&
            user.BranchId.Value == group.BranchId.Value)
        {
            return true;
        }

        if (string.Equals(group.Level, "Regional", StringComparison.OrdinalIgnoreCase) &&
            user.RegionId.HasValue &&
            group.RegionId == user.RegionId.Value)
        {
            return true;
        }

        if (string.Equals(group.Level, "District", StringComparison.OrdinalIgnoreCase) &&
            user.DistrictId.HasValue &&
            group.DistrictId == user.DistrictId.Value)
        {
            return true;
        }

        if (group.Name.Contains("Leader Group", StringComparison.OrdinalIgnoreCase) &&
            !string.IsNullOrWhiteSpace(user.LeadershipLevel) &&
            string.Equals(user.LeadershipLevel, group.Level, StringComparison.OrdinalIgnoreCase))
        {
            return true;
        }

        return false;
    }

    private string GetFirebaseUid() =>
        _auth.CurrentUser?.Uid ?? string.Empty;

    private async void OnCancelClicked(object sender, EventArgs e) =>
        await Shell.Current.GoToAsync("..", true);

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

        [FirestoreProperty("regionId")]
        public int RegionId { get; set; }

        [FirestoreProperty("districtId")]
        public int DistrictId { get; set; }

        [FirestoreProperty("leadershipLevel")]
        public string LeadershipLevel { get; set; } = string.Empty;
    }

    private sealed class FirestoreGroupDocument : IFirestoreObject
    {
        [FirestoreDocumentId]
        public string DocumentId { get; set; } = string.Empty;

        [FirestoreProperty("name")]
        public string Name { get; set; } = string.Empty;

        [FirestoreProperty("level")]
        public string Level { get; set; } = string.Empty;

        [FirestoreProperty("regionId")]
        public int RegionId { get; set; }

        [FirestoreProperty("districtId")]
        public int DistrictId { get; set; }

        [FirestoreProperty("branchId")]
        public int? BranchId { get; set; }

        [FirestoreProperty("memberIds")]
        public List<string>? MemberIds { get; set; }

        [FirestoreProperty("memberUids")]
        public List<string>? MemberUids { get; set; }

        [FirestoreProperty("groupType")]
        public string GroupType { get; set; } = string.Empty;

        public bool CanManage { get; set; }

        [FirestoreProperty("isCustom")]
        public bool IsCustom { get; set; }
    }
}
