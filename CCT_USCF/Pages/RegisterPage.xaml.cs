
using AuthLocation = CCT_USCF.Services.AuthService.LocationItem;
using CCT_USCF.Services;

namespace CCT_USCF.Pages;

public partial class RegisterPage : ContentPage
{
    private readonly Services.AuthService _authService;

    private List<AuthLocation> _regions = new();
    private List<AuthLocation> _districts = new();
    private List<AuthLocation> _branches = new();

    private bool _loadingRegions;
    private bool _loadingDistricts;
    private bool _loadingBranches;

    public RegisterPage()
    {
        InitializeComponent();

        _authService =
            LoginRegisterHelpers.GetAuthService();

        // =====================================================
        // DEFAULT ROLE
        // =====================================================

        RolePicker.SelectedIndex = 0;

        // =====================================================
        // LOCATION EVENTS
        // =====================================================
        //
        // These are NOT declared in XAML currently, so we
        // subscribe here.
        //
        // Do not add these same events to XAML unless you remove
        // these subscriptions.
        // =====================================================

        RegionPicker.SelectedIndexChanged +=
            OnRegionChanged;

        DistrictPicker.SelectedIndexChanged +=
            OnDistrictChanged;

        // =====================================================
        // INITIAL UI
        // =====================================================

        UpdateRoleUI();

        // =====================================================
        // LOAD TANZANIA REGIONS FROM FIRESTORE
        // =====================================================

        _ = LoadRegionsAsync();
    }

    // =========================================================
    // ROLE
    // =========================================================

    private void OnRoleChanged(
        object sender,
        EventArgs e)
    {
        UpdateRoleUI();
    }

    private bool RequiresLocationSelection()
    {
        if (RolePicker.SelectedIndex == 0)
            return true;

        if (LevelPicker.SelectedIndex < 0)
            return true;

        return LevelPicker.SelectedIndex != 0;
    }

    private void UpdateRoleUI()
    {
        var roleIndex =
            RolePicker.SelectedIndex;

        var roleName = RolePicker.SelectedItem as string ?? "Unknown";

        System.Diagnostics.Debug.WriteLine(
            $"[REGISTER] UpdateRoleUI: roleIndex={roleIndex}, role={roleName}");

        // -----------------------------------------------------
        // MEMBER
        // -----------------------------------------------------

        if (roleIndex == 0)
        {
            System.Diagnostics.Debug.WriteLine(
                $"[REGISTER] Member selected - setting LocationSection.IsVisible=true");

            LeadershipSection.IsVisible = false;
            DutySection.IsVisible = false;

            LevelPicker.SelectedIndex = -1;
            DutyPicker.SelectedIndex = -1;

            LocationSection.IsVisible = true;
            RegionPicker.IsVisible = true;
            DistrictPicker.IsVisible = RegionPicker.SelectedItem != null;
            BranchPicker.IsVisible = DistrictPicker.SelectedItem != null;

            System.Diagnostics.Debug.WriteLine(
                $"[REGISTER] Member: LocationSection.IsVisible={LocationSection.IsVisible}, RegionPicker.IsVisible={RegionPicker.IsVisible}, DistrictPicker.IsVisible={DistrictPicker.IsVisible}, BranchPicker.IsVisible={BranchPicker.IsVisible}");

            return;
        }

        // -----------------------------------------------------
        // LEADER / PASTOR
        // -----------------------------------------------------

        System.Diagnostics.Debug.WriteLine(
            $"[REGISTER] Leader or Pastor selected - updating leadership/location visibility");

        LeadershipSection.IsVisible = true;
        UpdateLocationFields();

        System.Diagnostics.Debug.WriteLine(
            $"[REGISTER] After UpdateLocationFields: LocationSection.IsVisible={LocationSection.IsVisible}, RegionPicker.IsVisible={RegionPicker.IsVisible}, DistrictPicker.IsVisible={DistrictPicker.IsVisible}, BranchPicker.IsVisible={BranchPicker.IsVisible}");
    }

    // =========================================================
    // LEADERSHIP LEVEL
    // =========================================================

    private void OnLevelChanged(
        object sender,
        EventArgs e)
    {
        UpdateLocationFields();
    }

