BindableRichTextBox
===================

The control can be used as a regular [RichTextBox](https://msdn.microsoft.com/en-us/library/system.windows.controls.richtextbox

(v=vs.110).aspx) with one added advantage. It can be bound to a [FlowDocument](https://msdn.microsoft.com/en-

us/library/system.windows.documents.flowdocument(v=vs.110).aspx). 

It is very useful to use with the MVVM pattern.

## Properties

Property name|Description
-|-
BindableDocument|The bindable `FlowDocument`

## Events

Event name|Description
-|-


## Methods

Method name|Description
-|-


## How to use

For binding data to the `BindableRichTextBox`, use the `BindableDocument` property  (the type is [FlowDocument]

(https://msdn.microsoft.com/en-us/library/system.windows.documents.flowdocument(v=vs.110).aspx)):

```
    <orc:BindableRichTextBox BindableDocument="{Binding FlowDoc}" />
```

Once that is done you may assign a new value to it or change the layout of the  [FlowDocument](https://msdn.microsoft.com/en-

us/library/system.windows.documents.flowdocument(v=vs.110).aspx). 

Everything will automatically be displayed in your UI.