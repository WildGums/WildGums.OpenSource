+++
title = "DateRangePicker" 
description = ""
+++

This control is used to display and edit date range quickly.

Inherits from [Catel.Windows.Controls.UserControl][1].

DateRangePicker consist of two [DateTimePickers][2] to specify start end date of date range
and one [TimeSpanPicker][3] to display/change range itself.

![DateRangePicker_01][4]

## Properties

Property name|Description
---|---
AllowCopyPaste|Gets or sets whether copy/paste is allowed.
EndDate|Gets or sets end date.
Format|Gets or sets `DateTime` format for start and end dates of range.
HideSeconds|Gets or sets whether seconds section of start and end [DateTimePickers][2] is visible.
HideTime|Gets or sets whether time section of start and end [DateTimePickers][2] is visible.
IsReadOnly|Gets or sets whether `Span` readonly.
Ranges|Gets or sets collection of `DateRanges` presented on `Ranges combobox`.
SelectedRange|Gets or sets `DateRange` selected on `Ranges combobox`.
ShowOptionsButton|Gets or sets whether options button of start and end [DateTimePickers][2] is visible.
Span|Get or sets result date range (of type [System.TimeSpan][5])
StartDate|Gets or sets start date.

## How to use

Bind a `TimeSpan` value to the `Span` property, also specify `Ranges`, `Format`.
To get/set End and Start date bind to `StartDate` and `EndDate` properties.

```
<orc:DateRangePicker Span="{Binding Span}"
                     StartDate="{Binding StartDate}"
                     EndDate="{Binding EndDate}"
                     Ranges="{Binding Ranges}"
                     Format="yyyy-MM-dd HH:mm:ss"/>
```

[1]: http://docs.catelproject.com/vnext/catel-mvvm/views/xaml/usercontrol/
[2]: ../datetimepicker.htm
[3]: ../timespanpicker.htm
[4]: ../../images/orc.controls/daterangepicker/DateRangePicker_01.png
[5]: https://msdn.microsoft.com/en-us/library/system.timespan(v=vs.110).aspx