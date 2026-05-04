---
uid: orchestra
title: Orchestra
---

Find the source at [https://github.com/WildGums/Orchestra](https://github.com/WildGums/Orchestra).

| | |
|-|-|
| Chat | [![Join the chat](https://badges.gitter.im/Join%20Chat.svg)](https://gitter.im/WildGums/Orchestra) |
| Downloads | [![NuGet downloads](https://img.shields.io/nuget/dt/Orchestra.Core.svg)](https://www.nuget.org/packages/Orchestra.Core) |
| Stable version | [![Stable version](https://img.shields.io/nuget/v/Orchestra.Core.svg)](https://www.nuget.org/packages/Orchestra.Core) |
| Unstable version | [![Unstable version](https://img.shields.io/nuget/vpre/Orchestra.Core.svg)](https://www.nuget.org/packages/Orchestra.Core) |


Orchestra is a composable WPF shell and framework built on top of [Catel](https://www.catelproject.com).

It has been in active development since 2012 and is used in numerous Line of Business (LoB) applications on a daily basis.

Orchestra consists of a main shell including an SDK with services that allow developers to communicate with the shell.

## Goals

Provide a robust yet flexible LOB shell, designed with best practices in mind, to jump start the development of desktop applications.

In other words, we wanted to create a shell that dramatically speeds up the time it takes to release a LOB application to market by enabling developers to concentrate more on the business logic and less on scaffolding.

## Available Shells

Orchestra provides support for two different shells:

- Fluent ribbon
- MahApps

|  Fluent ribbon shell                                       | MahApps shell                                   |
|------------------------------------------------------------|-------------------------------------------------|
| ![Fluent Ribbon 01](~/images/orchestra/shell_fluentribbon_01.png)  | ![MahApps 01](~/images/orchestra/shell_mahapps_01.png)  |
| ![Fluent Ribbon 02](~/images/orchestra/shell_fluentribbon_02.png)  |                                                 |


## NuGet packages

- [Orchestra.Core](https://www.nuget.org/packages/Orchestra.Core)
- [Orchestra.Shell.Ribbon.Fluent](https://www.nuget.org/packages/Orchestra.Shell.Ribbon.Fluent)
- [Orchestra.Shell.MahApps](https://www.nuget.org/packages/Orchestra.Shell.MahApp)

## Prerequisites

A good working knowledge of Inversion of Control (IoC).

## Orchestra features

- Application wide logging with an in app log viewer (CTRL + L)
- Command manager
- Shortcut key manager
- Fluent validation
- Themeable 'about box' window
- Themeable splash screen
- Consistent styling across the whole application

## Orchestra + module features

We purposely designed Orchestra to be a lightweight shell. However, it can be extended with the following open source libraries:
(We use all these libraries with Orchestra. In fact they were designed to work seamlessly with Orchestra. Hint: the libraries all start with Orc.*)

- License management ([Orc.LicenseManager](https://github.com/WildGums/Orc.LicenseManager))
- Project management ([Orc.ProjectManagement](https://github.com/WildGums/Orc.ProjectManagement))
- Automatic updates ([Orc.NuGetExplorer](https://github.com/WildGums/Orc.NuGetExplorer) [Orc.Squirrel](https://github.com/WildGums/Orc.Squirrel))
- Undo/Redo ([Orc.Memento](https://github.com/WildGums/Orc.Memento))

You can find the full list [here](https://github.com/WildGums).

## Other similar open source projects

- [Gemini](https://github.com/tgjones/gemini "Gemini")
- [Wide](https://github.com/chandramouleswaran/Wide/ "Wide")
