+++
title = "AnimatedGif" 
description = ""
+++

This is simple control infinitely animate `GIF` images on its surface without blocking main UI thread.

Inherits from [System.Windows.Controls.Image][1].

This control is very useful for wait dialogs.

## Properties

Property name|Description
---|---
GifSource|Gets or sets gif image path

## How to use

Place the AnimatedGif control on the parent content control, then specify GifSource.

```
<orc:AnimatedGif x:Name="LoadingGif" 
                 Width="16" 
                 Height="16" 
                 HorizontalAlignment="Center"
                 GifSource="/Resources/Images/Loading.gif" 
                 Margin="5" />
```

[1]: https://msdn.microsoft.com/en-us/library/system.windows.controls.image(v=vs.110).aspx