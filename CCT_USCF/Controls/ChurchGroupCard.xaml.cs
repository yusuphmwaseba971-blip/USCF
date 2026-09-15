using CCT_USCF.Models;

namespace CCT_USCF.Controls;

public partial class ChurchGroupCard : ContentView
{
    public static readonly BindableProperty GroupNameProperty =
        BindableProperty.Create(nameof(GroupName), typeof(string), typeof(ChurchGroupCard), string.Empty);

    public static readonly BindableProperty ScopeLabelProperty =
        BindableProperty.Create(nameof(ScopeLabel), typeof(string), typeof(ChurchGroupCard), string.Empty);

    public static readonly BindableProperty MemberSummaryProperty =
        BindableProperty.Create(nameof(MemberSummary), typeof(string), typeof(ChurchGroupCard), string.Empty);

    public static readonly BindableProperty IconProperty =
        BindableProperty.Create(nameof(Icon), typeof(string), typeof(ChurchGroupCard), "✝");

    public static readonly BindableProperty AccentProperty =
        BindableProperty.Create(nameof(Accent), typeof(Color), typeof(ChurchGroupCard), Color.FromArgb("#2F7D52"));

    public static readonly BindableProperty AccentBorderProperty =
        BindableProperty.Create(nameof(AccentBorder), typeof(Color), typeof(ChurchGroupCard), Color.FromArgb("#BFD8C8"));

    public static readonly BindableProperty AccentBackgroundProperty =
        BindableProperty.Create(nameof(AccentBackground), typeof(Color), typeof(ChurchGroupCard), Color.FromArgb("#EEF7F0"));

    public static readonly BindableProperty GroupProperty =
        BindableProperty.Create(nameof(Group), typeof(ChurchGroup), typeof(ChurchGroupCard));

    public event EventHandler? Clicked;

    public ChurchGroupCard()
    {
        InitializeComponent();
        var tap = new TapGestureRecognizer();
        tap.Tapped += OnTapped;
        GestureRecognizers.Add(tap);
    }

    public ChurchGroup? Group
    {
        get => (ChurchGroup?)GetValue(GroupProperty);
        set => SetValue(GroupProperty, value);
    }

    public string GroupName
    {
        get => (string)GetValue(GroupNameProperty);
        set => SetValue(GroupNameProperty, value);
    }

    public string ScopeLabel
    {
        get => (string)GetValue(ScopeLabelProperty);
        set => SetValue(ScopeLabelProperty, value);
    }

    public string MemberSummary
    {
        get => (string)GetValue(MemberSummaryProperty);
        set => SetValue(MemberSummaryProperty, value);
    }

    public string Icon
    {
        get => (string)GetValue(IconProperty);
        set => SetValue(IconProperty, value);
    }

    public Color Accent
    {
        get => (Color)GetValue(AccentProperty);
        set => SetValue(AccentProperty, value);
    }

    public Color AccentBorder
    {
        get => (Color)GetValue(AccentBorderProperty);
        set => SetValue(AccentBorderProperty, value);
    }

    public Color AccentBackground
    {
        get => (Color)GetValue(AccentBackgroundProperty);
        set => SetValue(AccentBackgroundProperty, value);
    }

    private async void OnTapped(object? sender, TappedEventArgs e)
    {
        await this.ScaleTo(0.985, 60, Easing.CubicOut);
        await this.ScaleTo(1, 80, Easing.CubicIn);
        Clicked?.Invoke(this, EventArgs.Empty);
    }
}
