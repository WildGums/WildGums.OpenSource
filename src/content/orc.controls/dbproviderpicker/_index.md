+++
title = "DbProviderPicker" 
description = ""
+++

This control allows user to pick database provider from list of providers formed by function: [DbProviderFactories.GetFactoryClasses()][1].

Inherits from [Catel.Windows.Controls.UserControl][2].

![DbProviderPicker 01][3]

## Properties

Property name|Description
---|---
DbProvider|Gets or sets picked database provider.

## How to use

Bind a `DbProvider` value to the `DbProvider` property:

```
<controls:DbProviderPicker DbProvider="{Binding DbProvider, UpdateSourceTrigger=PropertyChanged, Mode=TwoWay}"/>
```

[1]: https://msdn.microsoft.com/en-us/library/system.data.common.dbproviderfactories.getfactoryclasses(v=vs.110).aspx
[2]: http://docs.catelproject.com/vnext/catel-mvvm/views/xaml/usercontrol/
[3]: ../../images/orc.controls/dbproviderpicker/DbProviderPicker_01.png