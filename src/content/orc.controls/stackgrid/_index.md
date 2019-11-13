+++
title = "StackGrid" 
description = ""
+++

Ever got tired of specifying the `Grid.Row` and `Grid.Column` properties on a lot of controls inside a [Grid][1]? The `StackGrid` 
does the counting for you and takes away this pain.

Inherits from [System.Windows.Controls.Grid][1].

The Grid is an excellent control to show several controls in a nice layout on the screen. However, it happens a lot that a grid 
consists of only 2 or 3 columns, and the first column is for all the labels, and the second one is for controls such as textboxes. 
You correctly implement all the windows and controls of your application based on user requirements, and then the user decides that 
he/she wants a row inserted into a grid containing about 20 rows. When this happens, you need to re-define all the row attributes 
of the grid.

With the StackGrid, it is no longer required to define the row and column definitions. The StackGrid can smartly interpret the 
location of the controls and therefore fill in the Grid.Row and Grid.Column attached properties for you. You need an empty row? 
No problem, you can use the EmptyRow class to fill up a row for you. You want a column span? No problem, just use the existing 
Grid.Column attached property and the StackGrid will automatically handle this for you.

The StackGrid internally uses a Grid to measure the layout. However, it dynamically loops through its children, and then assigns 
the Grid.Row and Grid.Column attached properties for the user.

## How to use

```
<catel:StackGrid>
    <!-- Row definitions -->
     <catel:StackGrid.RowDefinitions>
           <RowDefinition Height="Auto" />
           <RowDefinition Height="Auto" MinHeight="15" />
           <RowDefinition Height="Auto" />
     </catel:StackGrid.RowDefinitions>
      
     <!-- Column definitions -->
     <catel:StackGrid.ColumnDefinitions>
           <ColumnDefinition Width="Auto" />
           <ColumnDefinition Width="*" />
     </catel:StackGrid.ColumnDefinitions>
      
     <!-- Name, will be set to row 0, column 1 and 2 -->
     <Label Content="Name" />
     <TextBox Text="Geert van Horrik" />
      
     <!-- Empty row -->
     <catel:EmptyRow />
      
     <!-- Wrappanel, will span 2 columns -->
     <WrapPanel Grid.ColumnSpan="2">
           <Button Command="ApplicationCommands.Close" />
     </WrapPanel>
</catel:StackGrid>
```

[1]: https://msdn.microsoft.com/en-us/library/system.windows.controls.grid(v=vs.110).aspx