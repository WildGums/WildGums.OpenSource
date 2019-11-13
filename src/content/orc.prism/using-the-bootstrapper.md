+++
title = "Using the bootstrapper" 
description = ""
weight = 10
+++

Orc.Prism offers a basic bootstrapper that uses the `ServiceLocator` as IoC container. This way, it is really simple to create a prism application using Catel and prism.

The bootstrapper takes lots of work out of hands, and this way a developer can simply focus on what must be done in the bootstrapper (such as registering the right module catalog).

## Using the bootstrapper

This example shows how the bootstrapper is used to define both the shell and the module catalog that looks for modules in the Modules directory of the application root.

```
/// <summary>
/// The bootstrapper that will create and run the shell.
/// </summary>
public class MyApplicationBootstrapper : BootstrapperBase
{
	/// <summary>
	/// Initializes a new instance of the <see cref="MyApplicationBootstrapper"/> class.
	/// </summary>
	public MyApplicationBootstrapper()
	{
		LogManager.RegisterDebugListener();
	}
	
	/// <summary>
	/// Creates the <see cref="T:Microsoft.Practices.Prism.Modularity.IModuleCatalog"/> used by Prism.
	/// </summary>
	/// <returns></returns>
	protected override IModuleCatalog CreateModuleCatalog()
	{
		var moduleCatalog = new DirectoryModuleCatalog { ModulePath = @".\Modules"};
		moduleCatalog.Initialize();
		return moduleCatalog;
	}
	
	/// <summary>
	/// Creates the shell or main window of the application.
	/// </summary>
	/// <returns>
	/// The shell of the application.
	/// </returns>
	protected override DependencyObject CreateShell()
	{
		var shell = new MainWindow();
		shell.Show();
		return shell;
	}
}
```

## Using the bootstrapper with generic shell definition

Most of the time, the `CreateShell` method simple defines the main window, creates it and returns it. This can be automated using Catel as well by using the generic bootstrapper. This way, the bootstrapper stays really small and can be kept very simple.

```
/// <summary>
/// The bootstrapper that will create and run the shell.
/// </summary>
public class MyApplicationBootstrapper : BootstrapperBase<MainWindow>
{
	/// <summary>
	/// Initializes a new instance of the <see cref="MyApplicationBootstrapper"/> class.
	/// </summary>
	public MyApplicationBootstrapper()
	{
		LogManager.RegisterDebugListener();
	}

	/// <summary>
	/// Creates the <see cref="T:Microsoft.Practices.Prism.Modularity.IModuleCatalog"/> used by Prism.
	/// </summary>
	/// <returns></returns>
	protected override IModuleCatalog CreateModuleCatalog()
	{
		var moduleCatalog = new DirectoryModuleCatalog { ModulePath = @".\Modules"};
		moduleCatalog.Initialize();
		return moduleCatalog;
	}
}
```