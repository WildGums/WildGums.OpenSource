+++
title = "LinkLabel" 
description = ""
+++

This control is a label which looks and behaves like a hyperlink.

Inherits from [System.Windows.Controls.Label][1].

![LinkLabel 01][2]

## Properties

Property name|Description
---|---
ClickBehavior|Gets or sets click behavior. Can be OpenUrlInBrowser or Undefined.
Command|Gets or sets command.
CommandParameter|Gets or sets command parameter.
CommandTarget|Gets or sets command target.
HasUrl|Get whether url has a value.
HoverForeground|Gets or sets hover foreground.
HyperlinkStyle|Gets or sets the hyperlink style.
LinkLabelBehavior|Gets or sets link label behavior. Can be SystemDefault, AlwaysUnderline, HoverUnderline, NeverUnderline.
Url|Get or sets the URL.

## Events

Event name|Description
---|---
Click|Occurs on click.
RequestNavigate|Occurs on request navigate.

## How to use

```
<orc:LinkLabel Content="Action" ToolTip="Action" Command="{Binding DefaultAction}"
               HoverForeground="Orange" Url="http://catelproject.com"
               ClickBehavior="OpenUrlInBrowser"/>
```

[1]: https://msdn.microsoft.com/en-us/library/system.windows.controls.label(v=vs.110).aspx
[2]: ../../images/orc.controls/linklabel/LinkLabel_01.png