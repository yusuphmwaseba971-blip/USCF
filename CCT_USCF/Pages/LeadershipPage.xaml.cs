using Microsoft.Maui.Controls.Shapes;
using CCT_USCF.Services;

namespace CCT_USCF.Pages;

public partial class LeadershipPage : ContentPage
{
    private readonly AboutCctUsfcService _service;
    private IReadOnlyList<CctLeadershipItem> _items = Array.Empty<CctLeadershipItem>();
    private CctLeadershipItem? _editingItem;
    private bool _canEdit;

    public LeadershipPage()
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
            System.Diagnostics.Debug.WriteLine($"[LEADERSHIP_PAGE] Unable to load edit role: {ex}");
        }

        AddLeadershipButton.IsVisible = _canEdit;
    }

    private async Task<bool> LoadAsync()
    {
        try
        {
            _items = await _service.GetLeadershipAsync();
            LeadershipStack.Children.Clear();
            if (_items.Count == 0)
            {
                StatusLabel.Text = "No leadership records have been published yet.";
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

                var stack = new VerticalStackLayout { Spacing = 6 };
                stack.Children.Add(new Label { Text = item.PositionName, FontSize = 18, FontAttributes = FontAttributes.Bold, TextColor = Color.FromArgb("#153A2A") });
                stack.Children.Add(new Label { Text = item.UserName, FontSize = 15, TextColor = Color.FromArgb("#2D3D33") });
                AddLeadershipDetail(stack, item.OrganizationName);
                AddLeadershipDetail(stack, item.OrganizationLevel);
                AddLeadershipDetail(stack, item.Term);
                AddLeadershipDetail(stack, item.Description);
                if (_canEdit)
                {
                    var editButton = new Button { Text = "Edit this entry" };
                    editButton.Clicked += (_, _) => ShowEditor(item);
                    stack.Children.Add(editButton);
                }

                card.Content = stack;
                LeadershipStack.Children.Add(card);
            }

            StatusLabel.Text = $"{_items.Count} leadership record(s) loaded.";
            return true;
        }
        catch (Exception ex)
        {
            StatusLabel.Text = "Unable to load leadership records right now.";
            System.Diagnostics.Debug.WriteLine($"[LEADERSHIP_PAGE] {ex}");
            return false;
        }
    }

    private static void AddLeadershipDetail(VerticalStackLayout stack, string? text)
    {
        if (!string.IsNullOrWhiteSpace(text))
            stack.Children.Add(new Label { Text = text, FontSize = 13, TextColor = Color.FromArgb("#6F7A6B"), LineBreakMode = LineBreakMode.WordWrap });
    }

    private void OnAddLeadershipClicked(object? sender, EventArgs e) =>
        ShowEditor(null);

    private void ShowEditor(CctLeadershipItem? item)
    {
        if (!_canEdit) return;
        _editingItem = item;
        LeaderNameEntry.Text = item?.UserName ?? string.Empty;
        LeaderPositionEntry.Text = item?.PositionName ?? string.Empty;
        LeaderLevelEntry.Text = item?.OrganizationLevel ?? string.Empty;
        LeaderOrganizationIdEntry.Text = item?.OrganizationId ?? string.Empty;
        LeaderOrganizationNameEntry.Text = item?.OrganizationName ?? string.Empty;
        LeaderDescriptionEditor.Text = item?.Description ?? string.Empty;
        LeaderTermEntry.Text = item?.Term ?? string.Empty;
        LeadershipEditorPanel.IsVisible = true;
    }

    private void OnCancelLeadershipClicked(object? sender, EventArgs e)
    {
        LeadershipEditorPanel.IsVisible = false;
        _editingItem = null;
    }

    private async void OnSaveLeadershipClicked(object? sender, EventArgs e)
    {
        if (!_canEdit) return;
        var name = LeaderNameEntry.Text?.Trim() ?? string.Empty;
        var position = LeaderPositionEntry.Text?.Trim() ?? string.Empty;
        if (string.IsNullOrWhiteSpace(name) || string.IsNullOrWhiteSpace(position))
        {
            await DisplayAlert("Required information", "Enter the person's full name and position/office.", "OK");
            return;
        }

        var item = _editingItem ?? new CctLeadershipItem();
        item.UserName = name;
        item.PositionName = position;
        item.OrganizationLevel = LeaderLevelEntry.Text?.Trim() ?? string.Empty;
        item.OrganizationId = LeaderOrganizationIdEntry.Text?.Trim() ?? string.Empty;
        item.OrganizationName = LeaderOrganizationNameEntry.Text?.Trim() ?? string.Empty;
        item.Description = LeaderDescriptionEditor.Text?.Trim() ?? string.Empty;
        item.Term = LeaderTermEntry.Text?.Trim() ?? string.Empty;
        SaveLeadershipButton.IsEnabled = false;
        SaveLeadershipButton.Text = "Saving...";
        try
        {
            await _service.SaveLeadershipAsync(item);
            LeadershipEditorPanel.IsVisible = false;
            _editingItem = null;
            if (await LoadAsync())
                await DisplayAlert("Saved", "Leadership information has been saved and refreshed.", "OK");
            else
                await DisplayAlert("Saved", "Leadership information was saved, but could not be refreshed. Reopen this page to load the latest content.", "OK");
        }
        catch (Exception ex)
        {
            StatusLabel.Text = "Leadership information could not be saved.";
            System.Diagnostics.Debug.WriteLine($"[LEADERSHIP_PAGE] Save failed: {ex}");
            await DisplayAlert("Save failed", ex.Message, "OK");
        }
        finally
        {
            SaveLeadershipButton.IsEnabled = true;
            SaveLeadershipButton.Text = "Save";
        }
    }
}
