DropDownButton
==============

The control is made up of two buttons side by side. The First button works as a regular button and the second one will display a customizable drop down menu under the control. 

![DropDownButton 01](../images/orc.controls/dropdownbutton/DropDownButton_01.png)

## Properties

Property name|Description
-|-
Header|Caption of the button
Command|The command to execute when the button itself is clicked
DropDown|The drop down content (e.g. context menu)

## Events

Event name|Description
-|-


## Methods

Method name|Description
-|-


## How to use

```    
<orc:DropDownButton Header="Action" Command="{Binding DefaultAction}">
	<orc:DropDownButton.DropDown>
		<ContextMenu>
			<MenuItem Header="Item 1"/>
			<MenuItem Header="Item 2"/>
			<Separator/>
			<MenuItem Header="Item 2"/>
		</ContextMenu>
	</orc:DropDownButton.DropDown>
</orc:DropDownButton>
```