+++
title = "DateTimePicker" 
description = ""
+++

This control is used to display and edit DateTime data quickly.

Inherits from [Catel.Windows.Controls.UserControl][1].

![DateTimePicker 01][2]

Double click on any number to start editing. Press the "Tab" key to move to the next number.

Click on a letter to display a drop down list to choose from.

## Properties

Property name|Description
---|---
AccentColorBrush|Gets or sets accent color
AllowNull|Gets or sets whether `Value` can be `null`.
AllowCopyPaste|Gets or sets whether `Value` can be copy/paste.
Format|Gets or sets `DateTime` `Value` format.
HideSeconds|Gets or sets whether seconds section [DateTimePickers][2] is visible.
HideTime|Gets or sets whether time section [DateTimePickers][2] is visible.
IsAmPmShortFormat|Gets whether Am Pm section is in short format (`t`).
IsHour12Format|Get whether time section is in 12 hours format.
IsReadOnly|Gets or sets whether `Value` is only for read.
IsYearShortFormat|Gets whether year section in short format.
ShowOptionsButton|Gets or sets whether options button is visible.
Value|Gets or sets current `DateTime` value

## How to use

Bind a `DateTime` value to the `Value` property:

```
    <orc:DateTimePicker Value="{Binding DateTimeValue}" />
```

[1]: http://docs.catelproject.com/vnext/catel-mvvm/views/xaml/usercontrol/
[2]: ../../images/orc.controls/datetimepicker/DateTimePicker_01.png