---
uid: orc.theming
title: Orc.Theming
---

Find the source at [https://github.com/WildGums/Orc.Theming](https://github.com/WildGums/Orc.Theming).

| | |
|-|-|
| Downloads | [![NuGet downloads](https://img.shields.io/nuget/dt/Orc.Theming.svg)](https://www.nuget.org/packages/Orc.Theming) |
| Stable version | [![Stable version](https://img.shields.io/nuget/v/Orc.Theming.svg)](https://www.nuget.org/packages/Orc.Theming) |
| Unstable version | [![Unstable version](https://img.shields.io/nuget/vpre/Orc.Theming.svg)](https://www.nuget.org/packages/Orc.Theming) |


This library is the theming foundation for all WildGums libraries. It uses the theming system of [ControlzEx](https://github.com/ControlzEx/ControlzEx) and adds a convenience layer on top to provide a consistent look and feel across all WildGums components.

## Key features

- **ThemeManager** — manage the active theme and accent color across the application
- **Coloring** — accent color management and color utilities
- **Services** — services for applying and switching themes at runtime
- **Controls** — themed WPF controls and styles
- **Behaviors** — WPF behaviors for applying theming automatically

## Getting started

### Initializing theming

Initialize the theming module during application startup:

```csharp
var serviceLocator = ServiceLocator.Default;
serviceLocator.RegisterType<IAccentColorService, AccentColorService>();
```

### Applying a theme

```csharp
public class MyViewModel : ViewModelBase
{
    private readonly IThemeManager _themeManager;

    public MyViewModel(IServiceProvider serviceProvider, IThemeManager themeManager)
        : base(serviceProvider)
    {
        _themeManager = themeManager;
    }

    public void SynchronizeTheme()
    {
        _themeManager.SynchronizeTheme();
    }
}
```

### Changing the accent color

```csharp
public class MyViewModel : ViewModelBase
{
    private readonly IAccentColorService _accentColorService;

    public MyViewModel(IServiceProvider serviceProvider, IAccentColorService accentColorService)
        : base(serviceProvider)
    {
        _accentColorService = accentColorService;
    }

    public void SetBlueAccent()
    {
        _accentColorService.SetAccentColor(Colors.Blue);
    }
}

```

## NuGet packages

| Package | Description |
|---------|-------------|
| `Orc.Theming` | Core theming package with all services and controls |

## Available services

| Service | Description |
|---------|-------------|
| `IAccentColorService` | Manages the accent color across the application |
| `IBaseColorSchemeService` | Manages the base color scheme (e.g. Light / Dark) |
| `IThemeManager` | Coordinates theming and synchronizes the theme with the underlying ControlzEx theme manager |

## Available behaviors

- `ForwardColorToBrushBehavior` — forwards a color value to a `SolidColorBrush` property, useful for binding accent colors in XAML
- `ThemeSynchronizerBehavior` — automatically synchronizes the theme when attached to a window

## Color helpers

The `ColorHelper` class provides utility methods for working with colors:

- `GetAccentColor()` — retrieves the current application accent color
- `GetCurrentWindowsAccentColor()` — retrieves the accent color from Windows settings

## Markup extensions

Add the theming namespace to your XAML file:

```xml
xmlns:orctheming="http://schemas.wildgums.com/orc/theming"
```

### FontImage

Renders a glyph from a registered font family as a WPF `ImageSource`. The brush automatically updates when the theme changes.

```xml
<Image Source="{orctheming:FontImage ItemName='&#xE700;', FontFamily='Segoe MDL2 Assets'}" Width="16" Height="16" />
```

To use a custom font, register it first in code:

```csharp
FontImage.RegisterFont("My Icon Font", new FontFamily("pack://application:,,,/MyApp;component/Fonts/#My Icon Font"));
```

### FontImageCursor

Similar to `FontImage` but provides a `Cursor` instead of an `ImageSource`, useful for setting custom icon-based cursors.

```xml
<Control Cursor="{orctheming:FontImageCursor ItemName='&#xE700;', FontFamily='Segoe MDL2 Assets'}" />
```

### FontSize

Provides a calculated font size relative to the application default, supporting scaling and delta adjustments.

```xml
<!-- Scale the default font size by 1.5 -->
<TextBlock FontSize="{orctheming:FontSize Scale=1.5}" Text="Large text" />

<!-- Apply an absolute font size (scaled from the standard 12pt base) -->
<TextBlock FontSize="{orctheming:FontSize Absolute=18}" Text="18pt equivalent" />
```

### ThemeColor

Returns the current theme `Color` value for the specified `ThemeColorStyle`, and updates automatically when the theme changes.

```xml
<SolidColorBrush Color="{orctheming:ThemeColor ThemeColorStyle=AccentBase}" />
```

### ThemeColorBrush

Returns a `SolidColorBrush` for the specified `ThemeColorStyle`, and updates automatically when the theme changes.

```xml
<TextBlock Foreground="{orctheming:ThemeColorBrush ThemeColorStyle=AccentBase}" Text="Themed text" />
```
