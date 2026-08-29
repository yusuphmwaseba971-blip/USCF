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

                var stack = new VerticalStackLayout
                {
                    Spacing = 6
                };

                stack.Children.Add(new Label
                {
                    Text = group.Name,
                    FontAttributes = FontAttributes.Bold,
                    FontSize = 18,
                    TextColor = Colors.DarkSlateBlue
                });

                stack.Children.Add(new Label
                {
                    Text = BuildGroupMeta(group),
                    FontSize = 12,
                    TextColor = Colors.Gray
                });

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
            StatusLabel.Text = "Groups could not be loaded. Please try again.";
        }
    }

    private async Task<List<FirestoreGroupDocument>> GetGroupsForLevelAsync(string level, CCT_USCF.Models.CurrentUser user)
    {
        var snapshot = await _firestore
            .GetCollection("groups")
            .GetDocumentsAsync<FirestoreGroupDocument>(Source.Default);

        if (snapshot == null)
            return new List<FirestoreGroupDocument>();

        return snapshot.Documents
            .Select(document => document.Data)
            .Where(group => group != null && GroupMatchesLevel(level, group, user))
            .Select(group => group!)
            .OrderBy(group => group.Name)
            .ToList();
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
            return string.Equals(group.Name, "National Prayer Team", StringComparison.OrdinalIgnoreCase) ||
                   string.Equals(group.Name, "National Choir Team", StringComparison.OrdinalIgnoreCase) ||
                   string.Equals(group.Name, "National Uansho Team", StringComparison.OrdinalIgnoreCase) ||
                   string.Equals(group.Name, "National Leader Group", StringComparison.OrdinalIgnoreCase) ||
                   group.Name.Contains("National", StringComparison.OrdinalIgnoreCase);
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

    private static string BuildGroupMeta(FirestoreGroupDocument group)
    {
        var memberCount = group.MemberIds?.Count ?? group.MemberUids?.Count ?? 0;
        if (memberCount <= 0)
            return "community group";

        return $"{memberCount} members • latest activity available";
    }

    private async Task SelectGroupAsync(FirestoreGroupDocument group, CCT_USCF.Models.CurrentUser user)
    {
        if (!IsMemberOfGroup(group, user))
        {
            await DisplayAlert("Membership required",
                $"You are not a member of the {group.Name} group.", "OK");
            return;
        }

        var continuePosting = await DisplayAlert(
            group.Name,
            "You are a member of this group.",
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

        return false;
    }

    private string GetFirebaseUid() =>
        _auth.CurrentUser?.Uid ?? string.Empty;

    private async void OnCancelClicked(object sender, EventArgs e) =>
        await Shell.Current.GoToAsync("..", true);

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
