# Orchestra

[![Join the chat at https://gitter.im/WildGums/Orchestra](https://badges.gitter.im/Join%20Chat.svg)](https://gitter.im/WildGums/Orchestra?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

![License](https://img.shields.io/github/license/wildgums/orchestra.svg)
![Version](https://img.shields.io/nuget/v/orchestra.core.svg)
![Pre-release version](https://img.shields.io/nuget/vpre/orchestra.core.svg)

Orchestra is a composable WPF shell and framework built on top of [Catel](http://www.catelproject.com).

It has been in active development for over 4 years (initial commit 2012/06/18) and is used in numerous Line of Business (LOB) applications on a daily basis.

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
| ![Fluent Ribbon 01](images/shell_fluentribbon_01.png)  | ![MahApps 01](images/shell_mahapps_01.png)  |
| ![Fluent Ribbon 02](images/shell_fluentribbon_02.png)  |                                                 |


## Nuget packages

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

We purposely designed Orchestra to be a lightweight shell. However you can 'super charge' it with the following open source libraries:
(We use all these libraries with Orchestra. In fact they were designed to work seamlessly with Orchestra. Hint: the libraries all start with Orc.*)

- License management ([Orc.LicenseManager](https://github.com/Orcomp/Orc.LicenseManager))
- Project management ([Orc.ProjectManagement](https://github.com/Orcomp/Orc.ProjectManagement))
- Automatic updates ([Orc.NuGetExplorer](https://github.com/WildGums/Orc.NuGetExplorer) [Orc.Squirrel](https://github.com/Orcomp/Orc.Squirrel))
- Undo/Redo ([Orc.Memento](https://github.com/WildGums/Orc.Memento))

You can find the full list [here](https://github.com/WildGums).

## Other similar open source projects

- [Gemini](https://github.com/tgjones/gemini "Gemini")
- [Wide](https://github.com/chandramouleswaran/Wide/ "Wide")
- [Albatross Shell](https://albatrossshell.codeplex.com/ "Albatross Shell")
