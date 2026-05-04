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
public class MyViewModel : ViewModelBase
{
    private readonly IFeatureToggleService _featureToggleService;

    public MyViewModel(IServiceProvider serviceProvider, IFeatureToggleService featureToggleService)
        : base(serviceProvider)
    {
        _featureToggleService = featureToggleService;
    }

    private void ShowDashboard()
    {
        if (_featureToggleService.IsEnabled(Features.NewDashboard))
        {
            // show the new dashboard
        }
    }
}

### Enabling or disabling a feature toggle

```csharp
featureToggleService.Enable(Features.BetaExport);
featureToggleService.Disable(Features.BetaExport);
```

## XAML integration

The `Orc.FeatureToggles.Xaml` package provides a built-in UI for managing feature toggles. It includes a `FeatureTogglesWindow` that lists all registered feature toggles and allows them to be enabled or disabled at runtime.

### Showing the feature toggles window

Use constructor injection to get `IUIVisualizerService` and call it to show the built-in feature toggles management window:

```csharp
public class RibbonViewModel : ViewModelBase
{
    private readonly IUIVisualizerService _uiVisualizerService;

    public RibbonViewModel(IServiceProvider serviceProvider, IUIVisualizerService uiVisualizerService)
        : base(serviceProvider)
    {
        _uiVisualizerService = uiVisualizerService;

        ManageFeatureToggles = new TaskCommand(serviceProvider, OnManageFeatureTogglesExecuteAsync);
    }

    public TaskCommand ManageFeatureToggles { get; }

    private async Task OnManageFeatureTogglesExecuteAsync()
    {
        await _uiVisualizerService.ShowDialogAsync<ManageFeatureTogglesViewModel>();
    }
}

### Using the FeatureToggleVisibilityConverter

The `Orc.FeatureToggles.Xaml` package also provides a `FeatureToggleVisibilityConverter` that can be used to show or hide UI elements based on feature toggle state:

```xml
xmlns:orc="http://www.wildgums.net.au/orc"

<Button Visibility="{orc:FeatureToggle FeatureName=NewDashboard}" Content="Open new dashboard" />
```
