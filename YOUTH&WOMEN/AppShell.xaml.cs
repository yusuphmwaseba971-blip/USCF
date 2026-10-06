using Microsoft.Maui.Controls;
using Microsoft.Maui.Graphics;

namespace YouthWomenEmpowermentApp;

public sealed class AppShell : Shell
{
    public AppShell()
    {
        Title = "Youth & Women Empowerment";
        FlyoutBehavior = FlyoutBehavior.Disabled;
        BackgroundColor = AppColors.Primary;
        ForegroundColor = Colors.White;

        var tabs = new TabBar();
        tabs.Items.Add(CreateTab("Home", "⌂", new HomePage()));
        tabs.Items.Add(CreateTab("Opportunities", "◈", new OpportunitiesPage()));
        tabs.Items.Add(CreateTab("Community", "♧", new CommunityPage()));
        tabs.Items.Add(CreateTab("Admin", "⚙", new AdminPage()));
        tabs.Items.Add(CreateTab("Profile", "●", new ProfilePage()));
        Items.Add(tabs);
    }

    private static Tab CreateTab(string title, string glyph, Page page) =>
        new()
        {
            Title = title,
            Icon = new FontImageSource
            {
                Glyph = glyph,
                Color = AppColors.Primary,
                Size = 20
            },
            Items =
            {
                new ShellContent { Title = title, Content = page }
            }
        };
}

public static class AppColors
{
    public static readonly Color Primary = Color.FromArgb("#173B8F");
    public static readonly Color Secondary = Color.FromArgb("#2E7D6B");
    public static readonly Color Background = Color.FromArgb("#F6F8FC");
    public static readonly Color Text = Color.FromArgb("#172033");
    public static readonly Color Muted = Color.FromArgb("#6B7280");
    public static readonly Color Border = Color.FromArgb("#E5E7EB");
    public static readonly Color Success = Color.FromArgb("#198754");
    public static readonly Color Warning = Color.FromArgb("#F59E0B");
    public static readonly Color Purple = Color.FromArgb("#7048E8");
    public static readonly Color LightBlue = Color.FromArgb("#EAF2FF");
    public static readonly Color LightGreen = Color.FromArgb("#EAF8F3");
    public static readonly Color LightPurple = Color.FromArgb("#F1ECFF");
    public static readonly Color LightOrange = Color.FromArgb("#FFF1E6");
}

internal static class UI
{
    public static Label Title(string text, double size = 25) =>
        new()
        {
            Text = text,
            FontSize = size,
            FontAttributes = FontAttributes.Bold,
            TextColor = AppColors.Text
        };

    public static Label Subtitle(string text) =>
        new()
        {
            Text = text,
            FontSize = 14,
            TextColor = AppColors.Muted
        };

    public static Label Small(string text) =>
        new()
        {
            Text = text,
            FontSize = 12,
            TextColor = AppColors.Muted
        };

    public static VerticalStackLayout PageContent(double spacing = 8) =>
        new()
        {
            Padding = new Thickness(20, 18),
            Spacing = spacing
        };

    public static ContentPage Page(string title, View content) =>
        new()
        {
            Title = title,
            BackgroundColor = AppColors.Background,
            Content = new ScrollView { Content = content }
        };

    public static Border Card(View content, Color? background = null) =>
        new()
        {
            Content = content,
            BackgroundColor = background ?? Colors.White,
            Stroke = AppColors.Border,
            StrokeThickness = 1,
            StrokeShape = new Microsoft.Maui.Controls.Shapes.RoundRectangle
            {
                CornerRadius = 16
            },
            Padding = 15,
            Margin = new Thickness(0, 4)
        };

