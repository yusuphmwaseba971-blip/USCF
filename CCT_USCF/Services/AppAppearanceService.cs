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
        new Dictionary<string, string> { ["English"] = "en", ["Swahili"] = "sw" };
    public static readonly IReadOnlyDictionary<string, string> Backgrounds =
        new Dictionary<string, string>
        {
            ["System"] = string.Empty,
            ["White"] = "#FFFFFF", ["Blue"] = "#E8F1FB", ["Green"] = "#E8F5EE",
            ["Cream"] = "#FFF8E7", ["Purple"] = "#F2ECFA", ["Gray"] = "#EEF2F5",
            ["Dark"] = "#18202B", ["Soft gradient"] = "#EAF2FF"
        };

    public string Language => Preferences.Default.Get(LanguageKey, "en");
    public string BackgroundName => Preferences.Default.Get(BackgroundKey, "System");
    public string CustomColor => Preferences.Default.Get(ColorKey, "#FFFFFF");
    public string FontPreference => "System";
    public string FontSizePreference => Preferences.Default.Get(FontSizePreferenceKey, "Medium");
    public static readonly IReadOnlyList<string> FontPreferences = ["System"];
    public static readonly IReadOnlyList<string> FontSizePreferences =
        ["System", "Small", "Medium", "Large"];
    public string? ChatFontFamily => null;
    public double ChatFontScale =>
        FontSizePreference switch
        {
            "Small" => 0.92,
            "Large" => 1.12,
            _ => 1.0
        };

    public string GetText(string key, params object?[] arguments)
    {
        var value = AppLocalization.Get(key, Language);
        return arguments.Length == 0
            ? value
            : string.Format(System.Globalization.CultureInfo.InvariantCulture, value, arguments);
    }

    public void Initialize()
    {
        NormalizePreferences();
        ApplyLanguage();
        ApplyAppearance();
    }

    private void NormalizePreferences()
    {
        if (!Languages.Values.Contains(Language, StringComparer.OrdinalIgnoreCase))
            Preferences.Default.Set(LanguageKey, "en");

        var background = Backgrounds.Keys.FirstOrDefault(
            key => string.Equals(key, BackgroundName, StringComparison.OrdinalIgnoreCase));
        if (background != null)
        {
            Preferences.Default.Set(BackgroundKey, background);
        }
        else if (string.Equals(BackgroundName, "Custom", StringComparison.OrdinalIgnoreCase) &&
                 Color.TryParse(CustomColor, out _))
        {
            Preferences.Default.Set(BackgroundKey, "Custom");
        }
        else
        {
            Preferences.Default.Set(BackgroundKey, "System");
        }

        if (!Color.TryParse(CustomColor, out _))
            Preferences.Default.Set(ColorKey, "#FFFFFF");

        if (!FontSizePreferences.Contains(FontSizePreference, StringComparer.OrdinalIgnoreCase))
            Preferences.Default.Set(FontSizePreferenceKey, "Medium");
    }

    public void ApplyTypography()
    {
        var resources = Application.Current?.Resources;
        if (resources == null)
            return;

        resources["AppFontSize"] = 14d * ChatFontScale;
        resources["AppSmallFontSize"] = 12d * ChatFontScale;
        resources["AppCaptionFontSize"] = 11d * ChatFontScale;
    }
    public Color BackgroundColor
    {
        get
        {
            if (string.Equals(BackgroundName, "System", StringComparison.OrdinalIgnoreCase))
            {
                return Application.Current?.RequestedTheme == AppTheme.Dark
                    ? Color.FromArgb("#121212")
                    : Color.FromArgb("#F4F8F5");
            }

            var value = string.Equals(BackgroundName, "Custom", StringComparison.OrdinalIgnoreCase)
                ? CustomColor
                : Backgrounds.TryGetValue(BackgroundName, out var color) ? color : "#F4F8F5";
            return Color.FromArgb(value);
        }
    }

    public void ApplyAppearance()
    {
        if (Application.Current is { } application)
            application.Resources["AppPageBackground"] = BackgroundColor;
        ApplyTypography();
    }

    private void ApplyLanguage()
    {
        if (Application.Current is { } application)
            AppLocalization.Apply(application.Resources, Language);
    }

    public void NotifySystemThemeChanged()
    {
        ApplyAppearance();
        AppearanceChanged?.Invoke(this, EventArgs.Empty);
    }

    public void SetLanguage(string language)
    {
        if (!Languages.Values.Contains(language, StringComparer.OrdinalIgnoreCase))
            throw new ArgumentException("Unsupported application language.", nameof(language));
        var normalizedLanguage = language.ToLowerInvariant();
        Preferences.Default.Set(LanguageKey, normalizedLanguage);
        ApplyLanguage();
        AppearanceChanged?.Invoke(this, EventArgs.Empty);
    }

    public void SetBackground(string background)
    {
        var normalizedBackground = Backgrounds.Keys.FirstOrDefault(
            key => string.Equals(key, background, StringComparison.OrdinalIgnoreCase));
        if (normalizedBackground == null &&
            !string.Equals(background, "Custom", StringComparison.OrdinalIgnoreCase))
            throw new ArgumentException("Unsupported application background.", nameof(background));
        Preferences.Default.Set(BackgroundKey, normalizedBackground ?? "Custom");
        ApplyAppearance();
        AppearanceChanged?.Invoke(this, EventArgs.Empty);
    }

    public void SetCustomColor(string color)
    {
        if (!Color.TryParse(color, out _))
            throw new ArgumentException("Unsupported application background color.", nameof(color));

        Preferences.Default.Set(ColorKey, color);
        Preferences.Default.Set(BackgroundKey, "Custom");
        ApplyAppearance();
        AppearanceChanged?.Invoke(this, EventArgs.Empty);
    }

    public void SetFontPreference(string preference)
    {
        if (!string.Equals(preference, "System", StringComparison.OrdinalIgnoreCase))
            throw new ArgumentException("Unsupported font preference.", nameof(preference));
        Preferences.Default.Set(FontPreferenceKey, "System");
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
