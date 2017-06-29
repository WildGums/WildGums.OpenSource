SaveFilePicker
==============

This control allows user to choose a directory where a file will be saved.
<br />Inherits from [Catel.Windows.Controls.UserControl][1].

![SaveFilePickerView 01][2]

## Properties

Property name|Description
-|-
Filter|Gets or sets filter string that determines what types of files are displayed from the save file dialog.
LabelWidth|Gets or sets label width.
LabelText|Gets or sets label content.
SelectedFile|Gets or sets selected file path.

## How to use

```
<orc:SaveFilePicker LabelText="SaveFilePicker control"           
                    LabelWidth="150"
                    SelectedFile="{Binding SelectedFile}"
                    Filter="Image files (*.bmp, *.jpg)|*.bmp;*.jpg|All files (*.*)|*.*" />
```
[1]: https://catelproject.atlassian.net/wiki/display/CTL/UserControl
[2]: ../images/orc.controls/savefilepicker/SaveFilePicker_01.png