    public static Button Button(string text, bool primary = true) =>
        new()
        {
            Text = text,
            BackgroundColor = primary ? AppColors.Primary : Colors.White,
            TextColor = primary ? Colors.White : AppColors.Primary,
            BorderColor = primary ? AppColors.Primary : AppColors.Border,
            BorderWidth = 1,
            CornerRadius = 12,
            FontAttributes = FontAttributes.Bold,
            FontSize = 13,
            HeightRequest = 44
        };

    public static void Section(VerticalStackLayout parent, string title, string? action = null)
    {
        var row = new Grid
        {
            ColumnDefinitions =
            {
                new ColumnDefinition { Width = GridLength.Star },
                new ColumnDefinition { Width = GridLength.Auto }
            },
            Margin = new Thickness(0, 15, 0, 3)
        };
        row.Add(new Label
        {
            Text = title,
            FontSize = 18,
            FontAttributes = FontAttributes.Bold,
            TextColor = AppColors.Text
        });
        if (action is not null)
            row.Add(new Label
            {
                Text = action,
                FontSize = 12,
                TextColor = AppColors.Primary,
                VerticalOptions = LayoutOptions.Center
            }, 1, 0);
        parent.Add(row);
    }

    public static Border Stat(string icon, string value, string label, Color tint) =>
        Card(new VerticalStackLayout
        {
            Spacing = 3,
            Children =
            {
                new Label { Text = icon, FontSize = 23 },
                new Label
                {
                    Text = value,
                    FontSize = 21,
                    FontAttributes = FontAttributes.Bold,
                    TextColor = AppColors.Text
                },
                new Label
                {
                    Text = label,
                    FontSize = 11,
                    TextColor = AppColors.Muted
                }
            }
        }, tint);

    public static Grid TwoColumnGrid() =>
        new()
        {
            ColumnDefinitions = { new ColumnDefinition(), new ColumnDefinition() },
            RowDefinitions = { new RowDefinition(), new RowDefinition() },
            ColumnSpacing = 10,
            RowSpacing = 9
        };

    public static HorizontalStackLayout ChipRow(IEnumerable<string> items) =>
        new()
        {
            Spacing = 8,
            Children =
            {
                items.Select(item => (View)new Border
                {
                    Content = new Label
                    {
                        Text = item,
                        FontSize = 12,
                        TextColor = AppColors.Primary
                    },
                    BackgroundColor = AppColors.LightBlue,
                    Stroke = Colors.Transparent,
                    StrokeShape = new Microsoft.Maui.Controls.Shapes.RoundRectangle
                    {
                        CornerRadius = 20
                    },
                    Padding = new Thickness(12, 7)
                }).ToArray()
            }
        };
}

public sealed class HomePage : ContentPage
{
    public HomePage()
    {
        var content = UI.PageContent();
        var welcome = new Grid
        {
            ColumnDefinitions =
            {
                new ColumnDefinition { Width = GridLength.Star },
                new ColumnDefinition { Width = GridLength.Auto }
            }
        };
        welcome.Add(new VerticalStackLayout
        {
            Spacing = 4,
            Children =
            {
                UI.Title("Good morning, Amina 👋", 22),
                UI.Subtitle("Keep growing your skills and discovering opportunities.")
            }
        });
        welcome.Add(new Label { Text = "🔔", FontSize = 23 }, 1, 0);
        content.Add(welcome);

        UI.Section(content, "Your Overview");
        var stats = UI.TwoColumnGrid();
        stats.Add(UI.Stat("🛠", "5", "My Skills", AppColors.LightBlue), 0, 0);
        stats.Add(UI.Stat("📚", "3", "Training", AppColors.LightGreen), 1, 0);
        stats.Add(UI.Stat("📖", "8", "Learning Materials", AppColors.LightOrange), 0, 1);
        stats.Add(UI.Stat("📅", "2", "Upcoming Events", AppColors.LightPurple), 1, 1);
        content.Add(stats);

        UI.Section(content, "My Skills");
        content.Add(new ScrollView
        {
            Orientation = ScrollOrientation.Horizontal,
            Content = UI.ChipRow(new[]
            {
                "Digital Skills", "Entrepreneurship", "Leadership", "Communication"
            })
        });

        UI.Section(content, "Recent Announcements", "View All");
        content.Add(Announcement("📢", "New Business Opportunity Available",
            "Apply for the Youth Enterprise Fund.", "April 25, 2026"));
        content.Add(Announcement("📢", "Digital Skills Training Registration",
            "Registration is currently open.", "April 27, 2026"));

        UI.Section(content, "Upcoming Workshops", "View All");
        content.Add(EventCard("📅", "Digital Skills for Employment",
            "April 28, 2026 • Dar es Salaam", "Workshop"));
        content.Add(EventCard("🎓", "Women Entrepreneurship Workshop",
            "May 3, 2026 • Mwanza", "Registration Open"));
        Content = new ScrollView { Content = content };
        Title = "Home";
        BackgroundColor = AppColors.Background;
    }

