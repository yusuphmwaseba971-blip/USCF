using Microsoft.Maui.Controls.Shapes;
using CCT_USCF.Services;

namespace CCT_USCF.Pages;

public partial class MissionVisionPage : ContentPage
{
    private readonly AboutCctUsfcService _service;
    private IReadOnlyList<CctMissionVisionItem> _items = Array.Empty<CctMissionVisionItem>();
    private CctMissionVisionItem? _editingItem;
    private bool _canEdit;

    public MissionVisionPage()
    {
        InitializeComponent();
        _service = MauiProgram.Services.GetRequiredService<AboutCctUsfcService>();
    }

    protected override async void OnAppearing()
    {
        base.OnAppearing();
        await LoadRoleAsync();
        await LoadAsync();
    }

    private async Task LoadRoleAsync()
    {
        try
        {
            var user = MauiProgram.CurrentUser
                ?? await MauiProgram.CreateAuthServiceForPages().GetCurrentUserAsync();
            if (user is not null && MauiProgram.CurrentUser is null)
                MauiProgram.SetCurrentUser(user);
            _canEdit = string.Equals(user?.Role?.Trim(), "Leader", StringComparison.OrdinalIgnoreCase);
        }
        catch (Exception ex)
        {
            _canEdit = false;
            System.Diagnostics.Debug.WriteLine($"[MISSION_VISION_PAGE] Unable to load edit role: {ex}");
        }

        EditMissionButton.IsVisible = _canEdit;
        AddMissionButton.IsVisible = _canEdit;
    }

    private async Task<bool> LoadAsync()
    {
        try
        {
            _items = await _service.GetMissionVisionAsync();
            MissionVisionStack.Children.Clear();
            if (_items.Count == 0)
            {
                StatusLabel.Text = "No mission and vision content has been published yet.";
                return true;
            }

            foreach (var item in _items)
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
                    stack.Children.Add(new Label
                    {
                        Text = item.OrganizationLevel,
                        FontSize = 12,
                        FontAttributes = FontAttributes.Bold,
                        TextColor = Color.FromArgb("#6F7A6B")
                    });
                AddStatement(stack, "Mission", item.Mission);
                AddStatement(stack, "Vision", item.Vision);
                if (_canEdit)
                {
                    var editButton = new Button { Text = "Edit this statement" };
                    editButton.Clicked += (_, _) => ShowEditor(item);
                    stack.Children.Add(editButton);
                }

                card.Content = stack;
                MissionVisionStack.Children.Add(card);
            }

            StatusLabel.Text = $"{_items.Count} mission and vision record(s) available.";
            return true;
        }
        catch (Exception ex)
        {
            StatusLabel.Text = "Unable to load mission and vision information right now.";
            System.Diagnostics.Debug.WriteLine($"[MISSION_VISION_PAGE] {ex}");
            return false;
        }
    }

    private static void AddStatement(VerticalStackLayout stack, string heading, string value)
    {
        if (string.IsNullOrWhiteSpace(value)) return;
        stack.Children.Add(new Label { Text = heading, FontSize = 16, FontAttributes = FontAttributes.Bold, TextColor = Color.FromArgb("#153A2A") });
        stack.Children.Add(new Label { Text = value, FontSize = 14, TextColor = Color.FromArgb("#2D3D33"), LineBreakMode = LineBreakMode.WordWrap });
    }

    private void OnEditMissionClicked(object? sender, EventArgs e) =>
        ShowEditor(_items.FirstOrDefault());

    private void OnAddMissionClicked(object? sender, EventArgs e) =>
        ShowEditor(null);

    private void ShowEditor(CctMissionVisionItem? item)
    {
        if (!_canEdit) return;
        _editingItem = item;
        MissionEditor.Text = item?.Mission ?? string.Empty;
        VisionEditor.Text = item?.Vision ?? string.Empty;
        MissionEditorPanel.IsVisible = true;
    }

    private void OnCancelMissionClicked(object? sender, EventArgs e)
    {
        MissionEditorPanel.IsVisible = false;
        _editingItem = null;
    }

    private async void OnSaveMissionClicked(object? sender, EventArgs e)
    {
        if (!_canEdit) return;
        var mission = MissionEditor.Text?.Trim() ?? string.Empty;
        if (string.IsNullOrWhiteSpace(mission))
        {
            await DisplayAlert("Required information", "Enter the Mission Statement before saving.", "OK");
            return;
        }

        var item = _editingItem ?? new CctMissionVisionItem();
        item.Mission = mission;
        item.Vision = VisionEditor.Text?.Trim() ?? string.Empty;
        SaveMissionButton.IsEnabled = false;
        SaveMissionButton.Text = "Saving...";
        try
        {
            await _service.SaveMissionVisionAsync(item);
            MissionEditorPanel.IsVisible = false;
            _editingItem = null;
            if (await LoadAsync())
                await DisplayAlert("Saved", "Mission and Vision have been saved and refreshed.", "OK");
            else
                await DisplayAlert("Saved", "Mission and Vision were saved, but could not be refreshed. Reopen this page to load the latest content.", "OK");
        }
        catch (Exception ex)
        {
            StatusLabel.Text = "Mission and Vision could not be saved.";
            System.Diagnostics.Debug.WriteLine($"[MISSION_VISION_PAGE] Save failed: {ex}");
            await DisplayAlert("Save failed", ex.Message, "OK");
        }
        finally
        {
            SaveMissionButton.IsEnabled = true;
            SaveMissionButton.Text = "Save";
        }
    }
}
