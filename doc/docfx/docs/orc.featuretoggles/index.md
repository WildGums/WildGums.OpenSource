---
uid: orc.featuretoggles
title: Orc.FeatureToggles
---

Find the source at [https://github.com/WildGums/Orc.FeatureToggles](https://github.com/WildGums/Orc.FeatureToggles).

| | |
|-|-|
| Downloads | [![NuGet downloads](https://img.shields.io/nuget/dt/Orc.FeatureToggles.svg)](https://www.nuget.org/packages/Orc.FeatureToggles) |
| Stable version | [![Stable version](https://img.shields.io/nuget/v/Orc.FeatureToggles.svg)](https://www.nuget.org/packages/Orc.FeatureToggles) |
| Unstable version | [![Unstable version](https://img.shields.io/nuget/vpre/Orc.FeatureToggles.svg)](https://www.nuget.org/packages/Orc.FeatureToggles) |


This library provides a WPF component for managing feature toggles (feature flags) inside applications. Feature toggles allow parts of an application to be enabled or disabled without deploying new code.

## Key concepts

A feature toggle is identified by a unique name and has an enabled/disabled state. The state can be controlled at runtime, making it possible to roll out features gradually or disable problematic features without a new release.

## Getting started

### Defining feature toggles

Feature toggles are defined as simple named flags:

```csharp
public static class Features
{
    public const string NewDashboard = "NewDashboard";
    public const string BetaExport = "BetaExport";
}
```

### Checking a feature toggle

```csharp
var featureToggleService = dependencyResolver.ResolveType<IFeatureToggleService>();

if (featureToggleService.IsEnabled(Features.NewDashboard))
{
    // show the new dashboard
}
```

### Enabling or disabling a feature toggle

```csharp
featureToggleService.Enable(Features.BetaExport);
featureToggleService.Disable(Features.BetaExport);
```

## XAML integration

The `Orc.FeatureToggles.Xaml` package provides WPF bindings and converters for controlling UI visibility based on feature toggle state.

> [!WARNING]
> More documentation should be written in the future
