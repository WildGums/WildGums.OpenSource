TimeSpanPicker
==============

This control is used to display and edit TimeSpan values. 
By default it will display the value using the *dd.hh:mm:ss* format.

![TimeSpan 01](../images/orc.controls/timespanpicker/TimeSpan_01.png) 

![TimeSpan 02](../images/orc.controls/timespanpicker/TimeSpan_02.png)

When hovering over the control, the tooltip will display the timespan in total 
number of days, hours and minutes.

Double click on any of the *d*, *h*, *m* or *s* letters, to edit the TimeSpan value 
with the specified unit of measure. (i.e. days, hours, minutes, seconds)

![TimeSpan 03](../images/orc.controls/timespanpicker/TimeSpan_03.png) 

![TimeSpan 04](../images/orc.controls/timespanpicker/TimeSpan_04.png) 

![TimeSpan 05](../images/orc.controls/timespanpicker/TimeSpan_05.png)

## Properties

Property name|Description
-|-
Value|The TimeSpan value

## Events

Event name|Description
-|-


## Methods

Method name|Description
-|-


## How to use TimeSpan

Bind a `TimeSpan` value to the `Value` property:

```
	<orc:TimeSpanPicker Value="{Binding TimeSpanValue}"/>
```