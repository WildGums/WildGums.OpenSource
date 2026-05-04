---
uid: orc.controls
title: Orc.Controls
---

Find the source at [https://github.com/WildGums/Orc.Controls](https://github.com/WildGums/Orc.Controls).

| | |
|-|-|
| Chat | [![Join the chat](https://badges.gitter.im/Join%20Chat.svg)](https://gitter.im/WildGums/Orc.Controls) |
| Downloads | [![NuGet downloads](https://img.shields.io/nuget/dt/Orc.Controls.svg)](https://www.nuget.org/packages/Orc.Controls) |
| Stable version | [![Stable version](https://img.shields.io/nuget/v/Orc.Controls.svg)](https://www.nuget.org/packages/Orc.Controls) |
| Unstable version | [![Unstable version](https://img.shields.io/nuget/vpre/Orc.Controls.svg)](https://www.nuget.org/packages/Orc.Controls) |


This library provides a rich set of WPF controls designed for line-of-business applications. All controls follow consistent theming patterns and integrate with [Orc.Theming](https://github.com/WildGums/Orc.Theming).

Run the demo project to see the controls in action:

![Orc.Controls demo](~/images/orc.controls/Orc.Controls.Demo.png)

## Getting started

Add the `Orc.Controls` NuGet package to your project, then add the XML namespace declaration to your XAML:

```xml
xmlns:orc="http://www.wildgums.net.au/orc"
```

## Available controls

The library includes a wide range of controls. Each control has its own documentation page. Some highlights include:

- **AnimatedGif** — displays an animated GIF image
- **BusyIndicator** — shows an activity indicator while work is being performed
- **DateTimePicker** / **DatePicker** / **TimePicker** — date and time selection controls
- **DirectoryPicker** / **FilePicker** — file and directory selection controls with browsing support
- **DropDownButton** — a button with a dropdown menu
- **FilterBox** — a text box with built-in clear button for filtering collections
- **FontImage** — renders icon fonts (e.g., FontAwesome) as images
- **LinkLabel** — a label that acts as a hyperlink
- **LogViewer** — embeds the log viewer from [Orc.LogViewer](https://github.com/WildGums/Orc.LogViewer)
- **NumericTextBox** — a text box that only accepts numeric input
- **OpenFileButton** / **SaveFileButton** — buttons that open file dialogs
- **PinnableToolTip** — a tooltip that can be pinned to stay open
- **RangeSlider** — a slider for selecting a value range
- **StackGrid** — a panel that combines StackPanel-style layout with Grid column support
- **StatusBar** — a flexible status bar with multiple status indicators
- **StepBar** — a visual step indicator for multi-step workflows
- **TabControl** — an enhanced tab control with closable tabs
- **TextInput** — a text input control with watermark support
- **TimeSpanPicker** — a control for entering time spans
- **TreeListView** — a tree view that supports column-based layout
- **ValidationContextControl** — displays validation results in a structured way
- **WatermarkTextBox** — a text box with placeholder text
- **WindowCommandsControl** — custom window chrome controls (minimize, maximize, close)

