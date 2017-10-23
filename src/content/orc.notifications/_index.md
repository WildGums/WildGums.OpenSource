+++
title = "Orc.Notifications" 
description = ""
+++

Name|Badge
---|---
Chat|[![Join the chat at https://gitter.im/WildGums/Orc.Notifications](https://badges.gitter.im/Join%20Chat.svg?classes=inline)](https://gitter.im/WildGums/Orc.Notifications?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)
Downloads|![NuGet downloads](https://img.shields.io/nuget/dt/orc.notifications.svg?classes=inline)
Stable version|![Version](https://img.shields.io/nuget/v/orc.notifications.svg?classes=inline)
Unstable version|![Pre-release version](https://img.shields.io/nuget/vpre/orc.notifications.svg?classes=inline)

Find the source at [https://github.com/WildGums/Orc.Notifications](https://github.com/WildGums/Orc.Notifications)

This library is used to create and display desktop notifications. Notification looks like popup windows and will appear on the top right corner of the screen.

Notifications can be used to briefly display important information to the user.

![Notification](../images/orc.notifications/notifications.gif)

In order to create notifications in your application use IoC with the `INotificationService` interface.

A default `Notification` class, which implements the `INotification` interface is provided.

```
public interface INotification
{
        string Title { get; set; }
        string Message { get; set; }
        ICommand Command { get; set; }
        TimeSpan ShowTime { get; set; }
        SolidColorBrush BorderBrush { get; set; }
        SolidColorBrush BackgroundBrush { get; set; }
        SolidColorBrush FontBrush { get; set; }
}
```



