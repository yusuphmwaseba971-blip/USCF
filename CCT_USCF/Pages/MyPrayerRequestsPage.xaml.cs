namespace CCT_USCF.Pages;

public partial class MyPrayerRequestsPage : ContentPage
{
    public MyPrayerRequestsPage()
    {
        InitializeComponent();
    }

    private async void OnBackClicked(object sender, EventArgs e)
    {
        await Shell.Current.GoToAsync("..", true);
    }
}
