+++
title = "Orc.SystemInfo" 
description = ""
+++

Name|Badge
---|---
Chat|[![Join the chat at https://gitter.im/WildGums/Orc.SystemInfo](https://badges.gitter.im/Join%20Chat.svg?classes=inline)](https://gitter.im/WildGums/Orc.SystemInfo?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)
Downloads|![NuGet downloads](https://img.shields.io/nuget/dt/orc.systeminfo.svg?classes=inline)
Stable version|![Version](https://img.shields.io/nuget/v/orc.systeminfo.svg?classes=inline)
Unstable version|![Pre-release version](https://img.shields.io/nuget/vpre/orc.systeminfo.svg?classes=inline)

Find the source at [https://github.com/WildGums/Orc.SystemInfo](https://github.com/WildGums/Orc.SystemInfo)

This library is used to retrieve the system information details from a computer.

Use the `GetSystemInfo()` method or the `ISystemInfoService` to get the system information details.

`GetSystemInfo()` returns an `IEnumerable<SystemInfoElement>`

```
[Serializable]
public class SystemInfoElement
{
    ...
    public string Name { get; set; }
    public string Value { get; set; }
    ...
}
```

The following information will be retreived:

- User name
- User domain
- Machine name
- OS version
- OS name Microsoft
- MaxProcessRAM
- Architecture
- ProcessorId 
- Build 
- CPU name 
- Description
- Address width 
- Data width 
- SpeedMHz
- BusSpeedMHz
- Number of cores
- Number of logical processors
- System up time
- Application up time
- Total memory
- Available memory
- Current culture
- .Net Framework versions  

# Using the service

Using the service is easy. Just resolve the service from the `ServiceLocator` or let it automatically be injected into your services or view model.

## Resolving the service

If dependency injection is not used, the service can be retrieved using the following code:

```
var systemInfoService = ServiceLocator.Default.ResolveType<ISystemInfoService>();
``` 

## Retrieving the system info

It's best to gather the information on a thread that is not the UI thread. The examples below show how to do this.

### Retrieving on the current thread

```
var systemInfo = systemInfoService.GetSystemInfo();

foreach (var systemInfoElement in systemInfo)
{
    // TODO: Deal with the system info
}
```

### Retrieving on a separate thread

```
var systemInfo = await TaskHelper.Run(() => systemInfoService.GetSystemInfo(), true);

foreach (var systemInfoElement in systemInfo)
{
    // TODO: Deal with the system info
}
```
