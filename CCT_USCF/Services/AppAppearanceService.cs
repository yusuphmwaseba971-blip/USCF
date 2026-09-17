using Microsoft.Maui.Graphics;

namespace CCT_USCF.Services;

public sealed class AppAppearanceService
{
    public event EventHandler? AppearanceChanged;
    private const string LanguageKey = "app.language";
    private const string BackgroundKey = "app.background";
    private const string ColorKey = "app.background.color";
    private const string FontPreferenceKey = "app.font.preference";
    private const string FontSizePreferenceKey = "app.font.size";
    public static readonly IReadOnlyDictionary<string, string> Languages =
        new Dictionary<string, string> { ["English"] = "en", ["Kiswahili"] = "sw" };
    public static readonly IReadOnlyDictionary<string, string> Backgrounds =
        new Dictionary<string, string>
        {
            ["White"] = "#FFFFFF", ["Blue"] = "#E8F1FB", ["Green"] = "#E8F5EE",
            ["Cream"] = "#FFF8E7", ["Purple"] = "#F2ECFA", ["Gray"] = "#EEF2F5",
            ["Dark"] = "#18202B", ["Soft gradient"] = "#EAF2FF"
        };

    public string Language => Preferences.Default.Get(LanguageKey, "en");
    public string BackgroundName => Preferences.Default.Get(BackgroundKey, "White");
    public string CustomColor => Preferences.Default.Get(ColorKey, "#FFFFFF");
    public string FontPreference => Preferences.Default.Get(FontPreferenceKey, "CCT-USCF Default");
    public string FontSizePreference => Preferences.Default.Get(FontSizePreferenceKey, "Medium");
    public static readonly IReadOnlyList<string> FontPreferences =
        ["System", "CCT-USCF Default", "Readable", "Modern"];
    public static readonly IReadOnlyList<string> FontSizePreferences =
        ["System", "Small", "Medium", "Large"];
    public string? ChatFontFamily =>
        string.Equals(FontPreference, "System", StringComparison.OrdinalIgnoreCase)
            ? null
            : "OpenSansRegular";
    public double ChatFontScale =>
        FontSizePreference switch
        {
            "Small" => 0.92,
            "Large" => 1.12,
            _ => 1.0
        };

    public void ApplyTypography()
    {
        var resources = Application.Current?.Resources;
        if (resources == null)
            return;

        resources["AppFontFamily"] =
            string.Equals(
                FontPreference,
                "System",
                StringComparison.OrdinalIgnoreCase)
                ? "sans"
                : "OpenSansRegular";

        resources["AppFontSize"] = 14d * ChatFontScale;
        resources["AppSmallFontSize"] = 12d * ChatFontScale;
        resources["AppCaptionFontSize"] = 11d * ChatFontScale;
    }
    public Color BackgroundColor
    {
        get
        {
            var value = BackgroundName == "Custom" ? CustomColor :
                Backgrounds.TryGetValue(BackgroundName, out var color) ? color : "#FFFFFF";
            return Color.FromArgb(value);
        }
    }

    public void SetLanguage(string language)
    {
        if (!Languages.Values.Contains(language, StringComparer.OrdinalIgnoreCase))
            throw new ArgumentException("Unsupported application language.", nameof(language));
        Preferences.Default.Set(LanguageKey, language);
        AppearanceChanged?.Invoke(this, EventArgs.Empty);
    }
    public void SetBackground(string background)
    {
        if (!Backgrounds.ContainsKey(background) && !string.Equals(background, "Custom", StringComparison.OrdinalIgnoreCase))
            throw new ArgumentException("Unsupported application background.", nameof(background));
        Preferences.Default.Set(BackgroundKey, background);
        ApplyTypography();
        AppearanceChanged?.Invoke(this, EventArgs.Empty);
    }
    public void SetCustomColor(string color)
    {
        if (Color.TryParse(color, out _))
        {
            Preferences.Default.Set(ColorKey, color);
            SetBackground("Custom");
        }
    }

    public void SetFontPreference(string preference)
    {
        if (!FontPreferences.Contains(preference, StringComparer.OrdinalIgnoreCase))
            throw new ArgumentException("Unsupported font preference.", nameof(preference));
        Preferences.Default.Set(FontPreferenceKey, preference);
        ApplyTypography();
        AppearanceChanged?.Invoke(this, EventArgs.Empty);
    }

    public void SetFontSizePreference(string preference)
    {
        if (!FontSizePreferences.Contains(preference, StringComparer.OrdinalIgnoreCase))
            throw new ArgumentException("Unsupported font size preference.", nameof(preference));
        Preferences.Default.Set(FontSizePreferenceKey, preference);
        ApplyTypography();
        AppearanceChanged?.Invoke(this, EventArgs.Empty);
    }
}
