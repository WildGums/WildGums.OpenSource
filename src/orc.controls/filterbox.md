FilterBox
=========

Looks like a regular `TextBox`. 

![FilterBox 01](../images/orc.controls/filterbox/FilterBox_01.png)

Start typing and you will see a drop down list with possible matches. The drop 
down list will automatically update itself as you are typing.

![FilterBox 02](../images/orc.controls/filterbox/FilterBox_02.png)

Click on the 'x' button to reset the text box.

![FilterBox 03](../images/orc.controls/filterbox/FilterBox_03.png)

## Properties

Property name|Description
-|-
FilterSource|The collection of items shown in the drop down list
PropertyName|The name of the property you want to use to filter the items in the collection with.
Text|The text entered by the user, which is used to filter the items in the `FilterSource` collection

## Events

Event name|Description
-|-


## Methods

Method name|Description
-|-


## How to use

```
<orc:FilterBox PropertyName="Value" 
	           FilterSource="{Binding FilterSource}" 
	           Text="{Binding FilterText}"/>
```
