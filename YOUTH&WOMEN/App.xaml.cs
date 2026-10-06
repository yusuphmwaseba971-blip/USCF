namespace YouthWomenEmpowermentApp;

public class App : Application
{
    protected override Window CreateWindow(IActivationState? activationState) =>
        new(new AppShell());
}