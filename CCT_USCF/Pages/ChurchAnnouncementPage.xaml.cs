using CCT_USCF.Models;
using CCT_USCF.Services;

namespace CCT_USCF.Pages;

public partial class ChurchAnnouncementPage : ContentPage
{
    private readonly ChurchAnnouncementService _service;
    private IReadOnlyList<ChurchAnnouncementTarget> _targets = [];

    public ChurchAnnouncementPage()
    {
        InitializeComponent();
        _service = MauiProgram.Services.GetRequiredService<ChurchAnnouncementService>();
        Loaded += async (_, _) => await LoadAsync();
    }

    private async Task LoadAsync()
    {
        try
        {
            await FirebaseInit.Initialized;
            if (MauiProgram.CurrentUser is null)
            {
                var currentUser = await MauiProgram.CreateAuthServiceForPages().GetCurrentUserAsync();
                if (currentUser is not null)
                    MauiProgram.SetCurrentUser(currentUser);
            }
            var options = await _service.GetOptionsAsync();
            LeadershipLabel.Text = $"Leadership: {options.LeadershipLevel}";
            OrganizationLabel.Text = $"Organization: {options.Organization}";
            _targets = options.Targets;
            AudiencePicker.ItemsSource = _targets.ToList();
            AudiencePicker.SelectedIndex = _targets.Count > 0 ? 0 : -1;
            SendButton.IsEnabled = _targets.Count > 0;
            StatusLabel.Text = _targets.Count == 0
                ? "Assign a branch in your church profile before sending."
                : "Choose an audience, then enter your message.";
        }
        catch (Exception ex)
        {
            StatusLabel.Text = ex.Message;
            SendButton.IsEnabled = false;
        }
    }

    private async void OnSendClicked(object? sender, EventArgs e)
    {
        if (AudiencePicker.SelectedItem is not ChurchAnnouncementTarget target) { StatusLabel.Text = "Choose an audience."; return; }
        if (string.IsNullOrWhiteSpace(TitleEntry.Text) || string.IsNullOrWhiteSpace(MessageEditor.Text))
        { StatusLabel.Text = "Title and message are required."; return; }
        SendButton.IsEnabled = false;
        try
        {
            await _service.CreateAsync(TitleEntry.Text, MessageEditor.Text, target);
            StatusLabel.Text = "Announcement sent and stored.";
            await DisplayAlert("Announcement", "Announcement sent and stored.", "OK");
            TitleEntry.Text = MessageEditor.Text = string.Empty;
        }
        catch (Exception ex)
        {
            var diagnostic = BuildDiagnostic(ex);
            System.Diagnostics.Debug.WriteLine($"[ANNOUNCEMENT_SEND_ERROR] {diagnostic}");
#if DEBUG
            StatusLabel.Text = diagnostic;
#else
            StatusLabel.Text = "Announcement was not stored. Please try again.";
#endif
        }
        finally { SendButton.IsEnabled = true; }
    }

    private static string BuildDiagnostic(Exception exception)
    {
        var inner = exception.InnerException is null
            ? "<none>"
            : $"{exception.InnerException.GetType().FullName}: {exception.InnerException.Message}";
        return $"timestamp={DateTimeOffset.UtcNow:O} " +
               $"exceptionType={exception.GetType().FullName} " +
               $"message={exception.Message} inner={inner}";
    }

    private async void OnActivityClicked(object? sender, EventArgs e)
        => await Shell.Current.GoToAsync(nameof(AnnouncementActivityPage));
}
