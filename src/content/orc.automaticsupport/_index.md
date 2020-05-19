+++
title = "Orc.AutomaticSupport" 
description = ""
+++

{{< header name="Orc.AutomaticSupport" >}}

Allows the user to easily download a remote file that will validate and provide automatic support to the end-user.

## Initializing the service

It is very important to initialize the service. It can be done by retrieving it from the service locator and update the support url:

```
var dependencyResolver = this.GetDependencyResolver();
var automaticSupportService = dependencyResolver.ResolveType<IAutomaticSupportService>();

automaticSupportService.SupportUrl = "http://mywebsite/support/supportapp.exe";
```

## Automatic support support with UI

When using the UI, it will handle the progress events of the service automatically. The only thing to do is show the window to the user using the code below:

```
uiVisualizerService.Show<RequestSupportViewModel>();
```

## Automatic support without UI

If you don't want a window to show to the end-user, use the following code:

```
automaticSupportService.DownloadAndRun();
```