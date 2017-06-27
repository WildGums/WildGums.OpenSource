CulturePicker
=============

This control allows to pick culture from [System.Globalization.CultureTypes.AllCultures][1] list.
<br />Inherits from [Catel.Windows.Controls.UserControl][2]

It looks like ordinary combobox populated with list of [CultureInfo][1].

![CulturePicker 01][3]

## Properties

Property name|Description
-|-
SelectedCulture|Gets or sets selected culture (of type [System.Globalization.CultureInfo][1])

## How to use

Put it on parent control and bind `SelectedCulture` property.

```
<orc:CulturePicker SelectedCulture="{Binding Culture}"/>
```
[1]: https://msdn.microsoft.com/ru-ru/library/system.globalization.cultureinfo(v=vs.110).aspx
[2]: https://catelproject.atlassian.net/wiki/display/CTL/UserControl
[3]: ../images/orc.controls/culturepicker/CulturePicker_01.png