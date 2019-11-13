+++
title = "ValidationContextControl" 
description = ""
+++

This control created to display [IValidationContext][1].

Inherits from [Catel.Windows.Controls.UserControl][2].

The [IValidationContext][1] container allows querying of all validations of a model (ViewModel) object. So this control can be very useful when user accepting model (viewModel) changes (in dialogs, forms etc).

![ValidationContextControl 01][3]

## Properties

Property name|Description
---|---
AccentColorBrush|Gets or sets accent color.
IsExpandedAllOnStartup|Gets or sets value indicating whether all nodes of validation context tree expanded on startup.
ShowButtons|Gets or sets whether `Open` and `Copy` buttons (see picture above) are visible.
ShowFilterBox|Gets or sets whether FilterBox (see picture above) is visible.
ValidationContext|Gets or sets displayed validation context.

## How to use

Bind `IValidationContext` value to `ValidationContext` property of control.

```
<orc:ValidationContextView x:Name="validationContextView" 
                           ValidationContext="{Binding ValidationContext}"
                           IsExpandedAllOnStartup="True" />
```

[1]: http://docs.catelproject.com/vnext/catel-core/validation/using-validation-context/
[2]: http://docs.catelproject.com/vnext/catel-mvvm/views/xaml/usercontrol/
[3]: ../../images/orc.controls/validationcontextcontrol/ValidationContextControl.png