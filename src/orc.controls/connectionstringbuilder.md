ConnectionStringBuilder
=======================

This control allows user to build connection string for remote and local data sources.
<br />Inherits from [Catel.Windows.Controls.UserControl][1].

It works as shown below.
![ConnectionStringBuilder 01][2]

## Properties

Property name|Description
-|-
AccentColorBrush|Gets or sets accent color.
ConnectionState|Gets or sets the state of connection (`not tested`, `invalid` or `valid`).
ConnectionString|Gets or sets connection string.
IsInEditMode|Gets or set whether is connection string properties dialog is visible.

## How to use

Put control on a parent content control and bind to `ConnectionString` property.

```
<orc:ConnectionStringBuilder x:Name="ConnectionStringBuilderControl"
                             ConnectionString="{Binding ConnectionString}"/>
```
[1]: https://catelproject.atlassian.net/wiki/display/CTL/UserControl
[2]: ../images/orc.controls/connectionstringbuilder/ConnectionStringBuilder_01.png