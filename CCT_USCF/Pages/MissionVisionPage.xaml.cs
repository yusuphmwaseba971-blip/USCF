using Microsoft.Maui.Controls.Shapes;
using CCT_USCF.Services;

namespace CCT_USCF.Pages;

public partial class MissionVisionPage : ContentPage
{
    private readonly AboutCctUsfcService _service;

    public MissionVisionPage()
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
            var items = await _service.GetMissionVisionAsync();
            MissionVisionStack.Children.Clear();

            if (items.Count == 0)
            {
                StatusLabel.Text = "No mission and vision content has been published yet.";
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

                var stack = new VerticalStackLayout { Spacing = 8 };
                if (!string.IsNullOrWhiteSpace(item.OrganizationLevel))
                {
                    stack.Children.Add(new Label
                    {
                        Text = item.OrganizationLevel,
                        FontSize = 12,
                        FontAttributes = FontAttributes.Bold,
                        TextColor = Color.FromArgb("#6F7A6B")
                    });
                }

                if (!string.IsNullOrWhiteSpace(item.Mission))
                {
                    stack.Children.Add(new Label { Text = "Mission", FontSize = 16, FontAttributes = FontAttributes.Bold, TextColor = Color.FromArgb("#153A2A") });
                    stack.Children.Add(new Label { Text = item.Mission, FontSize = 14, TextColor = Color.FromArgb("#2D3D33"), LineBreakMode = LineBreakMode.WordWrap });
                }

                if (!string.IsNullOrWhiteSpace(item.Vision))
                {
                    stack.Children.Add(new Label { Text = "Vision", FontSize = 16, FontAttributes = FontAttributes.Bold, TextColor = Color.FromArgb("#153A2A") });
                    stack.Children.Add(new Label { Text = item.Vision, FontSize = 14, TextColor = Color.FromArgb("#2D3D33"), LineBreakMode = LineBreakMode.WordWrap });
                }

                card.Content = stack;
                MissionVisionStack.Children.Add(card);
            }

            StatusLabel.Text = $"{items.Count} mission and vision record(s) available.";
        }
        catch (Exception ex)
        {
            StatusLabel.Text = "Unable to load mission and vision information right now.";
            Console.WriteLine($"[MISSION_VISION_PAGE] {ex}");
        }
    }
}
