using CCT_USCF.Services;

namespace CCT_USCF.Pages;

public partial class SettingsPage : ContentPage
{
    private readonly Services.AuthService _auth;
    private readonly AppAppearanceService _appearance;

    public SettingsPage()
    {
        InitializeComponent();
        _auth = LoginRegisterHelpers.GetAuthService();
        _appearance = MauiProgram.Services.GetRequiredService<AppAppearanceService>();
        LanguagePicker.ItemsSource = AppAppearanceService.Languages.Keys.ToList();
        BackgroundPicker.ItemsSource = AppAppearanceService.Backgrounds.Keys.Concat(["Custom"]).ToList();
    }

    protected override void OnAppearing()
    {
        base.OnAppearing();
        _ = LoadCurrentAsync();
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
        BackgroundPreview.BackgroundColor = _appearance.BackgroundColor;
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
}
