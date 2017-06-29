NumericTextBox
==============
This text box for numeric, percentage, or currency input.
<br />Inherits from [System.Windows.Controls.TextBox][1].

## Properties

Property name|Description
-|-
Format|Gets or sets input value format ([standart formats][2]/[custom formats][3]) (e.g. "F0", "C2" etc).
MaxValue|Gets or sets maximum input value.
MinValue|Gets or sets minimum input value.
Value|Gets or sets current `double` value.

## Events

Event name|Description
-|-
RightBoundReached|Occurs when caret reached end of text.
LeftBoundReached|Occurs when caret reached text start.

## How to use
```
<orc:NumericTextBox x:Name="Price"
                    Value="{Binding Price}"
                    MinValue="1"
                    MaxValue="12000"
                    Format=C2/>
                    
```
[1]: https://msdn.microsoft.com/en-us/library/system.windows.controls.textbox(v=vs.110).aspx
[2]: https://docs.microsoft.com/en-us/dotnet/standard/base-types/standard-numeric-format-strings
[3]: https://docs.microsoft.com/en-us/dotnet/standard/base-types/custom-numeric-format-strings