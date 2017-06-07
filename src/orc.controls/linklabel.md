LinkLabel
=========

This control is a label which looks and bahaves like a hyperlink.

![LinkLabel 01](../images/orc.controls/linklabel/LinkLabel_01.png)

## Properties

Property name|Description
-|-
Url|The URL
HyperlinkStyle|The hyperlink style
HoverForeground|The hover foreground
LinkLabelBehavior|The link label behavior. Can be SystemDefault, AlwaysUnderline, HoverUnderline, NeverUnderline
ClickBehavior|The click behavior. Can be OpenUrlInBrowser or Undefined
Command|The command
CommandParameter|The command parameter
CommandTarget|The command target

## Events

Event name|Description
-|-


## Methods

Method name|Description
-|-


## How to use LinkLabel

```
<orc:LinkLabel Content="Action" ToolTip="Action" Command="{Binding DefaultAction}"
               HoverForeground="Orange" Url="http://catelproject.com"
               ClickBehavior="OpenUrlInBrowser"/>
```
