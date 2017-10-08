+++
title = "ConnectionStringBuilder" 
description = ""
+++

This control allows user to build connection string for remote and local data sources.

Inherits from [Catel.Windows.Controls.UserControl][1].

It works as shown below.
![ConnectionStringBuilder 01][2]

## Properties

Property name|Description
---|---
AccentColorBrush|Gets or sets accent color.
ConnectionState|Gets or sets the state of connection (`not tested`, `invalid` or `valid`).
ConnectionString|Gets or sets connection string.
IsInEditMode|Gets or set whether connection string properties dialog is visible.

## How to use

Put control on a parent content control and bind to `ConnectionString` property.

```
<orc:ConnectionStringBuilder x:Name="ConnectionStringBuilderControl"
                             ConnectionString="{Binding ConnectionString}"/>
```

[1]: http://docs.catelproject.com/vnext/catel-mvvm/views/xaml/usercontrol/
[2]: ../../images/orc.controls/connectionstringbuilder/ConnectionStringBuilder_01.png