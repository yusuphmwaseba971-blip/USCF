namespace CCT_USCF.Pages;

public partial class EventsPage : ContentPage
{
    protected override async void OnAppearing()
    {
        base.OnAppearing();
        try
        {
            var events = await MauiProgram.Services.GetRequiredService<Services.CommunityService>().GetNationalEventsAsync();
            CommunityEventsStack.Children.Clear();
            foreach (var item in events)
                CommunityEventsStack.Children.Add(new Label { Text = $"{item.Message}  •  {item.CreatedAtUtc.ToLocalTime():g}", TextColor = Colors.DarkSlateGray });
            EmptyLabel.Text = events.Count == 0 ? "Upcoming church activities and service opportunities." : "Your latest community activity.";
        }
        catch (Exception ex) { System.Diagnostics.Debug.WriteLine($"[EVENTS] {ex}"); }
    }

    public EventsPage()
    {
        InitializeComponent();
    }

    private async void OnBackClicked(object? sender, EventArgs e)
    {
        await Shell.Current.GoToAsync("..");
    }
}
