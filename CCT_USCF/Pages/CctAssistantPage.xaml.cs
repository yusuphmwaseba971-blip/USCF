using CCT_USCF.Services;
using Microsoft.Maui.Controls.Shapes;
using System.Text.RegularExpressions;

namespace CCT_USCF.Pages;

public partial class CctAssistantPage : ContentPage
{
    private readonly ICctAssistantService _assistant;
    private bool _isClosing;
    private bool _hasOpened;
    private string _lastResponseText = string.Empty;

    public CctAssistantPage()
    {
        InitializeComponent();
        _assistant = MauiProgram.Services.GetRequiredService<ICctAssistantService>();
        var context = _assistant.GetCurrentPageContext();
        ContextLabel.Text = $"You are viewing {context.PageName}";
        foreach (var action in context.QuickActions)
        {
            var button = new Border
            {
                HeightRequest = 48,
                Padding = new Thickness(14, 0),
                BackgroundColor = Color.FromArgb("#66FFFFFF"),
                Stroke = Color.FromArgb("#55FFFFFF"),
                StrokeThickness = 1,
                StrokeShape = new RoundRectangle { CornerRadius = new CornerRadius(14) },
                Content = new Label
                {
                    Text = action,
                    FontSize = 14,
                    TextColor = Colors.White,
                    VerticalOptions = LayoutOptions.Center
                }
            };
            var tap = new TapGestureRecognizer();
            tap.Tapped += async (_, _) =>
            {
                PromptEditor.Text = action;
                await AskAsync(action);
            };
            button.GestureRecognizers.Add(tap);
            button.GestureRecognizers.Add(CreatePressGesture(button));
            QuickActionsLayout.Children.Add(button);
        }
    }

    protected override async void OnAppearing()
    {
        base.OnAppearing();
        if (_hasOpened)
            return;

        await MainThread.InvokeOnMainThreadAsync(AnimatePanelAsync);
    }

    private static PanGestureRecognizer CreatePressGesture(Border row)
    {
        var gesture = new PanGestureRecognizer();
        gesture.PanUpdated += async (_, args) =>
        {
            if (args.StatusType == GestureStatus.Started)
                await row.TranslateTo(0, -2, 80, Easing.CubicOut);
            else if (args.StatusType is GestureStatus.Completed or GestureStatus.Canceled)
                await row.TranslateTo(0, 0, 100, Easing.CubicIn);
        };
        return gesture;
    }

    private async Task AnimatePanelAsync()
    {
        for (var attempt = 0; attempt < 10 && Panel.Width <= 0; attempt++)
            await Task.Delay(16);

        if (Panel.Width <= 0)
            throw new InvalidOperationException("USCF Assistance panel was not laid out before opening.");

        Panel.AbortAnimation("TranslateTo");
        Panel.TranslationX = Panel.Width;
        await Panel.TranslateTo(0, 0, 240, Easing.CubicOut);
        _hasOpened = true;
    }

    private async void OnAskClicked(object? sender, EventArgs e) =>
        await AskAsync(PromptEditor.Text);

    private void OnPromptTextChanged(object? sender, TextChangedEventArgs e)
    {
        var lineCount = Math.Max(1, (e.NewTextValue ?? string.Empty).Split('\n').Length);
        PromptEditor.HeightRequest = Math.Clamp(48 + (lineCount - 1) * 24, 48, 120);
    }

    private async Task AskAsync(string? prompt)
    {
        if (string.IsNullOrWhiteSpace(prompt))
            return;

        AskSurface.IsEnabled = false;
        ThinkingIndicator.IsVisible = ThinkingIndicator.IsRunning = true;
        ResponseLayout.IsVisible = false;
        CopyResponseButton.IsVisible = false;
        ActionLayout.IsVisible = false;
        try
        {
            var reply = await _assistant.AskAsync(prompt);
            await MainThread.InvokeOnMainThreadAsync(() =>
            {
                _lastResponseText = reply.Text;
                RenderMarkdown(reply.Text);
                RenderContextualActions(reply.ContextualActions);
                ResponseLayout.IsVisible = true;
                CopyResponseButton.IsVisible = !string.IsNullOrWhiteSpace(_lastResponseText);
                CopyResponseButton.Text = "Copy";
            });

            if (reply.ContextualActions.Count > 0 &&
                IsDirectNavigationRequest(prompt, reply.ContextualActions))
            {
                await ExecuteActionAsync(reply.ContextualActions[0].Target);
            }
        }
        finally
        {
            await MainThread.InvokeOnMainThreadAsync(() =>
            {
                ThinkingIndicator.IsVisible = ThinkingIndicator.IsRunning = false;
                AskSurface.IsEnabled = true;
            });
        }
    }

