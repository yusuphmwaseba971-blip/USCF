using Microsoft.Maui.Controls.Shapes;
using CCT_USCF.Services;

namespace CCT_USCF.Pages;

public partial class HistoryPage : ContentPage
{
    private readonly AboutCctUsfcService _service;
    private IReadOnlyList<CctHistoryItem> _items = Array.Empty<CctHistoryItem>();
    private CctHistoryItem? _editingItem;
    private bool _canEdit;

    public HistoryPage()
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
            System.Diagnostics.Debug.WriteLine($"[HISTORY_PAGE] Unable to load edit role: {ex}");
        }

        EditHistoryButton.IsVisible = _canEdit;
        AddHistoryButton.IsVisible = _canEdit;
    }

    private async Task<bool> LoadAsync()
    {
        try
        {
            _items = await _service.GetHistoryAsync();
            HistoryStack.Children.Clear();
            if (_items.Count == 0)
            {
                StatusLabel.Text = "No history has been published for this organization yet.";
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

                var layout = new VerticalStackLayout { Spacing = 8 };
                layout.Children.Add(new Label
                {
                    Text = item.Title,
                    FontSize = 20,
                    FontAttributes = FontAttributes.Bold,
                    TextColor = Color.FromArgb("#153A2A")
                });
                AddHistoryDetail(layout, item.Period);
                AddHistoryDetail(layout, item.OrganizationLevel);
                AddHistoryDetail(layout, item.RecordedBy is { Length: > 0 }
                    ? $"Written/Recorded by {item.RecordedBy}{(string.IsNullOrWhiteSpace(item.RecordedByRole) ? string.Empty : $" · {item.RecordedByRole}")}"
                    : string.Empty);
                AddHistoryDetail(layout, item.Summary);
                AddHistoryDetail(layout, item.Content);
                if (_canEdit)
                {
                    var editButton = new Button { Text = "Edit this record" };
                    editButton.Clicked += (_, _) => ShowEditor(item);
                    layout.Children.Add(editButton);
                }

                card.Content = layout;
                HistoryStack.Children.Add(card);
            }

            StatusLabel.Text = $"{_items.Count} history record(s) loaded.";
            return true;
        }
        catch (Exception ex)
        {
            StatusLabel.Text = "Unable to load the history records right now.";
            System.Diagnostics.Debug.WriteLine($"[HISTORY_PAGE] {ex}");
            return false;
        }
    }

    private static void AddHistoryDetail(VerticalStackLayout layout, string? text)
    {
        if (!string.IsNullOrWhiteSpace(text))
        {
            layout.Children.Add(new Label
            {
                Text = text,
                FontSize = 14,
                TextColor = Color.FromArgb("#2D3D33"),
                LineBreakMode = LineBreakMode.WordWrap
            });
        }
    }

    private void OnEditHistoryClicked(object? sender, EventArgs e) =>
        ShowEditor(_items.FirstOrDefault());

    private void OnAddHistoryClicked(object? sender, EventArgs e) =>
        ShowEditor(null);

    private void ShowEditor(CctHistoryItem? item)
    {
        if (!_canEdit) return;

        _editingItem = item;
        HistoryTitleEntry.Text = item?.Title ?? string.Empty;
        HistoryPeriodEntry.Text = item?.Period ?? string.Empty;
        RecordedByEntry.Text = item?.RecordedBy ?? string.Empty;
        RecordedByRoleEntry.Text = item?.RecordedByRole ?? string.Empty;
        HistoryContentEditor.Text = item?.Content ?? string.Empty;
        HistoryEditorPanel.IsVisible = true;
    }

    private void OnCancelHistoryClicked(object? sender, EventArgs e)
    {
        HistoryEditorPanel.IsVisible = false;
        _editingItem = null;
    }

    private async void OnSaveHistoryClicked(object? sender, EventArgs e)
    {
        if (!_canEdit) return;
        var title = HistoryTitleEntry.Text?.Trim() ?? string.Empty;
        var recordedBy = RecordedByEntry.Text?.Trim() ?? string.Empty;
        var content = HistoryContentEditor.Text?.Trim() ?? string.Empty;
        if (string.IsNullOrWhiteSpace(title) || string.IsNullOrWhiteSpace(recordedBy) || string.IsNullOrWhiteSpace(content))
        {
            await DisplayAlert("Required information", "Enter a title, the person who recorded the information, and the historical description.", "OK");
            return;
        }

        var item = _editingItem ?? new CctHistoryItem();
        item.Title = title;
        item.Period = HistoryPeriodEntry.Text?.Trim() ?? string.Empty;
        item.RecordedBy = recordedBy;
        item.RecordedByRole = RecordedByRoleEntry.Text?.Trim() ?? string.Empty;
        item.Content = content;
        SaveHistoryButtonState(false);
        try
        {
            await _service.SaveHistoryAsync(item);
            HistoryEditorPanel.IsVisible = false;
            _editingItem = null;
            if (await LoadAsync())
                await DisplayAlert("Saved", "History has been saved and refreshed.", "OK");
            else
                await DisplayAlert("Saved", "History was saved, but could not be refreshed. Reopen this page to load the latest content.", "OK");
        }
        catch (Exception ex)
        {
            StatusLabel.Text = "History could not be saved.";
            System.Diagnostics.Debug.WriteLine($"[HISTORY_PAGE] Save failed: {ex}");
            await DisplayAlert("Save failed", ex.Message, "OK");
        }
        finally
        {
            SaveHistoryButtonState(true);
        }
    }

    private void SaveHistoryButtonState(bool enabled)
    {
        SaveHistoryButton.IsEnabled = enabled;
        SaveHistoryButton.Text = enabled ? "Save" : "Saving...";
    }
}
