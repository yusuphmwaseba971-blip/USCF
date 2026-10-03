using Microsoft.Maui.Controls.Shapes;
using CCT_USCF.Services;

namespace CCT_USCF.Pages;

public partial class LeadershipPage : ContentPage
{
    private readonly AboutCctUsfcService _service;

    public LeadershipPage()
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
            var items = await _service.GetLeadershipAsync();
            LeadershipStack.Children.Clear();

            if (items.Count == 0)
            {
                StatusLabel.Text = "No leadership records have been published yet.";
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
                stack.Children.Add(new Label { Text = item.PositionName, FontSize = 18, FontAttributes = FontAttributes.Bold, TextColor = Color.FromArgb("#153A2A") });
                stack.Children.Add(new Label { Text = item.UserName, FontSize = 15, TextColor = Color.FromArgb("#2D3D33") });
                if (!string.IsNullOrWhiteSpace(item.OrganizationName))
                    stack.Children.Add(new Label { Text = item.OrganizationName, FontSize = 12, TextColor = Color.FromArgb("#6F7A6B") });
                if (!string.IsNullOrWhiteSpace(item.OrganizationLevel))
                    stack.Children.Add(new Label { Text = item.OrganizationLevel, FontSize = 12, TextColor = Color.FromArgb("#6F7A6B") });

                card.Content = stack;
                LeadershipStack.Children.Add(card);
            }

            StatusLabel.Text = $"{items.Count} leadership record(s) loaded.";
        }
        catch (Exception ex)
        {
            StatusLabel.Text = "Unable to load leadership records right now.";
            Console.WriteLine($"[LEADERSHIP_PAGE] {ex}");
        }
    }
}
