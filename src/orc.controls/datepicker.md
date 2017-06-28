DatePicker
==========

This control looks like a regular DatePicker but allows you to edit a date quickly.
<br />Inherits from [Catel.Windows.Controls.UserControl][1].

![DatePicker 01][2]

Double click on any number to start editing. Press the “Tab” key to move to the next number.

Click on a letter to display a drop down list to choose from.

## Properties

Property name|Description
-|-
AccentColorBrush|Gets or sets accent color
AllowNull|Gets or sets value indicating whether null `Value` is allowed or not.
AllowCopyPaste|Gets or sets value indicating whether `Value` copy/paste is allowed or not.
Format|Gets or sets `DateTime` `Value` format.
IsReadOnly|Gets or sets value indicating whether `Value` is only for read or not.
IsYearShortFormat|Gets value indicating whether year in short format or not.
ShowOptionsButton|Gets or sets value indicating whether options button is shown or not.
Value|Gets or sets current `DateTime` value

## How to use

Bind a `DateTime` value to the `Value` property:

```
    <orc:DatePicker Value="{Binding DateValue}" />
```
[1]: https://catelproject.atlassian.net/wiki/display/CTL/UserControl
[2]: ../images/orc.controls/datepicker/DatePicker_01.png