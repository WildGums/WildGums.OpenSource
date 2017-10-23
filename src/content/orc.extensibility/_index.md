+++
title = "Orc.Extensibility" 
description = ""
+++

Name|Badge
---|---
Chat|[![Join the chat at https://gitter.im/WildGums/Orc.Extensibility](https://badges.gitter.im/Join%20Chat.svg)](https://gitter.im/WildGums/Orc.Extensibility?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)
Downloads|![NuGet downloads](https://img.shields.io/nuget/dt/orc.extensibility.svg)
Stable version|![Version](https://img.shields.io/nuget/v/orc.extensibility.svg)
Unstable version|![Pre-release version](https://img.shields.io/nuget/vpre/orc.extensibility.svg)

Find the source at [https://github.com/WildGums/Orc.Extensibility](https://github.com/WildGums/Orc.Extensibility)

This library provides classes to support pluggable components inside applications (discovery, instantation, etc).

## Configuring the API

The API library is the library that exposes the types and interfaces that can be used by any plugin to interact with the host. In most
cases, the API will expose the interface for services which are implemented in the host. In a minimal case, the API will only expose
a type that will be used to recognize a plugin. For example the plugin interface shown below;

```
public interface ICustomPlugin
{
	Task InitializeAsync();
}
```

## Configuring the host

The host is responsible for finding and instantiating the plugins.

### PluginFinder

The library takes care of the hard work. The only thing that it needs to know is whether a type is a plugin. This can be configured
by creating a class deriving from `PluginFinderBase`:

```
public class PluginFinder : Orc.Extensibility.PluginFinderBase
{
	private readonly string _pluginName = typeof(ICustomPlugin).Name;

	public PluginFinder(IPluginLocationsProvider pluginLocationsProvider, IPluginInfoProvider pluginInfoProvider,
		IPluginCleanupService pluginCleanupService, IDirectoryService directoryService, IFileService fileService)
		: base(pluginLocationsProvider, pluginInfoProvider, pluginCleanupService, directoryService, fileService)
	{
	}

	protected override bool IsPlugin(Type type)
	{
		// Note: since we are in a reflection-only context here, you can't compare actual types, but need to use string names
		return (from iface in type.GetInterfacesEx()
				where iface.Name.Equals(_pluginName)
				select iface).Any();
	}
}
```

Note that it should also be registered in the `ServiceLocator`:

```
ServiceLocator.Default.RegisterType<IPluginFinder, PluginFinder>();
```

### Finding and loading the plugins

It's possible to allow a single plugin host or a multiple plugin host. This example shows how to use the single plugin host:

```
// In an Orchestra environment, this would go into the bootstrapper
var configurationService = serviceLocator.ResolveType<IConfigurationService>();
var activePlugin = configurationService.GetRoamingValue(ConfigurationKeys.ActivePlugin, ConfigurationKeys.ActivePluginDefaultValue);

var singlePluginService = serviceLocator.ResolveType<ISinglePluginService>();
var plugin = singlePluginService.ConfigureAndLoadPlugin(activePlugin, ConfigurationKeys.ActivePluginDefaultValue);
if (plugin != null)
{
    serviceLocator.RegisterInstance(typeof(ICustomPlugin), plugin.Instance);
}
``` 

## Creating a plugin

Last but not least, plugins will need to be created, but this is extremely easy.

1. Create a class library project and reference the API library

2. Create a new plugin as shown below:
```
public class PluginA : ICustomPlugin
{
	private readonly IMessageService _messageService;
	private readonly IHostService _hostService;

	public PluginA(IMessageService messageService, IHostService hostService)
	{
		Argument.IsNotNull(() => messageService);
		Argument.IsNotNull(() => hostService);

		_messageService = messageService;
		_hostService = hostService;
	}

	public async Task InitializeAsync()
	{
		await _messageService.ShowAsync("Plugin A has been loaded, setting color to red");

		_hostService.SetColor(Colors.Red);
	}
}
```

3. Make sure to compile the plugin library and putting it into a location so the host can find it.