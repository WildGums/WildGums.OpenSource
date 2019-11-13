+++
title = "ListTextBox" 
description = ""
+++

This textbox will automaticaly complete user input from specified list.

Inherits from [System.Windows.Controls.TextBox][1].

## Properties

Property name|Description
---|---
ListOfValues|Gets or sets list of suggested values.
Value|Gets or sets current text value.

## Events

Event name|Description
---|---
RightBoundReached|Occurs when caret reached end of text.
LeftBoundReached|Occurs when caret reached text start.

## How to use

Bind to text value to `Value` property and specify `ListOfValues`.

```
<orc:ListTextBox x:Name="MinorGuitarChordsList"
                 Value="{Binding SelectedChord}">
    <orc:ListTextBox.ListOfValues>
        <x:Array Type="sys:String"
                 xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
                 xmlns:sys="clr-namespace:System;assembly=mscorlib">
            <sys:String>Am</sys:String>
            <sys:String>Bm</sys:String>
            <sys:String>Cm</sys:String>
            <sys:String>Dm</sys:String>
            <sys:String>Em</sys:String>
            <sys:String>Fm</sys:String>
            <sys:String>Gm</sys:String>
        </x:Array>
    </orc:ListTextBox.ListOfValues>
</orc:ListTextBox>
```

[1]: https://msdn.microsoft.com/en-us/library/system.windows.controls.textbox(v=vs.110).aspx