    private static Border Announcement(string icon, string title, string body, string date) =>
        UI.Card(new VerticalStackLayout
        {
            Spacing = 6,
            Children =
            {
                new Label
                {
                    Text = $"{icon}  {title}",
                    FontSize = 15,
                    FontAttributes = FontAttributes.Bold,
                    TextColor = AppColors.Text
                },
                UI.Small(body),
                new Label { Text = date, FontSize = 11, TextColor = AppColors.Primary }
            }
        });

    private static Border EventCard(string icon, string title, string date, string status) =>
        UI.Card(new HorizontalStackLayout
        {
            Spacing = 12,
            Children =
            {
                new Label { Text = icon, FontSize = 28, VerticalOptions = LayoutOptions.Center },
                new VerticalStackLayout
                {
                    Spacing = 4,
                    Children =
                    {
                        new Label
                        {
                            Text = title,
                            FontSize = 15,
                            FontAttributes = FontAttributes.Bold,
                            TextColor = AppColors.Text
                        },
                        UI.Small(date),
                        new Label { Text = status, FontSize = 11, TextColor = AppColors.Success }
                    }
                }
            }
        });
}

public sealed class OpportunitiesPage : ContentPage
{
    private readonly VerticalStackLayout _opportunityList = new() { Spacing = 3 };
    private readonly List<(string Icon, string Name, string Type, string Organization, string Deadline)> _opportunities =
    [
        ("🌱", "Small Business Grant Program", "Funding", "Tanzania Women Enterprise Fund", "May 15, 2026"),
        ("🎓", "Digital Skills Scholarship", "Scholarships", "Tech4Good Initiative", "June 30, 2026"),
        ("🏆", "Youth Innovation Competition", "Competitions", "Innovation Hub Tanzania", "July 10, 2026"),
        ("👩‍💻", "Digital Marketing Internship", "Jobs", "Partner Organization", "May 20, 2026")
    ];
    private string _selectedCategory = "All";
    private string _query = "";

