---
uid: orc.selectionmanagement
title: Orc.SelectionManagement
---

Find the source at [https://github.com/WildGums/Orc.SelectionManagement](https://github.com/WildGums/Orc.SelectionManagement).

| | |
|-|-|
| Chat | [![Join the chat](https://badges.gitter.im/Join%20Chat.svg)](https://gitter.im/WildGums/Orc.SelectionManagement) |
| Downloads | [![NuGet downloads](https://img.shields.io/nuget/dt/Orc.SelectionManagement.svg)](https://www.nuget.org/packages/Orc.SelectionManagement) |
| Stable version | [![Stable version](https://img.shields.io/nuget/v/Orc.SelectionManagement.svg)](https://www.nuget.org/packages/Orc.SelectionManagement) |
| Unstable version | [![Unstable version](https://img.shields.io/nuget/vpre/Orc.SelectionManagement.svg)](https://www.nuget.org/packages/Orc.SelectionManagement) |


Manage selection state inside applications.

## Key features

- Track selected items across different views or components
- Support for single and multiple selection modes
- Events for responding to selection changes

### Getting started with the selection manager

The main component is the `ISelectionManager`, which provides a centralized way to manage the currently selected items in an application. Use constructor injection to receive the service:

```csharp
public class MyViewModel : ViewModelBase
{
    private readonly ISelectionManager _selectionManager;

    public MyViewModel(IServiceProvider serviceProvider, ISelectionManager selectionManager)
        : base(serviceProvider)
    {
        _selectionManager = selectionManager;
    }
}

### Selecting an item

```csharp
selectionManager.Select(myItem);
```

### Retrieving the current selection

```csharp
var selectedItems = selectionManager.SelectedItems;
```

### Responding to selection changes

```csharp
selectionManager.SelectionChanged += OnSelectionChanged;

private void OnSelectionChanged(object sender, SelectionChangedEventArgs e)
{
    // e.AddedItems contains newly selected items
    // e.RemovedItems contains items that are no longer selected
}
```