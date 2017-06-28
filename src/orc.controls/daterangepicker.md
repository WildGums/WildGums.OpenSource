DateRangePicker
===============

This control is used to display and edit date range quickly.
<br />Inherits from [Catel.Windows.Controls.UserControl][1].

DateRangePicker consist of two [DateTimePickers][2] to specify start end date of date range
and one [TimeSpanPicker][3] to display range itself.

![DateRangePicker_01][4]

## Properties

Property name|Description
-|-
AllowCopyPaste|Gets or sets value indicating whether copy/paste is allowed or not.
EndDate|Gets or sets end date.
Format|Gets or sets `DateTime` format for start and end dates of range.
HideSeconds|Gets or sets value indication whether seconds of start and end [DateTimePickers][2] visible or not.
HideTime|Gets or sets value indicating whether time section of start and end [DateTimePickers][2] visible or not.
IsReadOnly|Gets or sets value indication whether `Span` readonly or not.
Ranges|Gets or sets collection of `DateRanges` presented on `Ranges combobox`.
SelectedRange|Gets or sets `DateRange` selected on `Ranges combobox`.
ShowOptionsButton|Gets or sets value indicating whether options button of start and end [DateTimePickers][2] is shown or not.
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
[1]: https://catelproject.atlassian.net/wiki/display/CTL/UserControl
[2]: ../orc.controls/datetimepicker.htm
[3]: ../orc.controls/timespanpicker.htm
[4]: ../images/orc.controls/daterangepicker/DateRangePicker_01.png
[5]: https://msdn.microsoft.com/en-us/library/system.timespan(v=vs.110).aspx