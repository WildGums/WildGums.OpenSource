+++
title = "Orc.SupportPackage" 
description = ""
+++

{{< header name="Orc.SupportPackage" >}}

Creates support packages of software by gathering relevant information.

# Quick introduction

The support package library makes it easy to gather information from any software component in a zip file that can be sent to support engineers.

Below is an overview of the most important components:

- `ISupportPackageService` => the support package service
- `ISupportPackageProvider` => add custom files / folders to the support package- 

# Creating a support package

By default the support package service gathers system info (using `Orc.SystemInfo`) and the %AppData% folder of the current user. To create a support package, use the following code:

```
await _supportPackageService.CreateSupportPackage(_saveFileService.FileName);
```

# Adding custom files / folders to a support package

It can be very useful to add more than just the %AppData% to a support package (such as a memory dump of the application). In that case the only thing one has to do is create a type implementing the `ISupportPackageProvider` interface as shown below:

```
public class CustomSupportPackageProvider : SupportPackageProviderBase
{
	public override async Task Provide(ISupportPackageContext supportPackageContext)
	{
		Argument.IsNotNull(() => supportPackageContext);

		var file = supportPackageContext.GetFile("testfile.txt");
		
		File.WriteAllText(file, "custom suppport package contents");
	}
}
```

The code above will create an additional `testfile.txt` in the root of the support package.
