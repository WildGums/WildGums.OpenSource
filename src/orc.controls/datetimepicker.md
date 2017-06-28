DateTimePicker
==============

This control is used to display and edit DateTime data quickly.
<br />Inherits from [Catel.Windows.Controls.UserControl][1].

![DateTimePicker 01][2]

Double click on any number to start editing. Press the "Tab" key to move to the next number.

Click on a letter to display a drop down list to choose from.

## Properties

Property name|Description
-|-
AccentColorBrush|Gets or sets accent color
AllowNull|Gets or sets value indicating whether null `Value` is allowed or not.
AllowCopyPaste|Gets or sets value indicating whether `Value` copy/paste is allowed or not.
Format|Gets or sets `DateTime` `Value` format.
HideSeconds|Gets or sets value indication whether sections of `DateTime` `Value` visible or not.
HideTime|Gets or sets value indicating whether time section of `DateTime` `Value` visible or not.
IsAmPmShortFormat|Gets indicating whether Am Pm in short format (`t`) or not.
IsHour12Format|Get value indicating whether time is in 12 hours format or not.
IsReadOnly|Gets or sets value indicating whether `Value` is only for read or not.
IsYearShortFormat|Gets value indicating whether year in short format or not.
ShowOptionsButton|Gets or sets value indicating whether options button is shown or not.
Value|Gets or sets current `DateTime` value

## How to use

Bind a `DateTime` value to the `Value` property:

```
    <orc:DateTimePicker Value="{Binding DateTimeValue}" />
```
[1]: https://catelproject.atlassian.net/wiki/display/CTL/UserControl
[2]: ../images/orc.controls/datetimepicker/DateTimePicker_01.png