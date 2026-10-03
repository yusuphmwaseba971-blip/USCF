using Microsoft.Maui.Controls.Shapes;
using CCT_USCF.Services;

namespace CCT_USCF.Pages;

public partial class ContactInformationPage : ContentPage
{
    private readonly AboutCctUsfcService _service;

    public ContactInformationPage()
    {
        InitializeComponent();
        _service = MauiProgram.Services.GetRequiredService<AboutCctUsfcService>();
    }

    protected override async void OnAppearing()
    {
        base.OnAppearing();
        await LoadAsync();
    }

    private async Task LoadAsync()
    {
        try
        {
            var items = await _service.GetContactInformationAsync();
            ContactStack.Children.Clear();

            if (items.Count == 0)
            {
                StatusLabel.Text = "No official contact information has been published yet.";
                return;
            }

            foreach (var item in items)
            {
                var card = new Border
                {
                    Padding = new Thickness(16),
                    StrokeThickness = 1,
                    Stroke = Color.Parse("#E8E0D2"),
                    StrokeShape = new RoundRectangle { CornerRadius = 18 },
                    BackgroundColor = Colors.White
                };

                var stack = new VerticalStackLayout { Spacing = 6 };
                if (!string.IsNullOrWhiteSpace(item.SupportName))
                    stack.Children.Add(new Label { Text = item.SupportName, FontSize = 18, FontAttributes = FontAttributes.Bold, TextColor = Color.FromArgb("#153A2A") });
                if (!string.IsNullOrWhiteSpace(item.OfficialEmail))
                    stack.Children.Add(new Label { Text = item.OfficialEmail, FontSize = 14, TextColor = Color.FromArgb("#2D3D33") });
                if (!string.IsNullOrWhiteSpace(item.OfficialPhone))
                    stack.Children.Add(new Label { Text = item.OfficialPhone, FontSize = 14, TextColor = Color.FromArgb("#2D3D33") });
                if (!string.IsNullOrWhiteSpace(item.SupportDescription))
                    stack.Children.Add(new Label { Text = item.SupportDescription, FontSize = 13, TextColor = Color.FromArgb("#3D4F45"), LineBreakMode = LineBreakMode.WordWrap });

                card.Content = stack;
                ContactStack.Children.Add(card);
            }

            StatusLabel.Text = $"{items.Count} contact record(s) available.";
        }
        catch (Exception ex)
        {
            StatusLabel.Text = "Unable to load official contact information right now.";
            Console.WriteLine($"[CONTACT_PAGE] {ex}");
        }
    }
}