    public OpportunitiesPage()
    {
        Title = "Opportunities";
        BackgroundColor = AppColors.Background;
        var content = UI.PageContent();
        content.Add(UI.Title("Opportunities"));
        content.Add(UI.Subtitle("Discover opportunities that can help you learn, grow and succeed."));

        var search = new SearchBar
        {
            Placeholder = "Search opportunities...",
            BackgroundColor = Colors.White,
            Margin = new Thickness(0, 7)
        };
        search.TextChanged += (_, e) => { _query = e.NewTextValue ?? ""; RenderOpportunities(); };
        content.Add(search);

        UI.Section(content, "Opportunity Categories");
        var categoryGrid = new Grid
        {
            ColumnDefinitions = { new ColumnDefinition(), new ColumnDefinition(), new ColumnDefinition() },
            RowDefinitions = { new RowDefinition(), new RowDefinition() },
            ColumnSpacing = 8,
            RowSpacing = 8
        };
        var categories = new[]
        {
            ("💼", "Business"), ("🎓", "Scholarships"), ("🏆", "Competitions"),
            ("💰", "Funding"), ("👩‍💻", "Jobs"), ("🤝", "Mentorship")
        };
        for (var i = 0; i < categories.Length; i++)
        {
            var category = categories[i];
            var button = new Button
            {
                Text = $"{category.Item1}\n{category.Item2}",
                FontSize = 11,
                BackgroundColor = Colors.White,
                TextColor = AppColors.Text,
                BorderColor = AppColors.Border,
                BorderWidth = 1,
                CornerRadius = 13,
                Padding = 5,
                HeightRequest = 72
            };
            button.Clicked += (_, _) =>
            {
                _selectedCategory = _selectedCategory == category.Item2 ? "All" : category.Item2;
                RenderOpportunities();
            };
            categoryGrid.Add(button, i % 3, i / 3);
        }
        content.Add(categoryGrid);
        UI.Section(content, "Featured Opportunities", "View All");
        content.Add(_opportunityList);
        Content = new ScrollView { Content = content };
        RenderOpportunities();
    }

    private void RenderOpportunities()
    {
        _opportunityList.Clear();
        var matches = _opportunities.Where(item =>
            (_selectedCategory == "All" || item.Type.Contains(_selectedCategory, StringComparison.OrdinalIgnoreCase)
                || item.Name.Contains(_selectedCategory, StringComparison.OrdinalIgnoreCase))
            && (string.IsNullOrWhiteSpace(_query)
                || $"{item.Name} {item.Type} {item.Organization}".Contains(_query, StringComparison.OrdinalIgnoreCase)));

        foreach (var item in matches)
            _opportunityList.Add(OpportunityCard(item.Icon, item.Name, item.Type, item.Organization, item.Deadline));

        if (!_opportunityList.Children.Any())
            _opportunityList.Add(UI.Card(UI.Small("No opportunities match your search.")));
    }

    private Border OpportunityCard(string icon, string title, string category, string organization, string deadline)
    {
        var layout = new VerticalStackLayout { Spacing = 7 };
        layout.Add(new HorizontalStackLayout
        {
            Spacing = 10,
            Children =
            {
                new Label { Text = icon, FontSize = 28 },
                new VerticalStackLayout
                {
                    Spacing = 3,
                    Children =
                    {
                        new Label
                        {
                            Text = title,
                            FontSize = 15,
                            FontAttributes = FontAttributes.Bold,
                            TextColor = AppColors.Text
                        },
                        new Label { Text = category, FontSize = 12, TextColor = AppColors.Purple }
                    }
                }
            }
        });
        layout.Add(UI.Small(organization));
        layout.Add(new Label { Text = $"Deadline: {deadline}", FontSize = 12, TextColor = AppColors.Warning });
        var apply = UI.Button("Apply Now");
        apply.Clicked += async (_, _) => await DisplayAlert("Application",
            $"Your interest in {title} has been recorded for this demo.", "OK");
        layout.Add(apply);
        return UI.Card(layout);
    }
}

public sealed class CommunityPage : ContentPage
{
    private readonly VerticalStackLayout _groupList = new() { Spacing = 3 };
    private readonly (string Icon, string Name, string Members)[] _groups =
    [
        ("👩‍💼", "Women Entrepreneurs", "1.2K members"),
        ("🌱", "Youth Innovators", "856 members"),
        ("💻", "Digital Skills Learners", "932 members"),
        ("🌾", "Agriculture & Sustainability", "645 members")
    ];

