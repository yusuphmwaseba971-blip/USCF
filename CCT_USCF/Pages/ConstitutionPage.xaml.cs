using Microsoft.Maui.Controls.Shapes;
using CCT_USCF.Services;

namespace CCT_USCF.Pages;

public partial class ConstitutionPage : ContentPage
{
    private readonly AboutCctUsfcService _service;

    public ConstitutionPage()
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
            var items = await _service.GetConstitutionDocumentsAsync();
            DocumentStack.Children.Clear();

            if (items.Count == 0)
            {
                StatusLabel.Text = "No official documents have been published yet.";
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
                stack.Children.Add(new Label { Text = item.Title, FontSize = 18, FontAttributes = FontAttributes.Bold, TextColor = Color.FromArgb("#153A2A") });
                if (!string.IsNullOrWhiteSpace(item.Description))
                    stack.Children.Add(new Label { Text = item.Description, FontSize = 13, TextColor = Color.FromArgb("#3D4F45"), LineBreakMode = LineBreakMode.WordWrap });
                if (!string.IsNullOrWhiteSpace(item.Version))
                    stack.Children.Add(new Label { Text = $"Version: {item.Version}", FontSize = 12, TextColor = Color.FromArgb("#6F7A6B") });
                if (!string.IsNullOrWhiteSpace(item.Url))
                {
                    var button = new Button
                    {
                        Text = "Open document",
                        BackgroundColor = Color.FromArgb("#EAF7EE"),
                        TextColor = Color.FromArgb("#153A2A")
                    };
                    button.Clicked += async (_, _) => await Launcher.OpenAsync(new Uri(item.Url));
                    stack.Children.Add(button);
                }

                card.Content = stack;
                DocumentStack.Children.Add(card);
            }

            StatusLabel.Text = $"{items.Count} document record(s) available.";
        }
        catch (Exception ex)
        {
            StatusLabel.Text = "Unable to load official documents right now.";
            Console.WriteLine($"[CONSTITUTION_PAGE] {ex}");
        }
    }
}
