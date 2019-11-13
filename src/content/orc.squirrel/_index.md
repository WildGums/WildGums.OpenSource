+++
title = "Orc.Squirrel" 
description = ""
+++

Name|Badge
---|---
Chat|[![Join the chat at https://gitter.im/WildGums/Orc.Squirrel](https://badges.gitter.im/Join%20Chat.svg?classes=inline)](https://gitter.im/WildGums/Orc.Squirrel?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)
Downloads|![NuGet downloads](https://img.shields.io/nuget/dt/orc.squirrel.svg?classes=inline)
Stable version|![Version](https://img.shields.io/nuget/v/orc.squirrel.svg?classes=inline)
Unstable version|![Pre-release version](https://img.shields.io/nuget/vpre/orc.squirrel.svg?classes=inline)

Find the source at [https://github.com/WildGums/Orc.Squirrel](https://github.com/WildGums/Orc.Squirrel)

Is a library that adds a few extra features on top of [Squirrel](https://github.com/Squirrel/Squirrel.Windows) to allow updates to come from different channels.

You can setup "Alpha", "Beta" and "Stable" channels to release your software through.

NuGet Packages
----------------

- `[Orc.Squirrel](http://www.nuget.org/packages/Orc.Squirrel/)` => contains an `IUpdateService` and an `UpdateChannel` class
- `[Orc.Squirrel.Xaml](http://www.nuget.org/packages/Orc.Squirrel.Xaml/)` => contains an installation notification window

Quick start
------------

- Use [Squirrel](https://github.com/Squirrel/Squirrel.Windows) to deploy your software
- Use `UpdateChannel` for setting up your update channels
- Use `IUpdateService` for handling updates (for your software)
