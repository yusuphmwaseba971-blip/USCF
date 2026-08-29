using Microsoft.Maui.Controls.Shapes;
using Plugin.Firebase.Auth;
using Plugin.Firebase.Firestore;
using CCT_USCF.Services;

namespace CCT_USCF.Pages;

[QueryProperty(nameof(Destination), "destination")]
public partial class ChurchGroupSelectionPage : ContentPage
{
    private readonly IFirebaseAuth _auth;
    private readonly IFirebaseFirestore _firestore;
    private string _destination = string.Empty;

    public ChurchGroupSelectionPage()
    {
        InitializeComponent();
        _auth = MauiProgram.Services.GetRequiredService<IFirebaseAuth>();
        _firestore = MauiProgram.Services.GetRequiredService<IFirebaseFirestore>();
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
        StatusLabel.Text = "Loading groups...";

        try
        {
            await FirebaseInit.Initialized;
            var user = MauiProgram.CurrentUser ?? await MauiProgram.CreateAuthServiceForPages().GetCurrentUserAsync();
            if (user == null)
            {
                StatusLabel.Text = "Your authenticated profile is unavailable.";
                return;
            }

            var groups = await GetGroupsForLevelAsync(level, user);
            if (groups.Count == 0)
            {
                StatusLabel.Text = $"No {level.ToLowerInvariant()} groups are available for your profile.";
                return;
            }

            StatusLabel.Text = $"{level} groups";
            foreach (var group in groups)
            {
                var panel = new Border
                {
                    Padding = new Thickness(14),
                    Margin = new Thickness(0, 0, 0, 8),
                    BackgroundColor = Colors.White,
                    StrokeThickness = 0,
                    StrokeShape = new RoundRectangle { CornerRadius = 12 }
                };

                var stack = new VerticalStackLayout { Spacing = 6 };
                stack.Children.Add(new Label { Text = group.Name, FontAttributes = FontAttributes.Bold, FontSize = 18, TextColor = Colors.DarkSlateBlue });
                stack.Children.Add(new Label { Text = await BuildGroupMetaAsync(group, user), FontSize = 12, TextColor = Colors.Gray });
                panel.Content = stack;

                var tap = new TapGestureRecognizer();
                tap.Tapped += async (_, _) => await SelectGroupAsync(group, user);
                panel.GestureRecognizers.Add(tap);

                GroupsLayout.Add(panel);
            }
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine($"[CHURCH GROUP] Loading {level} groups failed: {ex}");
            StatusLabel.Text = "Unable to connect to the Church Group right now. Please check your internet connection and try again.";
        }
    }

    private async Task<List<FirestoreGroupDocument>> GetGroupsForLevelAsync(string level, CCT_USCF.Models.CurrentUser user)
    {
        try
        {
            var snapshot = await _firestore
                .GetCollection("groups")
                .GetDocumentsAsync<FirestoreGroupDocument>(Source.Default);

            if (snapshot == null)
                return BuildFallbackGroups(level, user);

            var dbGroups = snapshot.Documents
                .Select(document => document.Data)
                .Where(group => group != null && GroupMatchesLevel(level, group, user))
                .Select(group => group!)
                .OrderBy(group => group.Name)
                .ToList();

            return dbGroups.Count > 0
                ? dbGroups
                : BuildFallbackGroups(level, user);
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine($"[CHURCH GROUP] Firebase groups query failed: {ex}");
            return BuildFallbackGroups(level, user);
        }
    }

    private static List<FirestoreGroupDocument> BuildFallbackGroups(string level, CCT_USCF.Models.CurrentUser user)
    {
        var groups = new List<FirestoreGroupDocument>();

        switch (level.Trim())
        {
            case "National":
                groups.Add(new FirestoreGroupDocument { Name = "National Prayer Team", Level = "National" });
                groups.Add(new FirestoreGroupDocument { Name = "National Choir Team", Level = "National" });
                groups.Add(new FirestoreGroupDocument { Name = "National Uansho Team", Level = "National" });
                groups.Add(new FirestoreGroupDocument { Name = "National Leader Group", Level = "National" });
                break;

            case "Regional":
                groups.Add(new FirestoreGroupDocument { Name = "Regional Prayer Team", Level = "Regional", RegionId = user.RegionId ?? 0 });
                groups.Add(new FirestoreGroupDocument { Name = "Regional Choir Team", Level = "Regional", RegionId = user.RegionId ?? 0 });
                groups.Add(new FirestoreGroupDocument { Name = "Regional Uansho Team", Level = "Regional", RegionId = user.RegionId ?? 0 });
                groups.Add(new FirestoreGroupDocument { Name = "Regional Leader Group", Level = "Regional", RegionId = user.RegionId ?? 0 });
                break;

            case "District":
                groups.Add(new FirestoreGroupDocument { Name = "District Prayer Team", Level = "District", DistrictId = user.DistrictId ?? 0 });
                groups.Add(new FirestoreGroupDocument { Name = "District Choir Team", Level = "District", DistrictId = user.DistrictId ?? 0 });
                groups.Add(new FirestoreGroupDocument { Name = "District Uansho Team", Level = "District", DistrictId = user.DistrictId ?? 0 });
                groups.Add(new FirestoreGroupDocument { Name = "District Leader Group", Level = "District", DistrictId = user.DistrictId ?? 0 });
                break;

            case "Branch":
                groups.Add(new FirestoreGroupDocument { Name = user.Branch ?? "Branch Group", Level = "Branch", BranchId = user.BranchId ?? 0 });
                break;
        }

        return groups;
    }