    private void UpdateLocationFields()
    {
        var roleIndex = RolePicker.SelectedIndex;
        var levelIndex = LevelPicker.SelectedIndex;
        var roleName = RolePicker.SelectedItem as string ?? "Unknown";
        var levelName = LevelPicker.SelectedItem as string ?? "None";

        System.Diagnostics.Debug.WriteLine(
            $"[REGISTER] UpdateLocationFields: roleIndex={roleIndex}, role={roleName}, levelIndex={levelIndex}, level={levelName}");

        if (RolePicker.SelectedIndex == 0)
        {
            LocationSection.IsVisible = true;
            System.Diagnostics.Debug.WriteLine(
                $"[REGISTER] Member role detected - keeping location section visible");
            return;
        }

        var requiresLocation = RequiresLocationSelection();
        if (!requiresLocation)
        {
            System.Diagnostics.Debug.WriteLine(
                $"[REGISTER] National leadership level selected - hiding the complete location section");

            LocationSection.IsVisible = false;
            RegionPicker.IsVisible = false;
            DistrictPicker.IsVisible = false;
            BranchPicker.IsVisible = false;
            return;
        }

        LocationSection.IsVisible = true;

        var hasLevelSelected = LevelPicker.SelectedIndex >= 0;
        DutySection.IsVisible = hasLevelSelected;
        if (!hasLevelSelected)
        {
            DutyPicker.SelectedIndex = -1;
        }

        System.Diagnostics.Debug.WriteLine(
            $"[REGISTER] LocationSection.IsVisible={LocationSection.IsVisible}, hasLevelSelected={hasLevelSelected}");

        // Every scoped account uses the same authoritative hierarchy. Leadership
        // metadata changes authorization, not how locations are selected.
        RegionPicker.IsVisible = true;
        DistrictPicker.IsVisible = RegionPicker.SelectedItem != null;
        BranchPicker.IsVisible = DistrictPicker.SelectedItem != null;

        System.Diagnostics.Debug.WriteLine(
            $"[REGISTER] UpdateLocationFields end: LocationSection.IsVisible={LocationSection.IsVisible}, RegionPicker.IsVisible={RegionPicker.IsVisible}, DistrictPicker.IsVisible={DistrictPicker.IsVisible}, BranchPicker.IsVisible={BranchPicker.IsVisible}");
    }

    private async void OnDutyChanged(
        object sender,
        EventArgs e)
    {
        if (RolePicker.SelectedIndex == 0)
            return;

        if (DutyPicker.SelectedItem is not string duty)
            return;

        await ShowLeadershipDutyPopupAsync(duty);
    }

    private static async Task ShowLeadershipDutyPopupAsync(string duty)
    {
        if (string.IsNullOrWhiteSpace(duty))
            return;

        if (Application.Current?.MainPage is not Page page)
            return;

        if (string.Equals(duty, "Chairman", StringComparison.OrdinalIgnoreCase))
        {
            await page.DisplayAlert(
                "Chairman Responsibility",
                "You have a duty to register or add the other leaders in your community Church Group. Please ensure other leaders serving at your level are included in the appropriate Church Group.",
                "Continue");
            return;
        }

        if (string.Equals(duty, "Other Leader", StringComparison.OrdinalIgnoreCase))
        {
            await page.DisplayAlert(
                "Leadership Information",
                "You will need to ask your Chairman to add or confirm your leadership role in the Community page and appropriate Church Group.",
                "OK");
        }
    }

    // =========================================================
    // LOAD REGIONS
    // =========================================================

