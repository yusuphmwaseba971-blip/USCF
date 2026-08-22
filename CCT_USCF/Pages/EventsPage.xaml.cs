namespace CCT_USCF.Pages;

public partial class EventsPage : ContentPage
{
    public EventsPage()
    {
        InitializeComponent();
    }

    private async void OnBackClicked(object? sender, EventArgs e)
    {
        await Shell.Current.GoToAsync("..");
    }
}
