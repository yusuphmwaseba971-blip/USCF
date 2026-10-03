using CCT_USCF.Services;

namespace CCT_USCF.Pages;

[QueryProperty(nameof(GroupId), "groupId")]
[QueryProperty(nameof(GroupName), "groupName")]
[QueryProperty(nameof(CanDeleteGroup), "canDelete")]
public partial class SettingsPage : ContentPage
{
    private readonly Services.AuthService _auth;
    private readonly AppAppearanceService _appearance;
    private readonly ICctAssistantService _assistant;
    private readonly ChurchGroupService _groupService;
    private readonly CommunityService _communityService;
    private readonly ChurchGroupCacheService _groupCache;
    private string _groupId = string.Empty;
    private string _groupName = string.Empty;
    private bool _canDeleteGroup;
    private bool _refreshingOptions;
    private readonly IReadOnlyList<string> _backgroundKeys =
        AppAppearanceService.Backgrounds.Keys.Concat(["Custom"]).ToList();

    public SettingsPage()
    {
        InitializeComponent();
        _auth = LoginRegisterHelpers.GetAuthService();
        _appearance = MauiProgram.Services.GetRequiredService<AppAppearanceService>();
        _assistant = MauiProgram.Services.GetRequiredService<ICctAssistantService>();
        _groupService = MauiProgram.Services.GetRequiredService<ChurchGroupService>();
        _communityService = MauiProgram.Services.GetRequiredService<CommunityService>();
        _groupCache = MauiProgram.Services.GetRequiredService<ChurchGroupCacheService>();
        RefreshOptions();
    }

    public string GroupId
    {
        get => _groupId;
        set
        {
            _groupId = value?.Trim() ?? string.Empty;
            UpdateGroupSettingsVisibility();
        }
    }

    public string GroupName
    {
        get => _groupName;
        set
        {
            _groupName = Uri.UnescapeDataString(value ?? string.Empty);
            UpdateGroupSettingsVisibility();
        }
    }

    public bool CanDeleteGroup
    {
        get => _canDeleteGroup;
        set
        {
            _canDeleteGroup = value;
            UpdateGroupSettingsVisibility();
        }
    }

    private void UpdateGroupSettingsVisibility()
    {
        if (GroupSettingsSection == null)
            return;

        GroupSettingsSection.IsVisible = !string.IsNullOrWhiteSpace(_groupId);
        GroupSettingsTitle.Text = string.IsNullOrWhiteSpace(_groupName)
            ? _appearance.GetText("Settings.GroupSettings")
            : $"{_appearance.GetText("Settings.GroupSettings")} · {_groupName}";
        DeleteGroupFromSettingsButton.IsVisible = _canDeleteGroup;
    }

    private void RefreshOptions()
    {
        _refreshingOptions = true;
        try
        {
            LanguagePicker.ItemsSource = AppAppearanceService.Languages.Keys.ToList();
            LanguagePicker.SelectedItem = AppAppearanceService.Languages
                .FirstOrDefault(option => option.Value == _appearance.Language).Key;

            BackgroundPicker.ItemsSource = _backgroundKeys
                .Select(key => _appearance.GetText(BackgroundTextKey(key)))
                .ToList();
            BackgroundPicker.SelectedIndex = _backgroundKeys
                .ToList()
                .FindIndex(key => string.Equals(key, _appearance.BackgroundName, StringComparison.OrdinalIgnoreCase));

            FontPreferencePicker.ItemsSource = AppAppearanceService.FontPreferences
                .Select(key => _appearance.GetText($"Settings.Font.{key}"))
                .ToList();
            FontPreferencePicker.SelectedIndex = AppAppearanceService.FontPreferences
                .ToList()
                .FindIndex(key => string.Equals(key, _appearance.FontPreference, StringComparison.OrdinalIgnoreCase));

            FontSizePreferencePicker.ItemsSource = AppAppearanceService.FontSizePreferences
                .Select(key => _appearance.GetText($"Settings.Font.{key}"))
                .ToList();
            FontSizePreferencePicker.SelectedIndex = AppAppearanceService.FontSizePreferences
                .ToList()
                .FindIndex(key => string.Equals(key, _appearance.FontSizePreference, StringComparison.OrdinalIgnoreCase));
        }
        finally
        {
            _refreshingOptions = false;
        }
    }

