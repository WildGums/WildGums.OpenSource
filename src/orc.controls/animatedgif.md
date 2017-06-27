AnimatedGif
===========

This is simple control infinitely animate `GIF` images on its surface without blocking main UI thread.

This control is very helpful to use in wait dialogs.

## Properties

Property name|Description
-|-
GifSource|Gets or sets gif image path

## How to use

Just place the AnimatedGif control on the parent, then specify GifSource.

```
<orc:AnimatedGif x:Name="LoadingGif" 
                 Width="16" 
                 Height="16" 
                 HorizontalAlignment="Center"
                 GifSource="/Resources/Images/Loading.gif" Margin="5" />
```