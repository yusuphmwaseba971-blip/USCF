
using AuthLocation = CCT_USCF.Services.AuthService.LocationItem;

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

    private void UpdateRoleUI()
    {
        var roleIndex =
            RolePicker.SelectedIndex;

        // -----------------------------------------------------
        // MEMBER
        // -----------------------------------------------------

        if (roleIndex == 0)
        {
            LeadershipSection.IsVisible = false;

            LevelPicker.SelectedIndex = -1;

            LocationSection.IsVisible = true;

            RegionPicker.IsVisible = true;

            DistrictPicker.IsVisible =
                RegionPicker.SelectedItem != null;

            BranchPicker.IsVisible =
                DistrictPicker.SelectedItem != null;

            return;
        }

        // -----------------------------------------------------
        // LEADER / PASTOR
        // -----------------------------------------------------

        LeadershipSection.IsVisible = true;
        LocationSection.IsVisible = true;

        UpdateLocationFields();
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
        if (RolePicker.SelectedIndex == 0)
            return;

        switch (LevelPicker.SelectedIndex)
        {
            // -------------------------------------------------
            // NATIONAL
            // -------------------------------------------------

            case 0:

                RegionPicker.IsVisible = false;
                DistrictPicker.IsVisible = false;
                BranchPicker.IsVisible = false;

                break;

            // -------------------------------------------------
            // REGIONAL
            // -------------------------------------------------

            case 1:

                RegionPicker.IsVisible = true;

                DistrictPicker.IsVisible = false;
                BranchPicker.IsVisible = false;

                break;

            // -------------------------------------------------
            // DISTRICT
            // -------------------------------------------------

            case 2:

                RegionPicker.IsVisible = true;

                DistrictPicker.IsVisible =
                    RegionPicker.SelectedItem != null;

                BranchPicker.IsVisible = false;

                break;

            // -------------------------------------------------
            // BRANCH / LOCAL
            // -------------------------------------------------

            case 3:

                RegionPicker.IsVisible = true;

                DistrictPicker.IsVisible =
                    RegionPicker.SelectedItem != null;

                BranchPicker.IsVisible =
                    DistrictPicker.SelectedItem != null;

                break;

            // -------------------------------------------------
            // NO LEVEL SELECTED
            // -------------------------------------------------

            default:

                RegionPicker.IsVisible = false;
                DistrictPicker.IsVisible = false;
                BranchPicker.IsVisible = false;

                break;
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
            LevelPicker.SelectedIndex <= 1)
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

        // -----------------------------------------------------
        // MEMBER
        //
        // Members need branch/local fellowship.
        // -----------------------------------------------------

        if (RolePicker.SelectedIndex == 0)
        {
            await LoadBranchesAsync(
                selectedDistrict.Id);

            return;
        }

        // -----------------------------------------------------
        // DISTRICT LEADER
        //
        // District level does not require branch.
        // -----------------------------------------------------

        if (LevelPicker.SelectedIndex == 2)
        {
            BranchPicker.IsVisible = false;
            return;
        }

        // -----------------------------------------------------
        // BRANCH LEADER
        // -----------------------------------------------------

        if (LevelPicker.SelectedIndex == 3)
        {
            await LoadBranchesAsync(
                selectedDistrict.Id);

            return;
        }

        BranchPicker.IsVisible = false;
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
                password,
                confirm,
                role,
                regionId,
                districtId,
                branchId);

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
