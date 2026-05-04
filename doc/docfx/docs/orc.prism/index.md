---
uid: orc.prism
title: Orc.Prism
---

Find the source at [https://github.com/WildGums/Orc.Prism5](https://github.com/WildGums/Orc.Prism5).

| | |
|-|-|
| Chat | [![Join the chat](https://badges.gitter.im/Join%20Chat.svg)](https://gitter.im/WildGums/Orc.Prism5) |
| Downloads | [![NuGet downloads](https://img.shields.io/nuget/dt/Orc.Prism5.svg)](https://www.nuget.org/packages/Orc.Prism5) |
| Stable version | [![Stable version](https://img.shields.io/nuget/v/Orc.Prism5.svg)](https://www.nuget.org/packages/Orc.Prism5) |
| Unstable version | [![Unstable version](https://img.shields.io/nuget/vpre/Orc.Prism5.svg)](https://www.nuget.org/packages/Orc.Prism5) |

Find the source at [https://github.com/WildGums/Orc.Prism6](https://github.com/WildGums/Orc.Prism6).

| | |
|-|-|
| Chat | [![Join the chat](https://badges.gitter.im/Join%20Chat.svg)](https://gitter.im/WildGums/Orc.Prism6) |
| Downloads | [![NuGet downloads](https://img.shields.io/nuget/dt/Orc.Prism6.svg)](https://www.nuget.org/packages/Orc.Prism6) |
| Stable version | [![Stable version](https://img.shields.io/nuget/v/Orc.Prism6.svg)](https://www.nuget.org/packages/Orc.Prism6) |
| Unstable version | [![Unstable version](https://img.shields.io/nuget/vpre/Orc.Prism6.svg)](https://www.nuget.org/packages/Orc.Prism6) |


# Introduction

Orc.Prism empowers users to combine both Catel and Prism. The best way to do this is to use the MVVM functionality from Catel and the modularity / UI composition from Prism. 

If you want to use only a selected feature set of Prism (such as the regions) and don't want to set up a custom bootstrapper, use the following code before creating the main window:

```
PrismHelper.PrepareWithoutBootstrapper();
```

Then call the following code after creating the main window:

```
PrismHelper.InitializeMainWindow();
```

The latest version of the guidance, Prism, includes a feature named "User Interface Composition". It allows building a mosaic-like application by loading multiple views that come from different modules into active regions exposed by a control, also known as the shell.

But all this is about view models. Therefore, the Catel team decided to introduce an extension that implements a good starting point in order to create a composite user interface without actually referencing any view. At this point, you must have heard about the *UIVisualizerService*, and the way it can resolve a view from an instance of a view model. So, we are pleased to introduce the *UICompositionService*.

## Making the region manager available

First of all, you must make available the region manager on the instance of *ServiceLocator*. A Prism based application uses MEF or Unity as primary IoC container. Therefore, you must synchronize this container with the Catel one, overriding the *ConfigureContainer* method of the application Bootstrapper class, using the following code:

```
protected override void ConfigureContainer()
{
	base.ConfigureContainer();

	if (ServiceLocator.Instance.IsExternalContainerSupported(this.Container))
	{
		ServiceLocator.Instance.RegisterExternalContainer(this.Container);
	}
}
```

but if you use `ServiceLocator` primary IoC contanier, and your `Bootstrapper` class inherits from `BootstrapperBase` the region manager is actually available and you don't have to write the synchronization container code.

Since Catel 3.2 `ServiceLocator` support Dependency injection, therefore now you are able write Prism base application without the usage of a third party container.

## Activating a view into a specific region

To activate a view into a specific region, use the following code:

```
var viewModel = new EmployeeViewModel();

var dependencyResolver = this.GetDependencyResolver();
var uiCompositionService = dependencyResolver.Resolve<IUICompositionService>();
uiCompositionService.Activate(viewModel, "MainRegion");
```

> [!WARNING]
> Since Catel 4.0 `UICompositionService` is available for Prism. Use this service instead of the `UIVisualizerService` extension methods.

But if the context allows you to know the instance of the view model of the view owner of the region where you will inject a view, is strongly recommended use the Activate overload that allows you to specify the parent view-model. This call will enforce the view models parent-child relationship:
uiCompositionService.Activate(viewModel, this, "MainRegion");

Assume that this references an instance of the view-model of a view with MainRegion region specified, so this is used as parent view model reference in the previous call.

## Dealing with more than one and only one shell

Actually you are able to inject views (referencing it's view models) in any window. Just like the previous example but in combination with the experimental extension method `Show`:

```
var dependencyResolver = this.GetDependencyResolver();
var uiVisualizerService = dependencyResolver.Resolve<IUIVisualizerService>();

var uiCompositionService = dependencyResolver.Resolve<IUICompositionService>()
var windowViewModel = new WindowWithRegionViewModel();

uiVisualizerService.Show(windowViewModel, () => { uiCompositionService.Activate(new EmployeeViewModel(), windowViewModel, "WindowMainRegion") });
```

## Deactivating a view

To deactivate a view, use the following code:

```
uiCompositionService.Deactivate(viewModel);
```

If you keep your view model alive (see: Keeping view models alive), you can reactivate a deactivated the view using `Activate` method without specify the region name.

## Deactivating a view automatically

If you close the view model using `SaveAndCloseViewModelAsync` or `CancelAndCloseViewModelAsync` or `CloseViewModelasync` methods, the view that belongs to this view model will be automatically deactivated from the region where it is activated.

In order to start using this feature, the only thing you have to do is install an isolated package named `Orc.Prism`, available via NuGet.
