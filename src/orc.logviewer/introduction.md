Orc.LogViewer
=============

Name|Badge
---|---
Chat|[![Join the chat at https://gitter.im/WildGums/Orc.LogViewer](https://badges.gitter.im/Join%20Chat.svg)](https://gitter.im/WildGums/Orc.LogViewer?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)
Downloads|![NuGet downloads](https://img.shields.io/nuget/dt/orc.logviewer.svg)
Stable version|![Version](https://img.shields.io/nuget/v/orc.logviewer.svg)
Unstable version|![Pre-release version](https://img.shields.io/nuget/vpre/orc.logviewer.svg)

An advanced log viewer for WPF applications.

Run the demo project to see the control in action:

![Orc.LogViewer demo](../images/orc.logviewer/introduction/Orc.LogViewer.Demo.png)

Use level toggle buttons to show/hide log records:

![Level toggle buttons](../images/orc.logviewer/introduction/Orc.LogViewer.Demo.LevelToggleButtons.png)

Start typing in filter box to filter log records:  

![Filtering](../images/orc.logviewer/introduction/Orc.LogViewer.Demo.FilterBox.png)

Select a type name in combobox to filter log records by type name:

![Type names](../images/orc.logviewer/introduction/Orc.LogViewer.Demo.TypeNames1.png)

![Type names](../images/orc.logviewer/introduction/Orc.LogViewer.Demo.TypeNames.png)

Use Time stamp toggle button to show/hide timestamps:

![Time stamps](../images/orc.logviewer/introduction/Orc.LogViewer.Demo.TimeStamps.png)

### How to use LogViewer

Here are the main properties, which are used to configure the LogViewer control:

Filtering: 

- **Level** => The log records types which will be shown.
- **LogListenerType** => Type. The log listener type. 
- **IgnoreCatelLogging** => boolean. Ignore Catel logging if true.

Visualisation:

- **ShowFilterBox** => boolean. Show Filter box if true.
- **ShowTypeNames** => boolean. Show Type names combobox if true.
- **AccentColorBrush** => Brush. The accent color.

```
<orc:AdvancedLogViewerControl AccentColorBrush="Orange" />
```

