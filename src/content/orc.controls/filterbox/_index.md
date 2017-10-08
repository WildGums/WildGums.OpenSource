+++
title = "FilterBox" 
description = ""
+++

This control looks like a regular `TextBox` with autocomplection and suggested value list.

Inherits from [System.Windows.Controls.ContentControl][1].

![FilterBox 01][2]

Start typing and you will see a drop down list with possible matches. The drop 
down list will automatically update itself as you are typing.

![FilterBox 02][3]

Click on the 'x' button to reset the text box.

![FilterBox 03][4]

## Properties

Property name|Description
---|---
AccentColorBrush|Gets or sets accent color.
AllowAutoCompletion|Gets or sets whether autocompletion is allowed.
FilterSource|Gets or sets the collection of items shown in the drop down list
PropertyName|Get or sets the name of the property you want to use to filter the items in the collection with.
Text|Gets or sets text entered by the user, which is used to filter the items in the `FilterSource` collection
Watermark|Gets or sets watermark.

## How to use

```
<orc:FilterBox PropertyName="Value" 
	           FilterSource="{Binding FilterSource}" 
	           Text="{Binding FilterText}"/>
```

[1]: https://msdn.microsoft.com/en-us/library/system.windows.controls.contentcontrol(v=vs.110).aspx
[2]: ../../images/orc.controls/filterbox/FilterBox_01.png
[3]: ../../images/orc.controls/filterbox/FilterBox_02.png
[4]: ../../images/orc.controls/filterbox/FilterBox_03.png