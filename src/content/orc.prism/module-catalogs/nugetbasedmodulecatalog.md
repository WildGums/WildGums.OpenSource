+++
title = "NuGetBasedModuleCatalog" 
description = ""
+++

The `NuGetBasedModuleCatalog` allows a user to use a NuGet package source as a module source. 

{{% notice info %}}
Note that the `CompositeNuGetBasedModuleCatalog` works the same but can combine multiple NuGet sources
{{% /notice %}}

## Initializing the catalog

The catalog has several options. Below is an example of a default customization:

```
protected override void ConfigureModuleCatalog()
{
	base.ConfigureModuleCatalog();

	ModuleCatalog.IgnoreDependencies = false;
	ModuleCatalog.AllowPrereleaseVersions = true;
	ModuleCatalog.PackageSource = @"https://www.nuget.org/api/v2/",
}
```

## Initializing the composite catalog

The composite catalog can be initialized using the code below:

```
protected override void ConfigureModuleCatalog()
{
	base.ConfigureModuleCatalog();

	ModuleCatalog.Add(new NuGetBasedModuleCatalog
	{
		PackageSource = @"C:\SomeDirectory\localNugetSource",
		AllowPrereleaseVersions = true,
		IgnoreDependencies = false,
		DefaultInitializationMode = InitializationMode.WhenAvailable
	});

	ModuleCatalog.Add(new NuGetBasedModuleCatalog
	{
		PackageSource = @"https://www.nuget.org/api/v2/",
		AllowPrereleaseVersions = true,
		IgnoreDependencies = false,
	});
}
```

## Customizing the catalog

There are several customization options.

### Changing the default initialization mode

By default, the modules are loaded on demand to prevent a user downloading all the modules at once. To change this behavior, use the DefaultInitializationMode property.

```
ModuleCatalog.DefaultInitializationMode = InitializationMode.WhenAvailable;
```

### Creating a module

To prevent the catalog to consider all packages on a source as a module, there is a naming convention required for the modules. In the nuspec file, make sure to use the following description element:

```
<?xml version="1.0" encoding="utf-8"?>
<package xmlns="http://schemas.microsoft.com/packaging/2010/07/nuspec.xsd">
	<metadata>
		<id>TestModule</id>
		<version>1.0.0</version>
		<authors>[someauthor]</authors>
		<requireLicenseAcceptance>false</requireLicenseAcceptance>
		<description>ModuleName=<moduleName>;ModuleType=<moduleType>;DependsOn={ <moduleName>, <moduleName> }</description>
		<dependencies>
			<dependency id="<dependencyId>" version="<dependencyVersion>" />
		</dependencies>
	</metadata>
</package>
```

For example:

```
<?xml version="1.0" encoding="utf-8"?>
<package xmlns="http://schemas.microsoft.com/packaging/2010/07/nuspec.xsd">
	<metadata>
		<id>TestModule</id>
		<version>1.0.0</version>
		<authors>[someauthor]</authors>
		<requireLicenseAcceptance>false</requireLicenseAcceptance>
		<description>ModuleName=Catel.Examples.WPF.Prism.Modules.NuGetBasedModuleC.NuGetBasedModuleC; ModuleType=Catel.Examples.WPF.Prism.Modules.NuGetBasedModuleC.NuGetBasedModuleC, Catel.Examples.WPF.Prism.Modules.NuGetBasedModuleC; DependsOn={ Catel.Examples.WPF.Prism.Modules.NuGetBasedModuleB.NuGetBasedModuleB }</description>
		<dependencies>
			<dependency id="Newtonsoft.Json" version="6.0.8" />
		</dependencies>
	</metadata>
</package>
```

{{% notice info %}}
It is possible to manually add a module, then the naming convention is not required
{{% /notice %}}

### Module vs. library dependencies

There a two kind of dependencies that you can declare in a module *nuspec* file.
Module dependencies in order to identify Prism like module dependencies using the key *DependsOn* at description tag.

```
<description>ModuleName=Catel.Examples.WPF.Prism.Modules.NuGetBasedModuleC.NuGetBasedModuleC; ModuleType=Catel.Examples.WPF.Prism.Modules.NuGetBasedModuleC.NuGetBasedModuleC, Catel.Examples.WPF.Prism.Modules.NuGetBasedModuleC; DependsOn={ Catel.Examples.WPF.Prism.Modules.NuGetBasedModuleB.NuGetBasedModuleB }<description>
```

Or you can specify libraries dependencies using the dependencies section just as regular nuspec file. 

```
<dependencies>
	<dependency id="Newtonsoft.Json" version="6.0.8" />
</dependencies>
``` 

### Expected package structure

The package structure is like a regular nupkg file. It is recommended to locate the assemblies into the lib directory, specifically into the target framework directory. Prism can run under v4.0 or v4.5 net framework version. So, an example of package structure is the follow: 

* lib/NET40/Catel.Examples.WPF.Prism.Modules.NuGetBasedModuleC.dll
* lib/NET45/Catel.Examples.WPF.Prism.Modules.NuGetBasedModuleC.dll

But if the assembly doesn't found in the expected location - due by the running current platform - Catel will try to find the assembly into the package lib directory recursively. 

#### Implementing a customized module catalog

The NuGetBasedModuleCatalog is heavily customizable. For example, by default it uses the naming convention and uses OnDemand only for the load behavior. Below is an example of an implementation that directly loads all available modules:

```
public class LoadImmediatelyNuGetBasedModuleCatalog : NuGetBasedModuleCatalog
{
	// Override GetFilteredPackagedModules, GetPackageInitializationMode or CreatePackageModule to create a fully customized catalog
}
```

### Solving the loadFromRemoteSources exception

For some applications, the following exception might be thrown:

```
An attempt was made to load an assembly from a network
location which would have caused the assembly to be sandboxed in previous
versions of the .NET Framework. This release of the .NET Framework does not
enable CAS policy by default, so this load may be dangerous.

If this load is not intended to sandbox the assembly, please enable the loadFromRemoteSources switch. See http://go.microsoft.com/fwlink/?LinkId=155569 for more information.
```

To solve this, add this to the app.config file:

```
<runtime>   
	<loadFromRemoteSources enabled="true"/>
</runtime>
```