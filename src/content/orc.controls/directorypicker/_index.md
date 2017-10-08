+++
title = "DirectoryPicker" 
description = ""
+++

This control allows users to choose a directory.

Inherits from [Catel.Windows.Controls.UserControl][1].

![DirectoryPicker 01][2]

## Properties

Property name|Description
---|---
LabelWidth|Gets or sets label width
LabelText|Gets or sets label content
SelectedDirectory|Gets or sets selected directory

## How to use

Specify label text and width and bind a directory path to the `SelectedDirectory` property.

```
<orc:DirectoryPicker LabelText="DirectoryPicker control"
                     LabelWidth="150"
                     SelectedDirectory="{Binding SelectedDirectory}" />
```

[1]: http://docs.catelproject.com/vnext/catel-mvvm/views/xaml/usercontrol/
[2]: ../../images/orc.controls/directorypicker/DirectoryPicker_01.png