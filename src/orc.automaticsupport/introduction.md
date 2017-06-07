# Orc.AutomaticSupport

--|--
Chat|[![Join the chat at https://gitter.im/WildGums/Orc.AutomaticSupport](https://badges.gitter.im/Join%20Chat.svg)](https://gitter.im/WildGums/Orc.AutomaticSupport?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)
Downloads|![NuGet downloads](https://img.shields.io/nuget/dt/orc.automaticsupport.svg)
Stable version|![Version](https://img.shields.io/nuget/v/orc.automaticsupport.svg)
Unstable version|![Pre-release version](https://img.shields.io/nuget/vpre/orc.automaticsupport.svg)

Allows the user to easily download a remote file that will validate and provide automatic support to the end-user.

## Initializing the service

It is very important to initialize the service. It can be done by retrieving it from the service locator and update the support url:

	var dependencyResolver = this.GetDependencyResolver();
	var automaticSupportService = dependencyResolver.ResolveType<IAutomaticSupportService>();

	automaticSupportService.SupportUrl = "http://mywebsite/support/supportapp.exe";

## Automatic support support with UI

When using the UI, it will handle the progress events of the service automatically. The only thing to do is show the window to the user using the code below:

	uiVisualizerService.Show<RequestSupportViewModel>();


## Automatic support without UI

If you don't want a window to show to the end-user, use the following code:

	automaticSupportService.DownloadAndRun();