    private static string BackgroundTextKey(string background) =>
        background switch
        {
            "Soft gradient" => "Settings.Background.SoftGradient",
            _ => $"Settings.Background.{background}"
        };

    private async void OnDeleteGroupFromSettingsClicked(object? sender, EventArgs e)
    {
        if (string.IsNullOrWhiteSpace(_groupId) || !_canDeleteGroup)
            return;

        if (!await DisplayAlert(
                _appearance.GetText("Settings.DeleteGroupConfirmTitle"),
                _appearance.GetText("Settings.DeleteGroupConfirmMessage"),
                _appearance.GetText("Common.Delete"),
                _appearance.GetText("Common.Cancel")))
            return;

        DeleteGroupFromSettingsButton.IsEnabled = false;
        try
        {
            await _groupService.DeleteGroupAsync(_groupId);
            await _communityService.RemoveLocalGroupCacheAsync(_groupId);
            await _groupCache.RemoveGroupAsync(_groupId);
            await DisplayAlert(
                _appearance.GetText("Settings.GroupDeletedTitle"),
                _appearance.GetText("Settings.GroupUnavailable"),
                _appearance.GetText("Common.Ok"));
            await Shell.Current.GoToAsync("../..", true);
        }
        catch (Exception ex)
        {
            await DisplayAlert(
                _appearance.GetText("Settings.DeleteGroupError"),
                ex.Message,
                _appearance.GetText("Common.Ok"));
            DeleteGroupFromSettingsButton.IsEnabled = true;
        }
    }

    protected override void OnAppearing()
    {
        base.OnAppearing();
        _appearance.AppearanceChanged += OnAppearanceChanged;
        BackgroundColor = _appearance.BackgroundColor;
        BackgroundPreview.BackgroundColor = _appearance.BackgroundColor;
        RefreshOptions();
        _ = LoadCurrentAsync();
    }

    private void OnAppearanceChanged(object? sender, EventArgs e)
    {
        MainThread.BeginInvokeOnMainThread(() =>
        {
            BackgroundColor = _appearance.BackgroundColor;
            BackgroundPreview.BackgroundColor = _appearance.BackgroundColor;
            AssistantSwitch.IsToggled = _assistant.IsEnabled;
            RefreshOptions();
            UpdateGroupSettingsVisibility();
        });
    }

    private void OnAssistantToggled(object? sender, ToggledEventArgs e) =>
        _assistant.SetEnabled(e.Value);

    protected override void OnDisappearing()
    {
        _appearance.AppearanceChanged -= OnAppearanceChanged;
        base.OnDisappearing();
    }

    private async Task LoadCurrentAsync()
    {
        try
        {
            var user = MauiProgram.CurrentUser ?? await _auth.GetCurrentUserAsync();
            if (user == null)
            {
                await DisplayAlert(
                    _appearance.GetText("Settings.NotAuthenticated"),
                    _appearance.GetText("Settings.SignIn"),
                    _appearance.GetText("Common.Ok"));
                await Shell.Current.GoToAsync("//home");
                return;
            }

            FullNameEntry.Text = user.FullName;
            UsernameEntry.Text = user.Username;
            EmailEntry.Text = user.Email;
            PhoneNumberEntry.Text = user.PhoneNumber;
            CustomColorEntry.Text = _appearance.CustomColor;
            BackgroundPreview.BackgroundColor = _appearance.BackgroundColor;
            RefreshOptions();
        }
        catch (Exception ex)
        {
            await DisplayAlert(
                _appearance.GetText("Settings.Error"),
                ex.Message,
                _appearance.GetText("Common.Ok"));
        }
    }

