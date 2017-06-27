DatePicker
==========

This control looks like a regular DatePicker but allows you to edit a date quickly.
<br />Inherits from [Catel.Windows.Controls.UserControl][1]

![DatePicker 01][2]

Double click on any number to start editing. Press the “Tab” key to move to the next number.

Click on a letter to display a drop down list to choose from.

## Properties

Property name|Description

Value|Gets or sets present `DateTime` value



## Events

Event name|Description
-|-


## Methods

Method name|Description
-|-


## How to use

Bind a `DateTime` value to the `Value` property:

```
    <orc:DatePicker Value="{Binding DateValue}" />
```
[1] 
[2] ../images/orc.controls/datepicker/DatePicker_01.png