OpenFilePicker
==============

This control allows user to choose an existing file directory.
<br />Inherits from [Catel.Windows.Controls.UserControl][1].

![OpenFilePicker 01][2]

## Properties

Property name|Description
-|-
BaseDirectory|Gets or sets directory in which the file is searched.
Filter|Gets or sets file filter.
LabelWidth|Gets or sets label width.
LabelText|Gets or sets label content.
SelectedFile|Gets or sets selected file path.

## How to use

Specify label text and width and bind a file path to the `SelectedFile` property. Also you can specify file filer.
```
<orc:OpenFilePicker LabelText="OpenFilePicker control" LabelWidth="150" />
```
[1]: https://catelproject.atlassian.net/wiki/display/CTL/UserControl
[2]: ../images/orc.controls/openfilepicker/OpenFilePicker_01.png