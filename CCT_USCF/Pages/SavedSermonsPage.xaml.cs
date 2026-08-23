namespace CCT_USCF.Pages;

public partial class SavedSermonsPage : ContentPage
{
    public SavedSermonsPage()
    {
        InitializeComponent();
    }

    private async void OnBackClicked(object sender, EventArgs e)
    {
        await Shell.Current.GoToAsync("..", true);
    }
}
