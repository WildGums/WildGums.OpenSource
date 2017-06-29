DirectoryPicker
===============

This control allows users to choose a directory.
<br />Inherits from [Catel.Windows.Controls.UserControl][1].

![DirectoryPicker 01][2]

## Properties

Property name|Description
-|-
LabelWidth|Gets or sets the label width
LabelText|Gets or sets the label content
SelectedDirectory|Gets or sets the selected directory

## How to use

Specify label text and width and bind a directory path to the `SelectedDirectory` property.
```
<orc:DirectoryPicker LabelText="DirectoryPicker control"
                     LabelWidth="150"
                     SelectedDirectory="{Binding SelectedDirectory}" />
```
[1]: https://catelproject.atlassian.net/wiki/display/CTL/UserControl
[2]: ../images/orc.controls/directorypicker/DirectoryPicker_01.png