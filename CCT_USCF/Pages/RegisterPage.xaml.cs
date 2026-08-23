using AuthLocation = CCT_USCF.Services.AuthService.LocationItem;

namespace CCT_USCF.Pages;

public partial class RegisterPage : ContentPage
{
    private readonly Services.AuthService _authService;

    private List<AuthLocation> _regions = new();
    private List<AuthLocation> _districts = new();
    private List<AuthLocation> _branches = new();

    public RegisterPage()
    {
        InitializeComponent();

        _authService = LoginRegisterHelpers.GetAuthService();

        RolePicker.SelectedIndex = 0;

        RegionPicker.SelectedIndexChanged += OnRegionChanged;
        DistrictPicker.SelectedIndexChanged += OnDistrictChanged;

        UpdateRoleUI();

        _ = LoadRegionsAsync();
    }

    private void OnRoleChanged(object sender, EventArgs e)
    {
        UpdateRoleUI();
    }

    private void UpdateRoleUI()
    {
        var role = RolePicker.SelectedIndex;

        if (role == 0)
        {
            LeadershipSection.IsVisible = false;
            LevelPicker.SelectedIndex = -1;

            LocationSection.IsVisible = true;
            DistrictPicker.IsVisible = true;
            BranchPicker.IsVisible = true;

            return;
        }

        LeadershipSection.IsVisible = true;
        LocationSection.IsVisible = true;

        UpdateLocationFields();
    }

    private void OnLevelChanged(object sender, EventArgs e)
    {
        UpdateLocationFields();
    }

    private void UpdateLocationFields()
    {
        if (RolePicker.SelectedIndex == 0)
            return;

        switch (LevelPicker.SelectedIndex)
        {
            case 0: // National
                RegionPicker.IsVisible = false;
                DistrictPicker.IsVisible = false;
                BranchPicker.IsVisible = false;
                break;

            case 1: // Regional
                RegionPicker.IsVisible = true;
                DistrictPicker.IsVisible = false;
                BranchPicker.IsVisible = false;
                break;

            case 2: // District
                RegionPicker.IsVisible = true;
                DistrictPicker.IsVisible = true;
                BranchPicker.IsVisible = false;
                break;

            case 3: // Branch
                RegionPicker.IsVisible = true;
                DistrictPicker.IsVisible = true;
                BranchPicker.IsVisible = true;
                break;
        }
    }

    private async Task LoadRegionsAsync()
    {
        try
        {
            _regions = await _authService.GetRegionsAsync();

            RegionPicker.ItemsSource = _regions;
            RegionPicker.ItemDisplayBinding = new Binding("Name");
        }
        catch (Exception ex)
        {
            ShowError($"Unable to load regions: {ex.Message}");
        }
    }

    private async void OnRegionChanged(object? sender, EventArgs e)
    {
        if (RegionPicker.SelectedItem is not AuthLocation region)
            return;

        DistrictPicker.SelectedIndex = -1;
        BranchPicker.SelectedIndex = -1;

        DistrictPicker.ItemsSource = null;
        BranchPicker.ItemsSource = null;

        try
        {
            _districts = await _authService.GetDistrictsAsync(region.Id);

            DistrictPicker.ItemsSource = _districts;
            DistrictPicker.ItemDisplayBinding = new Binding("Name");

            DistrictPicker.IsVisible = true;
        }
        catch (Exception ex)
        {
            ShowError($"Unable to load districts: {ex.Message}");
        }
    }

    private async void OnDistrictChanged(object? sender, EventArgs e)
    {
        if (DistrictPicker.SelectedItem is not AuthLocation district)
            return;

        BranchPicker.SelectedIndex = -1;
        BranchPicker.ItemsSource = null;

        try
        {
            _branches = await _authService.GetBranchesAsync(district.Id);

            BranchPicker.ItemsSource = _branches;
            BranchPicker.ItemDisplayBinding = new Binding("Name");

            BranchPicker.IsVisible = true;
        }
        catch (Exception ex)
        {
            ShowError($"Unable to load branches: {ex.Message}");
        }
    }

    private async void OnCreateAccountClicked(object sender, EventArgs e)
    {
        MessageLabel.IsVisible = false;

        var fullName = FullNameEntry.Text?.Trim();
        var username = UsernameEntry.Text?.Trim();
        var email = EmailEntry.Text?.Trim();

        var password = PasswordEntry.Text ?? "";
        var confirm = ConfirmPasswordEntry.Text ?? "";

        if (string.IsNullOrWhiteSpace(fullName) ||
            string.IsNullOrWhiteSpace(username) ||
            string.IsNullOrWhiteSpace(email) ||
            string.IsNullOrWhiteSpace(password))
        {
            ShowError("Please complete all required fields.");
            return;
        }

        if (password != confirm)
        {
            ShowError("Passwords do not match.");
            return;
        }

        var role = RolePicker.SelectedIndex switch
        {
            1 => "Leader",
            2 => "Pastor",
            _ => "Member"
        };

        int? regionId = null;
        int? districtId = null;
        int? branchId = null;

        if (RegionPicker.SelectedItem is AuthLocation selectedRegion)
            regionId = selectedRegion.Id;

        if (DistrictPicker.SelectedItem is AuthLocation selectedDistrict)
            districtId = selectedDistrict.Id;

        if (BranchPicker.SelectedItem is AuthLocation selectedBranch)
            branchId = selectedBranch.Id;

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

            await DisplayAlert(
                "Account Created",
                "Your USCF account has been created successfully.",
                "OK");

            await Shell.Current.GoToAsync(nameof(LoginPage));
        }
        catch (Exception ex)
        {
            ShowError(ex.Message);
        }
        finally
        {
            SetLoading(false);
        }
    }

    private async void OnLoginClicked(object sender, EventArgs e)
    {
        await Shell.Current.GoToAsync(nameof(LoginPage));
    }

    private void ShowError(string message)
    {
        MessageLabel.Text = message;
        MessageLabel.IsVisible = true;
    }

    private void SetLoading(bool loading)
    {
        LoadingIndicator.IsVisible = loading;
        LoadingIndicator.IsRunning = loading;

        CreateAccountButton.IsEnabled = !loading;
    }
}
