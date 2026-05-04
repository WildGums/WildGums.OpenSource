---
uid: orc.plot
title: Orc.Plot
---

Find the source at [https://github.com/WildGums/Orc.Plot](https://github.com/WildGums/Orc.Plot).

| | |
|-|-|
| Chat | [![Join the chat](https://badges.gitter.im/Join%20Chat.svg)](https://gitter.im/WildGums/Orc.Plot) |
| Downloads | [![NuGet downloads](https://img.shields.io/nuget/dt/Orc.Plot.svg)](https://www.nuget.org/packages/Orc.Plot) |
| Stable version | [![Stable version](https://img.shields.io/nuget/v/Orc.Plot.svg)](https://www.nuget.org/packages/Orc.Plot) |
| Unstable version | [![Unstable version](https://img.shields.io/nuget/vpre/Orc.Plot.svg)](https://www.nuget.org/packages/Orc.Plot) |


Extends the functionality of [OxyPlot](http://www.oxyplot.org/).

## Key features

- Integrates OxyPlot with the WildGums theming system, so plots automatically match the application's accent color and light/dark theme
- Provides helper extensions to make it easier to create and configure OxyPlot models
- Supports automatic theme synchronization when the application theme changes at runtime

## Getting started

Add the `Orc.Plot` NuGet package to your project. The library automatically integrates with `Orc.Theming` when both are present.

### Applying the theme to a plot model

```csharp
var plotModel = new PlotModel { Title = "My Chart" };

// Apply the current application theme to the plot model
plotModel.ApplyTheme();
```

### Listening for theme changes

```csharp
var themeManager = dependencyResolver.ResolveType<IThemeManager>();
themeManager.ThemeChanged += (s, e) => plotModel.ApplyTheme();
```
