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
var themeManager = dependencyResolver.ResolveType<IThemeManager>();
themeManager.SynchronizeTheme();
```

### Changing the accent color

```csharp
var accentColorService = dependencyResolver.ResolveType<IAccentColorService>();
accentColorService.SetAccentColor(Colors.Blue);
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
