+++
title = "OpenFilePicker" 
description = ""
+++

This control allows user to choose an existing file directory.

Inherits from [Catel.Windows.Controls.UserControl][1].

![OpenFilePicker 01][2]

## Properties

Property name|Description
---|---
BaseDirectory|Gets or sets directory path that will be displayed when open file dialog open.
Filter|Gets or sets filter string that determines what types of files are displayed from the open file dialog.
LabelWidth|Gets or sets label width.
LabelText|Gets or sets label content.
SelectedFile|Gets or sets selected file path.

## How to use

Specify label text and width and bind a file path to the `SelectedFile` property. Also you can specify file filter.

```
<orc:OpenFilePicker LabelText="OpenFilePicker control"
                    LabelWidth="150"
                    SelectedFile="{Binding SelectedFile}"
                    BaseDirectory="C:\"
                    Filter="Image files (*.bmp, *.jpg)|*.bmp;*.jpg|All files (*.*)|*.*" />
```

[1]: http://docs.catelproject.com/vnext/catel-mvvm/views/xaml/usercontrol/
[2]: ../../images/orc.controls/openfilepicker/OpenFilePicker_01.png