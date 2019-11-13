+++
title = "Orc.CommandLine" 
description = ""
+++

Name|Badge
---|---
Chat|[![Join the chat at https://gitter.im/WildGums/Orc.CommandLine](https://badges.gitter.im/Join%20Chat.svg?classes=inline)](https://gitter.im/WildGums/Orc.CommandLine?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)
Downloads|![NuGet downloads](https://img.shields.io/nuget/dt/orc.commandline.svg?classes=inline)
Stable version|![Version](https://img.shields.io/nuget/v/orc.commandline.svg?classes=inline)
Unstable version|![Pre-release version](https://img.shields.io/nuget/vpre/orc.commandline.svg?classes=inline)

Find the source at [https://github.com/WildGums/Orc.CommandLine](https://github.com/WildGums/Orc.CommandLine)

Use command line the easy way.

## Quick introduction

Using this library is easy:

```
public class MyContext : ContextBase
{
	[Option(' ', "", HelpText = "The file name to start with")]
	public string FileName { get; set; }

	[Option('b', "bool", AcceptsValue = false, HelpText = "Some boolean switch")]
	public bool BooleanSwitch { get; set; }

	[Option('i', "int", HelpText = "Some integer switch")]
	public int IntegerSwitch { get; set; }

	[Option('s', "string", HelpText = "Some string switch")]
	public string StringSwitch { get; set; }
}
```

Then use this code:

```
// Environment.CommandLine also contains current application path, it is removed with this extension method
var commandLine = Environment.CommandLine.GetCommandLine(true);
var context = new MyContext();

var validationContext = commandLineParser.Parse(commandLine, context);
if (validationContext.HasErrors)
{
	// something bad happened
	return;
}

if (context.IsHelp)
{
	// Use the IHelpWriterService to output the help
	var helpContent = helpWriterService.ConvertToString(context);
	// TODO: write to console or show as a message box
	return;
}

// Handle the context here
```

This will successfully parse a command line like this:

```
myapp.exe somefile /b -string somestring /i 42
```

## Allowed switches

The library supports 2 types of switches, / and -. For example:

- -b
- -string
- /b
- /string

An option definition has a short and long name. Both can be used as a switch.

## Accepts value

The `AcceptsValue` property should only be used on boolean properties. When they are specified, they are assumed to be `true` (defaulting to `false`). 

## Processoring raw values

It's possible to retrieve all key/value pairs passed in the command line, even when switches are not specified upfront. This is extremely useful 
in scenarios where the command line is used to override dynamic properties.

```
var rawValues = context.RawValues;
myValue = rawValues["someswitch"];
```

The `RawValues` dictionary is case-insensitive.