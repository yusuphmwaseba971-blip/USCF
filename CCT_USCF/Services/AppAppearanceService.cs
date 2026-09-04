using Microsoft.Maui.Graphics;

namespace CCT_USCF.Services;

public sealed class AppAppearanceService
{
    private const string LanguageKey = "app.language";
    private const string BackgroundKey = "app.background";
    private const string ColorKey = "app.background.color";
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
    public Color BackgroundColor
    {
        get
        {
            var value = BackgroundName == "Custom" ? CustomColor :
                Backgrounds.TryGetValue(BackgroundName, out var color) ? color : "#FFFFFF";
            return Color.FromArgb(value);
        }
    }

    public void SetLanguage(string language) => Preferences.Default.Set(LanguageKey, language);
    public void SetBackground(string background) => Preferences.Default.Set(BackgroundKey, background);
    public void SetCustomColor(string color)
    {
        if (Color.TryParse(color, out _))
        {
            Preferences.Default.Set(ColorKey, color);
            SetBackground("Custom");
        }
    }
}