    private async Task LoadRegionsAsync()
    {
        if (_loadingRegions)
            return;

        _loadingRegions = true;

        try
        {
            ShowLoading(true);

            MessageLabel.IsVisible = false;

            RegionPicker.IsEnabled = false;

        // Ensure Firebase is initialized on Android before attempting Firestore queries.
        System.Diagnostics.Debug.WriteLine("[REGISTER] Waiting for Firebase initialization...");
        await FirebaseInit.Initialized;
        System.Diagnostics.Debug.WriteLine("[REGISTER] Firebase initialization signaled");

        System.Diagnostics.Debug.WriteLine("[REGISTER] Starting LoadRegionsAsync");

        _regions =
            await _authService.GetRegionsAsync();

        System.Diagnostics.Debug.WriteLine($"[REGISTER] Regions returned: {_regions?.Count ?? 0}");

            if (_regions == null ||
                _regions.Count == 0)
            {
                System.Diagnostics.Debug.WriteLine("[REGISTER] No regions found: query returned zero documents.");

                ShowError(
                    "No Tanzania regions were found in Firebase.");

                return;
            }

            // -------------------------------------------------
            // BIND REGIONS
            // -------------------------------------------------

            RegionPicker.ItemsSource =
                _regions;

            RegionPicker.ItemDisplayBinding =
                new Binding(nameof(AuthLocation.Name));

            RegionPicker.SelectedIndex = -1;

            // -------------------------------------------------
            // RESET CHILDREN
            // -------------------------------------------------

            _districts.Clear();
            _branches.Clear();

            DistrictPicker.ItemsSource = null;
            BranchPicker.ItemsSource = null;

            DistrictPicker.SelectedIndex = -1;
            BranchPicker.SelectedIndex = -1;

            DistrictPicker.IsVisible = false;
            BranchPicker.IsVisible = false;

            RegionPicker.IsEnabled = true;
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine(
                $"[REGISTER] Failed to load regions: {ex}");

            ShowError(
                $"Unable to load regions: {ex.Message}");
        }
        finally
        {
            RegionPicker.IsEnabled = true;

            ShowLoading(false);

            _loadingRegions = false;
        }
    }

    // =========================================================
    // REGION CHANGED
    // =========================================================

    private async void OnRegionChanged(
        object? sender,
        EventArgs e)
    {
        if (_loadingRegions)
            return;

        if (RegionPicker.SelectedItem
            is not AuthLocation selectedRegion)
        {
            DistrictPicker.ItemsSource = null;
            BranchPicker.ItemsSource = null;

            DistrictPicker.SelectedIndex = -1;
            BranchPicker.SelectedIndex = -1;

            DistrictPicker.IsVisible = false;
            BranchPicker.IsVisible = false;

            return;
        }

        // -----------------------------------------------------
        // RESET DISTRICT + BRANCH
        // -----------------------------------------------------

        DistrictPicker.ItemsSource = null;
        BranchPicker.ItemsSource = null;

        DistrictPicker.SelectedIndex = -1;
        BranchPicker.SelectedIndex = -1;

        _districts.Clear();
        _branches.Clear();

        BranchPicker.IsVisible = false;

        // -----------------------------------------------------
        // NATIONAL LEVEL DOES NOT NEED LOCATION
        // -----------------------------------------------------

        if (RolePicker.SelectedIndex != 0 &&
            LevelPicker.SelectedIndex == 0)
        {
            DistrictPicker.IsVisible = false;
            BranchPicker.IsVisible = false;

            return;
        }

        await LoadDistrictsAsync(
            selectedRegion.Id);
    }

    // =========================================================
    // LOAD DISTRICTS
    // =========================================================

    private async Task LoadDistrictsAsync(
        int regionId)
    {
        if (_loadingDistricts)
            return;

        _loadingDistricts = true;

        try
        {
            ShowLoading(true);

            DistrictPicker.IsEnabled = false;

            _districts =
                await _authService.GetDistrictsAsync(
                    regionId);

            if (_districts == null ||
                _districts.Count == 0)
            {
                ShowError(
                    "No districts were found for the selected region.");

                DistrictPicker.IsVisible = false;
                BranchPicker.IsVisible = false;

                return;
            }

            DistrictPicker.ItemsSource =
                _districts;

            DistrictPicker.ItemDisplayBinding =
                new Binding(nameof(AuthLocation.Name));

            DistrictPicker.SelectedIndex = -1;

            // -------------------------------------------------
            // DISTRICT LEVEL OR BRANCH LEVEL
            // -------------------------------------------------

            if (RolePicker.SelectedIndex == 0)
            {
                DistrictPicker.IsVisible = true;
            }
            else if (LevelPicker.SelectedIndex >= 2)
            {
                DistrictPicker.IsVisible = true;
            }
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine(
                $"[REGISTER] Failed to load districts: {ex}");

            ShowError(
                $"Unable to load districts: {ex.Message}");

            DistrictPicker.IsVisible = false;
        }
        finally
        {
            DistrictPicker.IsEnabled = true;

            ShowLoading(false);

            _loadingDistricts = false;
        }
    }

    // =========================================================
    // DISTRICT CHANGED
    // =========================================================