    private async void OnActionClicked(object? sender, EventArgs e)
    {
        if (sender is Button { CommandParameter: CctNavigationTarget target })
            await ExecuteActionAsync(target);
    }

    private async Task ExecuteActionAsync(CctNavigationTarget target)
    {
        try
        {
            var route = CctNavigation.GetRoute(target);
            if (Navigation.ModalStack.LastOrDefault() is CctAssistantPage)
                await Navigation.PopModalAsync(animated: false);

            await Shell.Current.GoToAsync(route);
        }
        catch (Exception ex)
        {
            System.Diagnostics.Debug.WriteLine(
                $"[USCF ASSISTANCE] navigation_failed target={target} {ex}");
            RenderMarkdown(
                $"I couldn't open {CctNavigation.GetLabel(target).Replace("Open ", string.Empty, StringComparison.Ordinal)} right now. " +
                "Please try opening it from the app's normal navigation.");
            ResponseLayout.IsVisible = true;
        }
    }

    private async void OnCopyResponseClicked(object? sender, EventArgs e)
    {
        if (string.IsNullOrWhiteSpace(_lastResponseText))
            return;

        await Clipboard.Default.SetTextAsync(_lastResponseText);
        CopyResponseButton.Text = "Copied";
        await Task.Delay(1200);
        if (!_isClosing)
            CopyResponseButton.Text = "Copy";
    }

    private static bool IsDirectNavigationRequest(
        string prompt,
        IReadOnlyList<CctAssistantAction> actions) =>
        actions.Count == 1 &&
        (prompt.Contains("take me", StringComparison.OrdinalIgnoreCase)
         || prompt.Contains("go to", StringComparison.OrdinalIgnoreCase)
         || prompt.Contains("open", StringComparison.OrdinalIgnoreCase)
         || prompt.Contains("show me", StringComparison.OrdinalIgnoreCase)
         || prompt.Contains("go home", StringComparison.OrdinalIgnoreCase)
         || prompt.Contains("fungua", StringComparison.OrdinalIgnoreCase)
         || prompt.Contains("nenda", StringComparison.OrdinalIgnoreCase)
         || prompt.Contains("onyesha", StringComparison.OrdinalIgnoreCase)
         || prompt.Contains("peleka", StringComparison.OrdinalIgnoreCase));

    private void OnDismissActionClicked(object? sender, EventArgs e) =>
        ActionLayout.IsVisible = false;

    private void RenderContextualActions(IReadOnlyList<CctAssistantAction> actions)
    {
        ContextualActionsLayout.Children.Clear();
        foreach (var action in actions)
        {
            ContextualActionsLayout.Children.Add(new Button
            {
                Text = action.Label,
                CommandParameter = action.Target,
                BackgroundColor = Color.FromArgb("#D8F1E2"),
                TextColor = Color.FromArgb("#123B2A"),
                CornerRadius = 16,
                HeightRequest = 48
            });
            ((Button)ContextualActionsLayout.Children[^1]).Clicked += OnActionClicked;
        }

        ActionLayout.IsVisible = actions.Count > 0;
    }

    private async void OnOutsideTapped(object? sender, TappedEventArgs e) =>
        await CloseAsync();

    private async void OnCloseClicked(object? sender, EventArgs e) =>
        await CloseAsync();

    private async Task CloseAsync()
    {
        if (_isClosing || Navigation.ModalStack.LastOrDefault() is not CctAssistantPage)
            return;
        _isClosing = true;
        try
        {
            Panel.AbortAnimation("TranslateTo");
            if (Panel.Width > 0)
                await Panel.TranslateTo(Panel.Width, 0, 180, Easing.CubicIn);

            if (Navigation.ModalStack.LastOrDefault() is CctAssistantPage)
                await Navigation.PopModalAsync(animated: false);
        }
        finally
        {
            _isClosing = false;
        }
    }

