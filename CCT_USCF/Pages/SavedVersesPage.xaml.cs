namespace CCT_USCF.Pages;

public partial class SavedVersesPage : ContentPage
{
    public SavedVersesPage()
    {
        InitializeComponent();
    }

    private async void OnBackClicked(object sender, EventArgs e)
    {
        await Shell.Current.GoToAsync("..", true);
    }
}
