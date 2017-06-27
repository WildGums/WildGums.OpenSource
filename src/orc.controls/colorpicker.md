ColorPicker
===========

This control allows user to choose a color. 
<br />Inherits from [System.Windows.Controls.Control][1].

![ColorPicker 01][2]

## Properties

Property name|Description
-|-
Color|Gets or sets picked color.
CurrentColor|Get or sets current color.
IsDropDownOpen|Gets or sets a value indicating whether is popup visible.
PopupPlacement|Gets or sets the select color popup placement.

## Events

Event name|Description
-|-
ColorChanged|Occurs when picked color changed

## How to use

When using the ColorPicker in data binding scenarios, bind color you want to pick to `Color` property.
To get (initialize) current color bind to `CurrentColor` property.

```
<orc:ColorPicker Width="50"
                 Color="{Binding PickedColor}"
                 CurrentColor="{Binding CurrentColor}"
                 PopupPlacement="Bottom"/>
```
[1]: https://msdn.microsoft.com/en-us/library/system.windows.controls.control(v=vs.110).aspx
[2]: ../images/orc.controls/colorpicker/ColorPicker_01.png