    public CommunityPage()
    {
        Title = "Community";
        BackgroundColor = AppColors.Background;
        var content = UI.PageContent();
        content.Add(UI.Title("Community"));
        content.Add(UI.Subtitle("Connect, learn, collaborate and grow together."));
        var search = new SearchBar
        {
            Placeholder = "Search groups and communities...",
            BackgroundColor = Colors.White,
            Margin = new Thickness(0, 7)
        };
        search.TextChanged += (_, e) => RenderGroups(e.NewTextValue ?? "");
        content.Add(search);

        var filters = new HorizontalStackLayout { Spacing = 7 };
        foreach (var filter in new[] { "Groups", "Mentors", "Trainers", "Projects" })
        {
            var button = UI.Button(filter, filter == "Groups");
            button.HeightRequest = 38;
            button.CornerRadius = 19;
            button.Clicked += async (_, _) =>
            {
                if (filter != "Groups")
                    await DisplayAlert(filter, $"{filter} will be available in a future version.", "OK");
            };
            filters.Add(button);
        }
        content.Add(new ScrollView { Orientation = ScrollOrientation.Horizontal, Content = filters });
        UI.Section(content, "Featured Groups", "View All");
        content.Add(_groupList);
        UI.Section(content, "Upcoming Community Activities");
        content.Add(Activity("📅", "Networking Session", "April 27, 2026 • Online"));
        content.Add(Activity("🎓", "Mentorship Meetup", "May 2, 2026 • Mwanza"));
        Content = new ScrollView { Content = content };
        RenderGroups("");
    }

    private void RenderGroups(string query)
    {
        _groupList.Clear();
        foreach (var group in _groups.Where(g =>
                     g.Name.Contains(query, StringComparison.OrdinalIgnoreCase)))
        {
            var row = new Grid
            {
                ColumnDefinitions =
                {
                    new ColumnDefinition { Width = GridLength.Auto },
                    new ColumnDefinition { Width = GridLength.Star },
                    new ColumnDefinition { Width = GridLength.Auto }
                },
                ColumnSpacing = 12
            };
            row.Add(new Label { Text = group.Icon, FontSize = 28, VerticalOptions = LayoutOptions.Center });
            row.Add(new VerticalStackLayout
            {
                Spacing = 3,
                Children =
                {
                    new Label { Text = group.Name, FontSize = 15, FontAttributes = FontAttributes.Bold },
                    UI.Small($"{group.Members} • Active")
                }
            }, 1, 0);
            var join = new Button
            {
                Text = "Join",
                FontSize = 12,
                Padding = new Thickness(10, 0),
                HeightRequest = 36,
                BackgroundColor = AppColors.LightBlue,
                TextColor = AppColors.Primary,
                CornerRadius = 10
            };
            join.Clicked += async (_, _) =>
            {
                join.Text = "Joined";
                await DisplayAlert("Community", $"You joined {group.Name} in this demo.", "OK");
            };
            row.Add(join, 2, 0);
            _groupList.Add(UI.Card(row));
        }
        if (!_groupList.Children.Any())
            _groupList.Add(UI.Card(UI.Small("No groups match your search.")));
    }

    private static Border Activity(string icon, string title, string date) =>
        UI.Card(new HorizontalStackLayout
        {
            Spacing = 12,
            Children =
            {
                new Label { Text = icon, FontSize = 27 },
                new VerticalStackLayout
                {
                    Children =
                    {
                        new Label { Text = title, FontSize = 15, FontAttributes = FontAttributes.Bold },
                        UI.Small(date)
                    }
                }
            }
        });
}