    private async void OnLanguagePickerChanged(object? sender, EventArgs e)
    {
        if (_refreshingOptions || LanguagePicker.SelectedItem is not string language ||
            !AppAppearanceService.Languages.TryGetValue(language, out var code))
            return;

        try
        {
            _appearance.SetLanguage(code);
        }
        catch (Exception ex)
        {
            await DisplayAlert(_appearance.GetText("Settings.Error"), ex.Message, _appearance.GetText("Common.Ok"));
            RefreshOptions();
        }
    }

    private async void OnBackgroundPickerChanged(object? sender, EventArgs e)
    {
        if (_refreshingOptions || BackgroundPicker.SelectedIndex < 0 ||
            BackgroundPicker.SelectedIndex >= _backgroundKeys.Count)
            return;

        try
        {
            _appearance.SetBackground(_backgroundKeys[BackgroundPicker.SelectedIndex]);
        }
        catch (Exception ex)
        {
            await DisplayAlert(_appearance.GetText("Settings.Error"), ex.Message, _appearance.GetText("Common.Ok"));
            RefreshOptions();
        }
    }

    private void OnFontSizePickerChanged(object? sender, EventArgs e)
    {
        if (_refreshingOptions || FontSizePreferencePicker.SelectedIndex < 0 ||
            FontSizePreferencePicker.SelectedIndex >= AppAppearanceService.FontSizePreferences.Count)
            return;

        _appearance.SetFontSizePreference(
            AppAppearanceService.FontSizePreferences[FontSizePreferencePicker.SelectedIndex]);
    }

    private async void OnAppearanceClicked(object sender, EventArgs e)
    {
        var customColor = CustomColorEntry.Text?.Trim();
        var selectedCustomBackground = BackgroundPicker.SelectedIndex == _backgroundKeys.Count - 1;
        var customColorChanged = !string.IsNullOrWhiteSpace(customColor) &&
            !string.Equals(customColor, _appearance.CustomColor, StringComparison.OrdinalIgnoreCase);
        if ((selectedCustomBackground || customColorChanged) &&
            !string.IsNullOrWhiteSpace(customColor) &&
            !Color.TryParse(customColor, out _))
        {
            await DisplayAlert(
                _appearance.GetText("Settings.LanguageAppearance"),
                _appearance.GetText("Settings.AppearanceInvalidColor"),
                _appearance.GetText("Common.Ok"));
            return;
        }

        try
        {
            if (customColorChanged && !string.IsNullOrWhiteSpace(customColor))
                _appearance.SetCustomColor(customColor);
            else if (selectedCustomBackground)
                _appearance.SetBackground("Custom");

            _appearance.SetFontPreference("System");
            if (FontSizePreferencePicker.SelectedIndex >= 0 &&
                FontSizePreferencePicker.SelectedIndex < AppAppearanceService.FontSizePreferences.Count)
                _appearance.SetFontSizePreference(
                    AppAppearanceService.FontSizePreferences[FontSizePreferencePicker.SelectedIndex]);

            BackgroundPreview.BackgroundColor = _appearance.BackgroundColor;
            BackgroundColor = _appearance.BackgroundColor;
            await DisplayAlert(
                _appearance.GetText("Settings.LanguageAppearance"),
                _appearance.GetText("Settings.AppearanceApplied"),
                _appearance.GetText("Common.Ok"));
        }
        catch (Exception ex)
        {
            await DisplayAlert(
                _appearance.GetText("Settings.Error"),
                ex.Message,
                _appearance.GetText("Common.Ok"));
        }
    }