    private async void OnDistrictChanged(
        object? sender,
        EventArgs e)
    {
        if (_loadingDistricts)
            return;

        if (DistrictPicker.SelectedItem
            is not AuthLocation selectedDistrict)
        {
            BranchPicker.ItemsSource = null;
            BranchPicker.SelectedIndex = -1;
            BranchPicker.IsVisible = false;

            return;
        }

        // -----------------------------------------------------
        // RESET BRANCH
        // -----------------------------------------------------

        BranchPicker.ItemsSource = null;
        BranchPicker.SelectedIndex = -1;

        _branches.Clear();

        // Members and all location-scoped leadership levels use the same branch
        // list for the selected district.
        await LoadBranchesAsync(selectedDistrict.Id);
    }

    // =========================================================
    // LOAD BRANCHES
    // =========================================================

    private async Task LoadBranchesAsync(
        int districtId)
    {
        if (_loadingBranches)
            return;

        _loadingBranches = true;

        try
        {
            ShowLoading(true);

            BranchPicker.IsEnabled = false;

            _branches =
                await _authService.GetBranchesAsync(
                    districtId);

            if (_branches == null ||
                _branches.Count == 0)
            {
                ShowError(
                    "No branches were found for the selected district.");

                BranchPicker.IsVisible = false;

                return;
            }

            BranchPicker.ItemsSource =
                _branches;

            BranchPicker.ItemDisplayBinding =
                new Binding(nameof(AuthLocation.Name));

            BranchPicker.SelectedIndex = -1;

            BranchPicker.IsVisible = true;
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine(
                $"[REGISTER] Failed to load branches: {ex}");

            ShowError(
                $"Unable to load branches: {ex.Message}");

            BranchPicker.IsVisible = false;
        }
        finally
        {
            BranchPicker.IsEnabled = true;

            ShowLoading(false);

            _loadingBranches = false;
        }
    }

    // =========================================================
    // CREATE ACCOUNT
    // =========================================================