public sealed class AdminPage : ContentPage
{
    public AdminPage()
    {
        Title = "Admin";
        BackgroundColor = AppColors.Background;
        var content = UI.PageContent();
        content.Add(UI.Title("Admin Dashboard"));
        content.Add(UI.Subtitle("Manage users, programs, training, events and impact."));

        UI.Section(content, "Platform Statistics");
        var stats = UI.TwoColumnGrid();
        stats.Add(UI.Stat("👥", "1,248", "Total Beneficiaries", AppColors.LightBlue), 0, 0);
        stats.Add(UI.Stat("📚", "320", "In Training", AppColors.LightGreen), 1, 0);
        stats.Add(UI.Stat("✓", "156", "Completed", AppColors.LightPurple), 0, 1);
        stats.Add(UI.Stat("📋", "48", "Active Programs", AppColors.LightOrange), 1, 1);
        content.Add(stats);

        UI.Section(content, "Quick Actions");
        var actions = UI.TwoColumnGrid();
        AddAction(actions, "👥", "Manage Users", 0, 0);
        AddAction(actions, "📚", "Create Program", 1, 0);
        AddAction(actions, "📅", "Create Event", 0, 1);
        AddAction(actions, "📊", "View Reports", 1, 1);
        content.Add(actions);

        UI.Section(content, "Management");
        AddManagement(content, "👥", "Beneficiary Management", "View, search and filter youth and women beneficiaries.");
        AddManagement(content, "📚", "Program Management", "Create and manage training and development programs.");
        AddManagement(content, "🎓", "Training Management", "Monitor participation and training completion.");
        AddManagement(content, "📅", "Events & Workshops", "Create, publish and monitor events and workshops.");
        AddManagement(content, "🤝", "Mentors & Trainers", "Manage mentors and trainers.");
        AddManagement(content, "📢", "Announcements", "Publish announcements and important information.");
        AddManagement(content, "💼", "Opportunities", "Manage jobs, funding, scholarships and other opportunities.");
        AddManagement(content, "📈", "Impact Reports", "Generate statistics and monitor program outcomes.");

        UI.Section(content, "Recent Activities");
        AddActivity(content, "👤", "New user registered", "Amina Hassan • 2 hours ago");
        AddActivity(content, "📚", "Training program updated", "Digital Skills • 4 hours ago");
        AddActivity(content, "📅", "Event created", "Leadership Workshop • 6 hours ago");
        AddActivity(content, "📊", "Impact report generated", "Quarterly report • Yesterday");
        Content = new ScrollView { Content = content };
    }

    private static void AddAction(Grid grid, string icon, string title, int column, int row)
    {
        var button = UI.Button($"{icon}  {title}", false);
        button.HeightRequest = 52;
        button.Clicked += async (_, _) =>
            await Shell.Current.DisplayAlert(title, "This demo uses sample data only.", "OK");
        grid.Add(button, column, row);
    }

    private static void AddManagement(VerticalStackLayout content, string icon, string title, string description)
    {
        var row = new Grid
        {
            ColumnDefinitions =
            {
                new ColumnDefinition { Width = GridLength.Auto },
                new ColumnDefinition { Width = GridLength.Star },
                new ColumnDefinition { Width = GridLength.Auto }
            },
            ColumnSpacing = 12
        };
        row.Add(new Label { Text = icon, FontSize = 26, VerticalOptions = LayoutOptions.Center });
        row.Add(new VerticalStackLayout
        {
            Spacing = 4,
            Children =
            {
                new Label { Text = title, FontSize = 15, FontAttributes = FontAttributes.Bold },
                new Label { Text = description, FontSize = 12, TextColor = AppColors.Muted }
            }
        }, 1, 0);
        row.Add(new Label { Text = "›", FontSize = 24, TextColor = AppColors.Primary, VerticalOptions = LayoutOptions.Center }, 2, 0);
        var card = UI.Card(row);
        var tap = new TapGestureRecognizer();
        tap.Tapped += async (_, _) => await Shell.Current.DisplayAlert(title, "This demo uses sample data only.", "OK");
        card.GestureRecognizers.Add(tap);
        content.Add(card);
    }

    private static void AddActivity(VerticalStackLayout content, string icon, string title, string subtitle) =>
        content.Add(UI.Card(new HorizontalStackLayout
        {
            Spacing = 12,
            Children =
            {
                new Label { Text = icon, FontSize = 23 },
                new VerticalStackLayout
                {
                    Spacing = 3,
                    Children =
                    {
                        new Label { Text = title, FontSize = 14, FontAttributes = FontAttributes.Bold },
                        UI.Small(subtitle)
                    }
                }
            }
        }));
}

