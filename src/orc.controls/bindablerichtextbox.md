BindableRichTextBox
===================

The control can be used as a regular [RichTextBox][1] with one added advantage. It can be bound to a [FlowDocument][2]. 
Inherits from [System.Windows.Controls.RichTextBox][1].

It is very useful to use with the MVVM pattern.

## Properties

Property name|Description
-|-
BindableDocument|The bindable `FlowDocument`

## How to use

For binding data to the `BindableRichTextBox`, use the `BindableDocument` property  (the type is [FlowDocument][2])

```
    <orc:BindableRichTextBox BindableDocument="{Binding FlowDoc}" />
```

Once that is done you may assign a new value to it or change the layout of the  [FlowDocument][2]. 

Everything will automatically be displayed in your UI.

[1]: https://msdn.microsoft.com/en-us/library/system.windows.controls.richtextbox(v=vs.110).aspx
[2]: https://msdn.microsoft.com/en-us/library/system.windows.documents.flowdocument(v=vs.110).aspx