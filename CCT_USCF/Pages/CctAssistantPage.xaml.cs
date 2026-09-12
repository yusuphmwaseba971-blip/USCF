using CCT_USCF.Services;

namespace CCT_USCF.Pages;

public partial class CctAssistantPage : ContentPage
{
    private readonly ICctAssistantService _assistant;
    private string? _pendingAction;

    public CctAssistantPage()
    {
        InitializeComponent();
        _assistant = MauiProgram.Services.GetRequiredService<ICctAssistantService>();
        var context = _assistant.GetCurrentPageContext();
        ContextLabel.Text = $"You are viewing {context.PageName}";
        foreach (var action in context.QuickActions)
        {
            var button = new Button
            {
                Text = action,
                FontSize = 13,
                Padding = new Thickness(12, 8),
                CornerRadius = 16,
                BackgroundColor = Color.FromArgb("#E4F4E9"),
                TextColor = Color.FromArgb("#075E36")
            };
            button.Clicked += async (_, _) =>
            {
                PromptEditor.Text = action;
                await AskAsync(action);
            };
            QuickActionsLayout.Children.Add(button);
        }
    }

    private async void OnAskClicked(object? sender, EventArgs e) =>
        await AskAsync(PromptEditor.Text);

    private async Task AskAsync(string? prompt)
    {
        if (string.IsNullOrWhiteSpace(prompt))
            return;

        AskButton.IsEnabled = false;
        ThinkingIndicator.IsVisible = ThinkingIndicator.IsRunning = true;
        ResponseLabel.IsVisible = false;
        ActionLayout.IsVisible = false;
        try
        {
            var reply = await _assistant.AskAsync(prompt);
            ResponseLabel.Text = reply.Text;
            ResponseLabel.IsVisible = true;
            _pendingAction = reply.SuggestedAction;
            if (!string.IsNullOrWhiteSpace(_pendingAction))
            {
                ActionButton.Text = _pendingAction;
                ActionLayout.IsVisible = true;
            }
        }
        finally
        {
            ThinkingIndicator.IsVisible = ThinkingIndicator.IsRunning = false;
            AskButton.IsEnabled = true;
        }
    }

    private async void OnActionClicked(object? sender, EventArgs e)
    {
        var action = _pendingAction;
        if (string.IsNullOrWhiteSpace(action))
            return;
        if (action.Equals("Settings", StringComparison.OrdinalIgnoreCase))
            await Shell.Current.GoToAsync(nameof(SettingsPage));
        else if (action.Equals("Home", StringComparison.OrdinalIgnoreCase))
            await Shell.Current.GoToAsync("//home");
        else if (action.Equals("Bible", StringComparison.OrdinalIgnoreCase))
            await Shell.Current.GoToAsync("//bible");
        else if (action.Equals("Prayer Requests", StringComparison.OrdinalIgnoreCase))
            await Shell.Current.GoToAsync("//prayer");
        else if (action.Equals("Community", StringComparison.OrdinalIgnoreCase))
            await Shell.Current.GoToAsync("//community");
        else if (action.Equals("Profile", StringComparison.OrdinalIgnoreCase))
            await Shell.Current.GoToAsync("//profile");
        else if (action.Equals("Church Groups", StringComparison.OrdinalIgnoreCase))
            await Shell.Current.GoToAsync(nameof(ChurchGroupSelectionPage));
        else if (action.Equals("Open Church Announcement", StringComparison.OrdinalIgnoreCase))
            await Shell.Current.GoToAsync(nameof(ChurchAnnouncementPage));
        else
            return;
        await Navigation.PopModalAsync();
    }

    private void OnDismissActionClicked(object? sender, EventArgs e) =>
        ActionLayout.IsVisible = false;

    private async void OnCloseClicked(object? sender, EventArgs e) =>
        await Navigation.PopModalAsync();
}
