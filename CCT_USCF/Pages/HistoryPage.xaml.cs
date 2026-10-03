using Microsoft.Maui.Controls.Shapes;
using CCT_USCF.Services;

namespace CCT_USCF.Pages;

public partial class HistoryPage : ContentPage
{
    private readonly AboutCctUsfcService _service;

    public HistoryPage()
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
            var items = await _service.GetHistoryAsync();
            if (items.Count == 0)
            {
                StatusLabel.Text = "No history has been published for this organization yet.";
                HistoryStack.Children.Clear();
                return;
            }

            HistoryStack.Children.Clear();
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

                var layout = new VerticalStackLayout { Spacing = 8 };
                var header = new Label
                {
                    Text = item.Title,
                    FontSize = 20,
                    FontAttributes = FontAttributes.Bold,
                    TextColor = Color.FromArgb("#153A2A")
                };
                layout.Children.Add(header);

                if (!string.IsNullOrWhiteSpace(item.OrganizationLevel))
                {
                    layout.Children.Add(new Label
                    {
                        Text = item.OrganizationLevel,
                        FontSize = 12,
                        TextColor = Color.FromArgb("#6F7A6B")
                    });
                }

                if (!string.IsNullOrWhiteSpace(item.Summary))
                {
                    layout.Children.Add(new Label
                    {
                        Text = item.Summary,
                        FontSize = 13,
                        TextColor = Color.FromArgb("#3D4F45"),
                        LineBreakMode = LineBreakMode.WordWrap
                    });
                }

                if (!string.IsNullOrWhiteSpace(item.Content))
                {
                    layout.Children.Add(new Label
                    {
                        Text = item.Content,
                        FontSize = 14,
                        TextColor = Color.FromArgb("#2D3D33"),
                        LineBreakMode = LineBreakMode.WordWrap
                    });
                }

                card.Content = layout;
                HistoryStack.Children.Add(card);
            }

            StatusLabel.Text = $"{items.Count} history record(s) loaded.";
        }
        catch (Exception ex)
        {
            StatusLabel.Text = "Unable to load the history records right now.";
            Console.WriteLine($"[HISTORY_PAGE] {ex}");
        }
    }
}