    private async void OnSaveClicked(object sender, EventArgs e)
    {
        SaveButton.IsEnabled = false;
        try
        {
            var fullName = FullNameEntry.Text?.Trim();
            var username = UsernameEntry.Text?.Trim();
            var email = EmailEntry.Text?.Trim();
            var phoneNumber = PhoneNumberEntry.Text?.Trim();

            // Validate basic fields
            if (string.IsNullOrWhiteSpace(fullName))
            {
                await DisplayAlert(_appearance.GetText("Settings.Validation"), _appearance.GetText("Settings.FullNameRequired"), _appearance.GetText("Common.Ok"));
                return;
            }

            if (string.IsNullOrWhiteSpace(username))
            {
                await DisplayAlert(_appearance.GetText("Settings.Validation"), _appearance.GetText("Settings.UsernameRequired"), _appearance.GetText("Common.Ok"));
                return;
            }

            if (string.IsNullOrWhiteSpace(email))
            {
                await DisplayAlert(_appearance.GetText("Settings.Validation"), _appearance.GetText("Settings.EmailRequired"), _appearance.GetText("Common.Ok"));
                return;
            }

            var currentPwd = CurrentPasswordEntry.Text;
            var newPwd = NewPasswordEntry.Text;
            var confirmPwd = ConfirmPasswordEntry.Text;

            // If changing password, ensure proper fields
            if (!string.IsNullOrEmpty(newPwd) || !string.IsNullOrEmpty(confirmPwd))
            {
                if (string.IsNullOrEmpty(currentPwd))
                {
                    await DisplayAlert(_appearance.GetText("Settings.Validation"), _appearance.GetText("Settings.CurrentPasswordRequired"), _appearance.GetText("Common.Ok"));
                    return;
                }

                if (newPwd != confirmPwd)
                {
                    await DisplayAlert(_appearance.GetText("Settings.Validation"), _appearance.GetText("Settings.PasswordMismatch"), _appearance.GetText("Common.Ok"));
                    return;
                }
            }

            var updated = await _auth.UpdateProfileAsync(fullName, username, email, phoneNumber, currentPwd, newPwd, confirmPwd);
            if (updated == null)
            {
                await DisplayAlert(_appearance.GetText("Settings.Error"), _appearance.GetText("Settings.UpdateProfileError"), _appearance.GetText("Common.Ok"));
                return;
            }

            MauiProgram.SetCurrentUser(updated);
            await DisplayAlert(_appearance.GetText("Settings.Success"), _appearance.GetText("Settings.ProfileUpdated"), _appearance.GetText("Common.Ok"));
            await Shell.Current.GoToAsync("..", true);
        }
        catch (Exception ex)
        {
            await DisplayAlert(_appearance.GetText("Settings.Error"), ex.Message, _appearance.GetText("Common.Ok"));
        }
        finally
        {
            SaveButton.IsEnabled = true;
        }
    }

    private async void OnDeleteAccountClicked(object sender, EventArgs e)
    {
        var confirmed = await DisplayAlert(
            _appearance.GetText("Settings.DeleteAccountConfirmTitle"),
            _appearance.GetText("Settings.DeleteAccountConfirmMessage"),
            _appearance.GetText("Settings.DeleteAccountConfirm"),
            _appearance.GetText("Common.Cancel"));

        if (!confirmed)
            return;

        DeleteAccountButton.IsEnabled = false;
        try
        {
            await _auth.DeleteAccountAsync();
            await DisplayAlert(
                _appearance.GetText("Settings.AccountDeletedTitle"),
                _appearance.GetText("Settings.AccountDeletedMessage"),
                _appearance.GetText("Common.Ok"));
            await Shell.Current.GoToAsync("//home");
        }
        catch (Exception ex)
        {
            await DisplayAlert(
                _appearance.GetText("Settings.AccountDeletion"),
                ex.Message,
                _appearance.GetText("Common.Ok"));
        }
        finally
        {
            DeleteAccountButton.IsEnabled = true;
        }
    }
}
