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
            var options = await _service.GetOptionsAsync();
            LeadershipLabel.Text = $"Leadership: {options.LeadershipLevel}";
            OrganizationLabel.Text = $"Organization: {options.Organization}";
            _targets = options.Targets;
            AudiencePicker.ItemsSource = _targets.ToList();
            AudiencePicker.SelectedIndex = _targets.Count > 0 ? 0 : -1;
            SendButton.IsEnabled = _targets.Count > 0;
            if (_targets.Count == 0) StatusLabel.Text = "Your organization profile is incomplete.";
        }
        catch (Exception ex) { StatusLabel.Text = ex.Message; SendButton.IsEnabled = false; }
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
            await DisplayAlert("Announcement", "Announcement sent.", "OK");
            TitleEntry.Text = MessageEditor.Text = string.Empty;
        }
        catch (Exception ex) { StatusLabel.Text = ex.Message; }
        finally { SendButton.IsEnabled = true; }
    }

    private async void OnActivityClicked(object? sender, EventArgs e)
        => await Shell.Current.GoToAsync(nameof(AnnouncementActivityPage));
}
