+++
title = "CompositeModuleCatalog" 
description = ""
+++

## Initializing the catalog

Below is an example of the catalog in action:

```
protected override void ConfigureModuleCatalog()
{
	base.ConfigureModuleCatalog();

	ModuleCatalog.Add(new DirectoryModuleCatalog
	{
		ModulePath = @".\Modules" 
	});

	ModuleCatalog.Add(new NuGetBasedModuleCatalog
	{
		PackageSource = @"C:\SomeDir\localNugetSource",
		AllowPrereleaseVersions = true,
		IgnoreDependencies = false
	});

	ModuleCatalog.Initialize();
}
```

## Customizing the catalog

No customization options documented yet - feel free to contribute
