namespace CCT_USCF.Pages;

public partial class AboutCctUsfcPage : ContentPage
{
    public AboutCctUsfcPage()
    {
        InitializeComponent();
    }

    private async void OnHistoryClicked(object? sender, EventArgs e)
        => await Shell.Current.GoToAsync(nameof(HistoryPage));

    private async void OnMissionVisionClicked(object? sender, EventArgs e)
        => await Shell.Current.GoToAsync(nameof(MissionVisionPage));

    private async void OnLeadershipClicked(object? sender, EventArgs e)
        => await Shell.Current.GoToAsync(nameof(LeadershipPage));

    private async void OnConstitutionClicked(object? sender, EventArgs e)
        => await Shell.Current.GoToAsync(nameof(ConstitutionPage));

    private async void OnContactClicked(object? sender, EventArgs e)
        => await Shell.Current.GoToAsync(nameof(ContactInformationPage));
}