    protected override void OnDisappearing()
    {
        Panel.AbortAnimation("TranslateTo");
        base.OnDisappearing();
    }

    private void RenderMarkdown(string markdown)
    {
        ResponseLayout.Children.Clear();
        var lines = markdown.Replace("\r\n", "\n").Split('\n');
        var inCode = false;
        var codeLines = new List<string>();

        foreach (var line in lines)
        {
            if (line.TrimStart().StartsWith("```", StringComparison.Ordinal))
            {
                if (inCode)
                {
                    AddCodeBlock(string.Join(Environment.NewLine, codeLines));
                    codeLines.Clear();
                }
                inCode = !inCode;
                continue;
            }

            if (inCode)
            {
                codeLines.Add(line);
                continue;
            }

            var trimmed = line.Trim();
            if (trimmed.Length == 0)
                continue;

            var heading = Regex.Match(trimmed, @"^(#{1,6})\s+(.+)$");
            if (heading.Success)
            {
                AddInlineLabel(heading.Groups[2].Value, 18, true, 4);
                continue;
            }

            var bullet = Regex.Match(trimmed, @"^[-*+]\s+(.+)$");
            if (bullet.Success)
            {
                AddInlineLabel($"•  {bullet.Groups[1].Value}", 15, false, 0);
                continue;
            }

            var numbered = Regex.Match(trimmed, @"^\d+[.)]\s+(.+)$");
            if (numbered.Success)
            {
                AddInlineLabel(trimmed, 15, false, 0);
                continue;
            }

            AddInlineLabel(trimmed, 15, false, 0);
        }

        if (inCode && codeLines.Count > 0)
            AddCodeBlock(string.Join(Environment.NewLine, codeLines));
    }

    private void AddInlineLabel(string text, double fontSize, bool bold, double topMargin)
    {
        var label = new Label
        {
            FontSize = fontSize,
            TextColor = Colors.White,
            LineBreakMode = LineBreakMode.WordWrap,
            LineHeight = 1.2,
            Margin = new Thickness(0, topMargin, 0, 0),
            FormattedText = ParseInlineMarkdown(text, bold)
        };
        ResponseLayout.Children.Add(label);
    }

    private void AddCodeBlock(string code)
    {
        ResponseLayout.Children.Add(new Border
        {
            Padding = 10,
            BackgroundColor = Color.FromArgb("#33000000"),
            StrokeThickness = 0,
            StrokeShape = new RoundRectangle { CornerRadius = new CornerRadius(8) },
            Content = new Label
            {
                Text = code,
                FontFamily = "monospace",
                FontSize = 13,
                TextColor = Color.FromArgb("#E6F4EA"),
                LineBreakMode = LineBreakMode.WordWrap
            }
        });
    }

    private static FormattedString ParseInlineMarkdown(string text, bool forceBold = false)
    {
        var formatted = new FormattedString();
        var pattern = new Regex(@"(\*\*(.+?)\*\*|\*(.+?)\*|`(.+?)`)");
        var position = 0;
        foreach (Match match in pattern.Matches(text))
        {
            if (match.Index > position)
                formatted.Spans.Add(new Span { Text = text[position..match.Index] });

            var bold = match.Groups[2].Success || forceBold;
            var italic = match.Groups[3].Success;
            formatted.Spans.Add(new Span
            {
                Text = match.Groups[2].Success ? match.Groups[2].Value :
                    match.Groups[3].Success ? match.Groups[3].Value : match.Groups[4].Value,
                FontAttributes = bold ? FontAttributes.Bold :
                    italic ? FontAttributes.Italic : FontAttributes.None,
                FontFamily = match.Groups[4].Success ? "monospace" : null
            });
            position = match.Index + match.Length;
        }

        if (position < text.Length)
            formatted.Spans.Add(new Span { Text = text[position..], FontAttributes = forceBold ? FontAttributes.Bold : FontAttributes.None });
        if (formatted.Spans.Count == 0)
            formatted.Spans.Add(new Span { Text = text, FontAttributes = forceBold ? FontAttributes.Bold : FontAttributes.None });
        return formatted;
    }
}