    private async void OnCreateAccountClicked(
        object sender,
        EventArgs e)
    {
        if (LoadingIndicator.IsRunning)
            return;

        MessageLabel.IsVisible = false;

        var fullName =
            FullNameEntry.Text?.Trim() ?? string.Empty;

        var username =
            UsernameEntry.Text?.Trim() ?? string.Empty;

        var email =
            EmailEntry.Text?.Trim() ?? string.Empty;

        var phone =
            PhoneEntry.Text?.Trim() ?? string.Empty;

        var password =
            PasswordEntry.Text ?? string.Empty;

        var confirm =
            ConfirmPasswordEntry.Text ?? string.Empty;

        // =====================================================
        // BASIC VALIDATION
        // =====================================================

        if (string.IsNullOrWhiteSpace(fullName))
        {
            ShowError("Please enter your full name.");
            return;
        }

        if (string.IsNullOrWhiteSpace(username))
        {
            ShowError("Please enter your username.");
            return;
        }

        if (string.IsNullOrWhiteSpace(email))
        {
            ShowError("Please enter your email address.");
            return;
        }

        if (string.IsNullOrWhiteSpace(phone))
        {
            ShowError("Please enter your phone number.");
            return;
        }

        if (string.IsNullOrWhiteSpace(password))
        {
            ShowError("Please enter a password.");
            return;
        }

        if (password != confirm)
        {
            ShowError("Passwords do not match.");
            return;
        }

        // =====================================================
        // ROLE
        // =====================================================

        var role =
            RolePicker.SelectedIndex switch
            {
                1 => "Leader",
                2 => "Pastor",
                _ => "Member"
            };

        var leadershipLevel =
            RolePicker.SelectedIndex == 0
                ? string.Empty
                : (LevelPicker.SelectedItem as string ?? string.Empty);

        var leadershipDuty =
            (DutyPicker.SelectedItem as string ?? string.Empty);

        // =====================================================
        // LOCATION IDS
        // =====================================================

        int? regionId = null;
        int? districtId = null;
        int? branchId = null;

        if (RegionPicker.IsVisible)
        {
            if (RegionPicker.SelectedItem
                is not AuthLocation selectedRegion)
            {
                ShowError(
                    "Please select your region.");

                return;
            }

            regionId =
                selectedRegion.Id;
        }

        if (DistrictPicker.IsVisible)
        {
            if (DistrictPicker.SelectedItem
                is not AuthLocation selectedDistrict)
            {
                ShowError(
                    "Please select your district.");

                return;
            }

            districtId =
                selectedDistrict.Id;
        }

        if (BranchPicker.IsVisible)
        {
            if (BranchPicker.SelectedItem
                is not AuthLocation selectedBranch)
            {
                ShowError(
                    "Please select your branch / local fellowship.");

                return;
            }

            branchId =
                selectedBranch.Id;
        }

        // =====================================================
        // LEADERSHIP LEVEL
        // =====================================================

        if (RolePicker.SelectedIndex != 0 &&
            LevelPicker.SelectedIndex < 0)
        {
            ShowError(
                "Please select your leadership / ministry level.");

            return;
        }

        if (RolePicker.SelectedIndex != 0 &&
            string.IsNullOrWhiteSpace(leadershipLevel))
        {
            ShowError(
                "Please select the leadership level for your account.");

            return;
        }

        if (RolePicker.SelectedIndex != 0 &&
            string.IsNullOrWhiteSpace(leadershipDuty))
        {
            ShowError(
                "Please select your leadership duty.");

            return;
        }

        if (RolePicker.SelectedIndex != 0 &&
            LevelPicker.SelectedIndex > 0)
        {
            if (RegionPicker.SelectedItem is not AuthLocation selectedRegion)
            {
                ShowError(
                    "Please select your USCF Location before continuing.");

                return;
            }

            if (DistrictPicker.SelectedItem is not AuthLocation)
            {
                ShowError(
                    "Please select your USCF Location before continuing.");

                return;
            }

            if (BranchPicker.SelectedItem is not AuthLocation)
            {
                ShowError(
                    "Please select your USCF Location before continuing.");

                return;
            }
        }

        if (RolePicker.SelectedIndex != 0)
        {
            await ShowLeadershipDutyPopupAsync(leadershipDuty);
        }

        System.Diagnostics.Debug.WriteLine(
            $"[REGISTER] Selected role={role}, leadershipLevel={leadershipLevel}, leadershipDuty={leadershipDuty}, regionId={regionId}, districtId={districtId}, branchId={branchId}");

        // =====================================================
        // CREATE FIREBASE ACCOUNT
        // =====================================================

        try
        {
            SetLoading(true);

            await _authService.RegisterAsync(
                fullName,
                username,
                email,
                phone,
                password,
                confirm,
                role,
                regionId,
                districtId,
                branchId,
                leadershipLevel,
                leadershipDuty);

            // =================================================
            // SUCCESS
            // =================================================

            await DisplayAlert(
                "Account Created",
                "Your USCF account has been created successfully.",
                "OK");

            // Firebase automatically signs in the new user.
            // Go directly to Home.
            await Shell.Current.GoToAsync(
                "//home");
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine(
                $"[REGISTER] Account creation failed: {ex}");

            ShowError(
                ex.Message);
        }
        finally
        {
            SetLoading(false);
        }
    }

    // =========================================================
    // LOGIN
    // =========================================================

    private async void OnLoginClicked(
        object sender,
        EventArgs e)
    {
        try
        {
            await Shell.Current.GoToAsync(
                nameof(LoginPage));
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine(
                $"[REGISTER] Login navigation failed: {ex}");
        }
    }

    // =========================================================
    // ERROR MESSAGE
    // =========================================================

    private void ShowError(
        string message)
    {
        MainThread.BeginInvokeOnMainThread(() =>
        {
            MessageLabel.Text = message;
            MessageLabel.TextColor = Colors.Red;
            MessageLabel.IsVisible = true;
        });
    }

    // =========================================================
    // LOADING
    // =========================================================

    private void ShowLoading(
        bool loading)
    {
        MainThread.BeginInvokeOnMainThread(() =>
        {
            LoadingIndicator.IsVisible = loading;
            LoadingIndicator.IsRunning = loading;
        });
    }

    private void SetLoading(
        bool loading)
    {
        MainThread.BeginInvokeOnMainThread(() =>
        {
            LoadingIndicator.IsVisible = loading;
            LoadingIndicator.IsRunning = loading;

            CreateAccountButton.IsEnabled =
                !loading;

            CreateAccountButton.Text =
                loading
                    ? "CREATING ACCOUNT..."
                    : "CREATE ACCOUNT";
        });
    }
}
