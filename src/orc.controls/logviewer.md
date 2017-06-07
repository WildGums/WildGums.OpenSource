LogViewer
=========

This control is used to display log messages generated from an application in real time. The  Control uses it's own LogListener, 

which is derived from [Catel.Logging.LogListenerBase](http://www.nudoq.org/#!/Packages/Catel.Core/Catel.Core/LogListenerBase). 

A [RichTextBox](https://msdn.microsoft.com/en-us/library/system.windows.controls.richtextbox(v=vs.110).aspx) is used to display the 

log messages.

![LogViewer 03](../images/orc.controls/logviewer/LogViewer_01.png)

## Properties

**Filtering**

Property name|Description
-|-
LogFilter|Used for filtering the log records with a search term
ShowDebug|Show debug log records if true
ShowInfo|Show info log records if true
ShowWarning|Show warning log records if true
ShowError|Show error log records if true

**Visualisation**

Property name|Description
-|-
EnableTimestamp|Show timestamp for each log record if true
EnableTextColoring|Show colors for each log record depending on its log level
EnableIcons|Show the icon associated with each log record. The icon will change depending on the log level

## Events

Event name|Description
-|-
LogEntryDoubleClick|Allow you to subscribe to a user double clicking on a record

## Methods

Method name|Description
-|-


## How to use

```
<orc:LogViewer LogEntryDoubleClick="LogViewerControlOnLogRecordDoubleClick
               LogFilter="{Binding Text, ElementName=FilterTextBox}"
               ShowDebug="{Binding IsChecked, ElementName=ShowDebugToggleButton}"
               ShowInfo="{Binding IsChecked, ElementName=ShowInfoToggleButton}"
               ShowWarning="{Binding IsChecked, ElementName=ShowWarningToggleButton}"
               ShowError="{Binding IsChecked, ElementName=ShowErrorToggleButton}"
               EnableTimestamp="{Binding IsChecked, ElementName=EnableTimestampCheckBox}"
               EnableTextColoring="True" 
               EnableIcons="True"/>
```