public sealed class ProfilePage : ContentPage
{
    public ProfilePage()
    {
        Title = "Profile";
        BackgroundColor = AppColors.Background;
        var content = new VerticalStackLayout { Spacing = 0 };
        content.Add(new Grid
        {
            HeightRequest = 225,
            BackgroundColor = AppColors.Primary,
            Padding = new Thickness(20),
            RowDefinitions =
            {
                new RowDefinition { Height = GridLength.Auto },
                new RowDefinition { Height = GridLength.Star },
                new RowDefinition { Height = GridLength.Auto }
            },
            Children =
            {
                new Label { Text = "My Profile", TextColor = Colors.White, FontSize = 18, FontAttributes = FontAttributes.Bold },
                new Label
                {
                    Text = "👩🏽",
                    FontSize = 65,
                    HorizontalOptions = LayoutOptions.Center,
                    VerticalOptions = LayoutOptions.Center
                }.Row(1),
                new VerticalStackLayout
                {
                    Spacing = 3,
                    HorizontalOptions = LayoutOptions.Center,
                    Children =
                    {
                        new Label
                        {
                            Text = "Amina Hassan",
                            TextColor = Colors.White,
                            FontSize = 20,
                            FontAttributes = FontAttributes.Bold,
                            HorizontalTextAlignment = TextAlignment.Center
                        },
                        new Label
                        {
                            Text = "Youth Leader • Dar es Salaam, Tanzania",
                            TextColor = Colors.White,
                            FontSize = 12,
                            HorizontalTextAlignment = TextAlignment.Center
                        }
                    }
                }.Row(2)
            }
        });

        var body = UI.PageContent(6);
        body.Padding = new Thickness(20, 15);
        body.Add(new Label
        {
            Text = "Passionate about creating opportunities for youth and women through skills, innovation and collaboration.",
            FontSize = 13,
            TextColor = AppColors.Muted,
            HorizontalTextAlignment = TextAlignment.Center
        });
        var stats = new Grid
        {
            ColumnDefinitions = { new ColumnDefinition(), new ColumnDefinition(), new ColumnDefinition() },
            Margin = new Thickness(0, 8)
        };
        AddProfileStat(stats, "5", "Skills", 0);
        AddProfileStat(stats, "3", "Talents", 1);
        AddProfileStat(stats, "4", "Interests", 2);
        body.Add(stats);

        UI.Section(body, "Personal Information");
        body.Add(UI.Card(new VerticalStackLayout
        {
            Spacing = 11,
            Children =
            {
                Information("✉", "Email", "amina.hassan@example.com"),
                Information("☎", "Phone", "+255 712 345 678"),
                Information("⌖", "Location", "Dar es Salaam, Tanzania")
            }
        }));

        UI.Section(body, "Skills");
        body.Add(UI.Card(new VerticalStackLayout
        {
            Spacing = 8,
            Children =
            {
                ProfileRow("Digital Marketing", "Advanced"),
                ProfileRow("Entrepreneurship", "Intermediate"),
                ProfileRow("Leadership", "Intermediate"),
                ProfileRow("Communication", "Advanced")
            }
        }));

        UI.Section(body, "Talents");
        body.Add(UI.Card(new VerticalStackLayout
        {
            Spacing = 8,
            Children =
            {
                ProfileRow("Public Speaking", "Active"),
                ProfileRow("Content Creation", "Active"),
                ProfileRow("Community Leadership", "Active")
            }
        }));

        UI.Section(body, "Areas of Interest");
        body.Add(new ScrollView
        {
            Orientation = ScrollOrientation.Horizontal,
            Content = UI.ChipRow(new[] { "Technology", "Business", "Leadership", "Innovation" })
        });

        UI.Section(body, "Training & Development");
        body.Add(TrainingCard("Digital Skills for Employment", 0.8, "In Progress"));
        body.Add(TrainingCard("Women Entrepreneurship", 1, "Completed"));
        body.Add(TrainingCard("Leadership & Communication", 0.6, "In Progress"));

        UI.Section(body, "Achievements");
        body.Add(Achievement("🏆", "Youth Innovation Award", "Recognized for community innovation."));
        body.Add(Achievement("🌟", "Community Leadership Certificate", "Completed leadership development program."));
        var edit = UI.Button("Edit Profile");
        edit.Margin = new Thickness(0, 15, 0, 5);
        edit.Clicked += async (_, _) =>
            await DisplayAlert("Edit Profile", "Profile editing is a demo-only feature.", "OK");
        body.Add(edit);
        content.Add(new ScrollView { Content = body });
        Content = content;
    }

