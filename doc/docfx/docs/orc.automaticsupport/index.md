---
uid: orc.automaticsupport
title: Orc.AutomaticSupport
---

Find the source at [https://github.com/WildGums/Orc.AutomaticSupport](https://github.com/WildGums/Orc.AutomaticSupport).

| | |
|-|-|
| Chat | [![Join the chat](https://badges.gitter.im/Join%20Chat.svg)](https://gitter.im/WildGums/Orc.AutomaticSupport) |
| Downloads | [![NuGet downloads](https://img.shields.io/nuget/dt/Orc.AutomaticSupport.svg)](https://www.nuget.org/packages/Orc.AutomaticSupport) |
| Stable version | [![Stable version](https://img.shields.io/nuget/v/Orc.AutomaticSupport.svg)](https://www.nuget.org/packages/Orc.AutomaticSupport) |
| Unstable version | [![Unstable version](https://img.shields.io/nuget/vpre/Orc.AutomaticSupport.svg)](https://www.nuget.org/packages/Orc.AutomaticSupport) |


Allows the user to easily download a remote file that will validate and provide automatic support to the end-user.

## Initializing the service

It is very important to initialize the service. It can be done by retrieving it from the service locator and update the support url:

```csharp
var dependencyResolver = this.GetDependencyResolver();
var automaticSupportService = dependencyResolver.ResolveType<IAutomaticSupportService>();

automaticSupportService.SupportUrl = "http://mywebsite/support/supportapp.exe";
```

## Automatic support support with UI

When using the UI, it will handle the progress events of the service automatically. The only thing to do is show the window to the user using the code below:

```csharp
uiVisualizerService.Show<RequestSupportViewModel>();
```

## Automatic support without UI

If you don't want a window to show to the end-user, use the following code:

```csharp
automaticSupportService.DownloadAndRun();
```