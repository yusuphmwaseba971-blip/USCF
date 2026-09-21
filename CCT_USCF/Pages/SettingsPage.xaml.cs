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

    public SettingsPage()
    {
        InitializeComponent();
        _auth = LoginRegisterHelpers.GetAuthService();
        _appearance = MauiProgram.Services.GetRequiredService<AppAppearanceService>();
        _assistant = MauiProgram.Services.GetRequiredService<ICctAssistantService>();
        _groupService = MauiProgram.Services.GetRequiredService<ChurchGroupService>();
        _communityService = MauiProgram.Services.GetRequiredService<CommunityService>();
        _groupCache = MauiProgram.Services.GetRequiredService<ChurchGroupCacheService>();
        LanguagePicker.ItemsSource = AppAppearanceService.Languages.Keys.ToList();
        BackgroundPicker.ItemsSource = AppAppearanceService.Backgrounds.Keys.Concat(["Custom"]).ToList();
        FontPreferencePicker.ItemsSource = AppAppearanceService.FontPreferences.ToList();
        FontSizePreferencePicker.ItemsSource = AppAppearanceService.FontSizePreferences.ToList();
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
            ? "Group Settings"
            : $"Group Settings · {_groupName}";
        DeleteGroupFromSettingsButton.IsVisible = _canDeleteGroup;
    }

    private async void OnDeleteGroupFromSettingsClicked(object? sender, EventArgs e)
    {
        if (string.IsNullOrWhiteSpace(_groupId) || !_canDeleteGroup)
            return;

        if (!await DisplayAlert(
                "Delete group?",
                "This will deactivate this group for all members.",
                "Delete",
                "Cancel"))
            return;

        DeleteGroupFromSettingsButton.IsEnabled = false;
        try
        {
            await _groupService.DeleteGroupAsync(_groupId);
            await _communityService.RemoveLocalGroupCacheAsync(_groupId);
            await _groupCache.RemoveGroupAsync(_groupId);
            await DisplayAlert("Group deleted", "The group is no longer available.", "OK");
            await Shell.Current.GoToAsync("../..", true);
        }
        catch (Exception ex)
        {
            await DisplayAlert("Unable to delete group", ex.Message, "OK");
            DeleteGroupFromSettingsButton.IsEnabled = true;
        }
    }

    protected override void OnAppearing()
    {
        base.OnAppearing();
        _appearance.AppearanceChanged += OnAppearanceChanged;
        _ = LoadCurrentAsync();
    }

    private void OnAppearanceChanged(object? sender, EventArgs e)
    {
        MainThread.BeginInvokeOnMainThread(() =>
        {
            BackgroundColor = _appearance.BackgroundColor;
            BackgroundPreview.BackgroundColor = _appearance.BackgroundColor;
            AssistantSwitch.IsToggled = _assistant.IsEnabled;
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
                await DisplayAlert("Not authenticated", "Please sign in.", "OK");
                await Shell.Current.GoToAsync("//home");
                return;
            }

            FullNameEntry.Text = user.FullName;
            UsernameEntry.Text = user.Username;
            EmailEntry.Text = user.Email;
            PhoneNumberEntry.Text = user.PhoneNumber;
            LanguagePicker.SelectedItem = AppAppearanceService.Languages.FirstOrDefault(x => x.Value == _appearance.Language).Key;
            BackgroundPicker.SelectedItem = _appearance.BackgroundName;
            CustomColorEntry.Text = _appearance.CustomColor;
            BackgroundPreview.BackgroundColor = _appearance.BackgroundColor;
            FontPreferencePicker.SelectedItem = _appearance.FontPreference;
            FontSizePreferencePicker.SelectedItem = _appearance.FontSizePreference;
        }
        catch (Exception ex)
        {
            await DisplayAlert("Error", ex.Message, "OK");
        }
    }

    private async void OnAppearanceClicked(object sender, EventArgs e)
    {
        if (LanguagePicker.SelectedItem is string language &&
            AppAppearanceService.Languages.TryGetValue(language, out var code))
            _appearance.SetLanguage(code);
        if (BackgroundPicker.SelectedItem is string background)
            _appearance.SetBackground(background);
        if (!string.IsNullOrWhiteSpace(CustomColorEntry.Text) &&
            !Color.TryParse(CustomColorEntry.Text.Trim(), out _))
        {
            await DisplayAlert("Appearance", "Use a valid color such as #336699.", "OK");
            return;
        }
        if (!string.IsNullOrWhiteSpace(CustomColorEntry.Text))
            _appearance.SetCustomColor(CustomColorEntry.Text.Trim());
        if (FontPreferencePicker.SelectedItem is string fontPreference)
            _appearance.SetFontPreference(fontPreference);
        if (FontSizePreferencePicker.SelectedItem is string fontSizePreference)
            _appearance.SetFontSizePreference(fontSizePreference);
        BackgroundPreview.BackgroundColor = _appearance.BackgroundColor;
        BackgroundColor = _appearance.BackgroundColor;
        await DisplayAlert("Appearance", "Appearance settings saved.", "OK");
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
                await DisplayAlert("Validation", "Full name is required.", "OK");
                return;
            }

            if (string.IsNullOrWhiteSpace(username))
            {
                await DisplayAlert("Validation", "Username is required.", "OK");
                return;
            }

            if (string.IsNullOrWhiteSpace(email))
            {
                await DisplayAlert("Validation", "Email is required.", "OK");
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
                    await DisplayAlert("Validation", "Current password is required to change password.", "OK");
                    return;
                }

                if (newPwd != confirmPwd)
                {
                    await DisplayAlert("Validation", "New password and confirmation do not match.", "OK");
                    return;
                }
            }

            var updated = await _auth.UpdateProfileAsync(fullName, username, email, phoneNumber, currentPwd, newPwd, confirmPwd);
            if (updated == null)
            {
                await DisplayAlert("Error", "Unable to update profile.", "OK");
                return;
            }

            MauiProgram.SetCurrentUser(updated);
            await DisplayAlert("Success", "Profile updated.", "OK");
            await Shell.Current.GoToAsync("..", true);
        }
        catch (Exception ex)
        {
            await DisplayAlert("Error", ex.Message, "OK");
        }
        finally
        {
            SaveButton.IsEnabled = true;
        }
    }

    private async void OnDeleteAccountClicked(object sender, EventArgs e)
    {
        var confirmed = await DisplayAlert(
            "Delete account?",
            "This permanently deletes your Firebase account and CCT-USCF Firestore profile. This action cannot be undone.",
            "Delete account",
            "Cancel");

        if (!confirmed)
            return;

        DeleteAccountButton.IsEnabled = false;
        try
        {
            await _auth.DeleteAccountAsync();
            await DisplayAlert("Account deleted", "Your account and profile have been deleted.", "OK");
            await Shell.Current.GoToAsync("//home");
        }
        catch (Exception ex)
        {
            await DisplayAlert(
                "Account deletion",
                ex.Message,
                "OK");
        }
        finally
        {
            DeleteAccountButton.IsEnabled = true;
        }
    }
}
