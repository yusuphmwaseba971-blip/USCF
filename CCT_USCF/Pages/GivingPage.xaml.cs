namespace CCT_USCF.Pages;

public partial class GivingPage : ContentPage
{
    public GivingPage()
    {
        InitializeComponent();
    }

    private async void OnBackClicked(object? sender, EventArgs e)
    {
        await Shell.Current.GoToAsync("..");
    }
}