    private static bool GroupMatchesLevel(string level, FirestoreGroupDocument group, CCT_USCF.Models.CurrentUser user)
    {
        var normalizedLevel = level.Trim();
        var groupLevel = group.Level ?? string.Empty;

        if (string.Equals(groupLevel, normalizedLevel, StringComparison.OrdinalIgnoreCase) ||
            string.Equals(groupLevel, $"{normalizedLevel} Group", StringComparison.OrdinalIgnoreCase) ||
            string.Equals(groupLevel, $"{normalizedLevel} Groups", StringComparison.OrdinalIgnoreCase))
        {
            return true;
        }

        if (string.Equals(normalizedLevel, "National", StringComparison.OrdinalIgnoreCase))
        {
            return group.Name.Contains("National", StringComparison.OrdinalIgnoreCase) ||
                   string.Equals(group.Name, "National Prayer Team", StringComparison.OrdinalIgnoreCase) ||
                   string.Equals(group.Name, "National Choir Team", StringComparison.OrdinalIgnoreCase) ||
                   string.Equals(group.Name, "National Uansho Team", StringComparison.OrdinalIgnoreCase) ||
                   string.Equals(group.Name, "National Leader Group", StringComparison.OrdinalIgnoreCase);
        }

        if (string.Equals(normalizedLevel, "Regional", StringComparison.OrdinalIgnoreCase))
        {
            return (user.RegionId.HasValue && group.RegionId == user.RegionId.Value) ||
                   group.Name.Contains("Regional", StringComparison.OrdinalIgnoreCase) ||
                   group.Name.Contains("Region", StringComparison.OrdinalIgnoreCase);
        }

        if (string.Equals(normalizedLevel, "District", StringComparison.OrdinalIgnoreCase))
        {
            return (user.DistrictId.HasValue && group.DistrictId == user.DistrictId.Value) ||
                   group.Name.Contains("District", StringComparison.OrdinalIgnoreCase);
        }

        if (string.Equals(normalizedLevel, "Branch", StringComparison.OrdinalIgnoreCase))
        {
            return (user.BranchId.HasValue && group.BranchId.HasValue && group.BranchId.Value == user.BranchId.Value) ||
                   group.Name.Contains("Branch", StringComparison.OrdinalIgnoreCase) ||
                   group.Level.Contains("Branch", StringComparison.OrdinalIgnoreCase);
        }

        return false;
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

        if (string.Equals(group.Level, "Branch", StringComparison.OrdinalIgnoreCase) ||
            group.Name.Contains("Branch", StringComparison.OrdinalIgnoreCase))
        {
            var branchId = group.BranchId ?? user.BranchId ?? 0;
            var branchName = !string.IsNullOrWhiteSpace(group.Name) ? group.Name : (user.Branch ?? "Branch Group");
            await Shell.Current.GoToAsync($"{nameof(BranchChatPage)}?branchId={branchId}&branchName={Uri.EscapeDataString(branchName)}");
            return;
        }

        var memberNamesDisplay = await GetMembersForGroupAsync(group, user);
        var memberSummary = memberNamesDisplay.Count > 0
            ? string.Join(", ", memberNamesDisplay.Take(8))
            : "No real members are assigned yet.";

        var continuePosting = await DisplayAlert(
            group.Name,
            $"You are a member of this group.\n\nMembers: {memberSummary}",
            "Continue",
            "Cancel");

        if (!continuePosting)
            return;

        await Shell.Current.GoToAsync(
            $"{nameof(CreateHolyWordPage)}?destination={Uri.EscapeDataString(_destination)}&group={Uri.EscapeDataString(group.Name)}");
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
    }
}