    private static void AddProfileStat(Grid grid, string value, string title, int column) =>
        grid.Add(new VerticalStackLayout
        {
            HorizontalOptions = LayoutOptions.Center,
            Spacing = 2,
            Children =
            {
                new Label
                {
                    Text = value,
                    FontSize = 20,
                    FontAttributes = FontAttributes.Bold,
                    HorizontalTextAlignment = TextAlignment.Center
                },
                new Label
                {
                    Text = title,
                    FontSize = 11,
                    TextColor = AppColors.Muted,
                    HorizontalTextAlignment = TextAlignment.Center
                }
            }
        }, column, 0);

    private static HorizontalStackLayout Information(string icon, string title, string value) =>
        new()
        {
            Spacing = 12,
            Children =
            {
                new Label { Text = icon, FontSize = 20, TextColor = AppColors.Primary },
                new VerticalStackLayout
                {
                    Spacing = 2,
                    Children =
                    {
                        new Label { Text = title, FontSize = 11, TextColor = AppColors.Muted },
                        new Label { Text = value, FontSize = 13, TextColor = AppColors.Text }
                    }
                }
            }
        };

    private static HorizontalStackLayout ProfileRow(string title, string status) =>
        new()
        {
            Children =
            {
                new Label { Text = title, FontSize = 13, HorizontalOptions = LayoutOptions.StartAndExpand },
                new Label { Text = status, FontSize = 12, TextColor = AppColors.Success }
            }
        };

    private static Border TrainingCard(string title, double progress, string status) =>
        UI.Card(new VerticalStackLayout
        {
            Spacing = 7,
            Children =
            {
                new Grid
                {
                    ColumnDefinitions =
                    {
                        new ColumnDefinition { Width = GridLength.Star },
                        new ColumnDefinition { Width = GridLength.Auto }
                    },
                    Children =
                    {
                        new Label { Text = title, FontSize = 14, FontAttributes = FontAttributes.Bold },
                        new Label
                        {
                            Text = $"{progress:P0}",
                            FontSize = 12,
                            TextColor = AppColors.Primary
                        }.Column(1)
                    }
                },
                new ProgressBar
                {
                    Progress = progress,
                    ProgressColor = AppColors.Primary,
                    BackgroundColor = AppColors.Border
                },
                new Label { Text = status, FontSize = 11, TextColor = AppColors.Muted }
            }
        });

    private static Border Achievement(string icon, string title, string description) =>
        UI.Card(new VerticalStackLayout
        {
            Spacing = 5,
            Children =
            {
                new Label { Text = $"{icon}  {title}", FontSize = 15, FontAttributes = FontAttributes.Bold },
                UI.Small(description),
                UI.Small("2026")
            }
        });
}

internal static class LayoutExtensions
{
    public static T Row<T>(this T view, int row) where T : View
    {
        Grid.SetRow(view, row);
        return view;
    }

    public static T Column<T>(this T view, int column) where T : View
    {
        Grid.SetColumn(view, column);
        return view;
    }
}
