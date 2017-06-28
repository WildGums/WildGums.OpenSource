WatermarkTextBox
================

This control will display a watermark in a textbox control when no value is assigned to it.
As soon as the user starts typing in the textbox the watermark will disappear.
<br />Inherits from [System.Windows.Controls.TextBox][1].

This control is useful to add hints.

A watermark can contain text or any other control such as images:

![WatermarkTextBox 02][2]

## Properties

Property name|Description
-|-
Watermark|The watermark to show, can be either a string or a template

## How to use

In order to use the simple watermark just set a watermark value to the `Watermark` property: 

```
<orc:WatermarkTextBox Watermark="Textbox with Watermark" />
```

In order to add controls or images to the watermark you can define a watermark value like this: 

```
<orc:WatermarkTextBox>
    <orc:WatermarkTextBox.Watermark>
        <StackPanel Orientation="Horizontal">
            <Image Source="/Resources/Images/email.png" />
            <TextBlock Text="Enter the e-mail" />
        </StackPanel>
    </orc:WatermarkTextBox.Watermark>
</orc:WatermarkTextBox>
```
[1]: https://msdn.microsoft.com/en-us/library/system.windows.controls.textbox(v=vs.110).aspx
[2]: ../images/orc.controls/watermarktextbox/WatermarkTextBox_02.png