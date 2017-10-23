+++
title = "SafeDirectoryModuleCatalog" 
description = ""
+++

The `SafeDirectoryModuleCatalog` is a safe implementation of the `DirectoryModuleCatalog` that ships with prism.

## Initializing the catalog

```
protected override void ConfigureModuleCatalog()
{
    base.ConfigureModuleCatalog();
 
    ModulePath = @".\Modules"
}
```

## Customizing the catalog

No customization options documented yet - feel free to contribute