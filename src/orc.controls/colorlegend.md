ColorLegend
===========

This control helps hide/show, select and change colors collection.

![ColorLegend 01](../images/orc.controls/colorlegend/ColorLegend_01.png)

## Properties

Property name|Description
-|-
AccentColorBrush|Get or sets accent color
AllowColorEditing|Gets or sets a value indicating whether color can be edited or not.
EditingColor|Gets or sets a value indicating whether user editing current color.
Filter|Gets or sets filter for list of color.
FilteredItemsIds|Gets or sets the filtered items ids.
FilteredItemsSource|Gets or sets a source for color items respecting current filter value.
FilterWatermark|Gets or sets filter watermark string we use in search textbox.
ItemsSource|Gets or sets source for color items.
IsAllVisible|Gets or sets a value indicating whether is all visible.
IsColorSelecting|Gets or sets a value indicating whether user editing current color.
SelectedColorItems|Gets or sets list of selected items.
ShowBottomToolBox|Gets or sets a value indicating whether bottom tool box is shown or not.
ShowColorVisibilityControls|Gets or sets a value indicating whether visibility controls are shown or not.
ShowSearchBox|Gets or sets a value indicating whether search box is shown or not.
ShowSettingsBox|Gets or sets a value indicating whether settings button is shown or not.
ShowToolBox|Gets or sets a value indicating whether tool box is shown or not.

## Events

Event name|Description
-|-
SelectionChanged|Occurs when selected color item changed

## How to use

When using the ColorLegend in data binding scenarios, bind your color items collection to `ItemsSource` property. You can show/hide `ToolBox`, `BottomToolBox`, `ColorVisibilityControls`, `SearchBox`, `SettingsBox` by setting the appropriate flags. Bind to `SelectedColorItems` property to get current selection.
Because the `ColorLegend` is inherited from the `HeaderedContentControl` you can specify its header as shown in the example.

```
<orc:ColorLegend ItemsSource="{Binding ColorItems}"
                 AllowColorEditing="True"
                 ShowColorVisibilityControls="True"
                 ShowSettingsBox="False"
                 SelectedColorItems="{Binding SelectedColorItems}">
    <orc:ColorLegend.Header>
        <orc:HeaderBar Header="This is ColorLegend"/>
    </orc:ColorLegend.Header>
</orc:ColorLegend>
```