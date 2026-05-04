---
uid: orc.automation
title: Orc.Automation
---

Find the source at [https://github.com/WildGums/Orc.Automation](https://github.com/WildGums/Orc.Automation).

| | |
|-|-|
| Downloads | [![NuGet downloads](https://img.shields.io/nuget/dt/Orc.Automation.svg)](https://www.nuget.org/packages/Orc.Automation) |
| Stable version | [![Stable version](https://img.shields.io/nuget/v/Orc.Automation.svg)](https://www.nuget.org/packages/Orc.Automation) |
| Unstable version | [![Unstable version](https://img.shields.io/nuget/vpre/Orc.Automation.svg)](https://www.nuget.org/packages/Orc.Automation) |


This library provides a framework for UI automation testing of WPF applications. It is built on top of the Windows UI Automation infrastructure and provides a higher-level abstraction for writing automated UI tests.

## Key features

- **AutomationControls** — strongly-typed wrappers around UI Automation elements that map to WPF controls
- **AutomationMethods** — a mechanism for invoking methods on the application under test from the test process
- **InputSimulation** — keyboard and mouse input simulation helpers
- **Recording** — record and replay user interactions for creating automation scripts
- **ScenarioManagement** — organize and run automation test scenarios

## Getting started

Reference the `Orc.Automation` NuGet package from your test project.

### Launching an application

Use `AutomationHost` to launch the target application process and connect to it:

```csharp
var app = AutomationHost.Launch("MyApp.exe");
```

### Accessing controls

AutomationControls are discovered by automation ID or control type:

```csharp
var window = app.MainWindow;
var button = window.Find<ButtonAutomationControl>("myButton");
button.Click();
```

### Invoking automation methods

Automation methods are defined in the application under test and can be invoked remotely from tests:

```csharp
var result = app.Invoke<MyResult>("MyMethod", parameter);
```

> [!WARNING]
> More documentation should be written in the future
