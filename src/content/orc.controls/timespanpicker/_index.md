+++
title = "TimeSpanPicker" 
description = ""
+++

This control is used to display and edit TimeSpan values. 

Inherits from [Catel.Windows.Controls.UserControl][1].

By default it will display the value using the *dd.hh:mm:ss* format.

![TimeSpan 01][2]

![TimeSpan 02][3]

When hovering over the control, the tooltip will display the timespan in total 
number of days, hours and minutes.

Double click on any of the *d*, *h*, *m* or *s* letters, to edit the TimeSpan value 
with the specified unit of measure. (i.e. days, hours, minutes, seconds)

![TimeSpan 03][4]

![TimeSpan 04][5]

![TimeSpan 05][6]

## Properties

Property name|Description
---|---
AccentColorBrush|Gets or sets accent color.
Value|Gets or sets current `TimeSpan` value.
IsReadonly|Gets or sets value indicating whether `Value` readonly.

## How to use TimeSpan

Bind a `TimeSpan` value to the `Value` property:

```
    <orc:TimeSpanPicker Value="{Binding TimeSpanValue}"/>
```
[1]: http://docs.catelproject.com/vnext/catel-mvvm/views/xaml/usercontrol/
[2]: ../../images/orc.controls/timespanpicker/TimeSpan_01.png
[3]: ../../images/orc.controls/timespanpicker/TimeSpan_02.png
[4]: ../../images/orc.controls/timespanpicker/TimeSpan_03.png
[5]: ../../images/orc.controls/timespanpicker/TimeSpan_04.png
[6]: ../../images/orc.controls/timespanpicker/TimeSpan_05.png
