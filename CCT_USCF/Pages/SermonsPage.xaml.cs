namespace CCT_USCF.Pages;

public partial class SermonsPage : ContentPage
{
    public SermonsPage()
    {
        InitializeComponent();
    }

    private async void OnBackClicked(object? sender, EventArgs e)
    {
        await Shell.Current.GoToAsync("..");
    }
}
