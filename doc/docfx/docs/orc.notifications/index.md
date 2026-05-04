---
uid: orc.notifications
title: Orc.Notifications
---

Find the source at [https://github.com/WildGums/Orc.Notifications](https://github.com/WildGums/Orc.Notifications).

| | |
|-|-|
| Chat | [![Join the chat](https://badges.gitter.im/Join%20Chat.svg)](https://gitter.im/WildGums/Orc.Notifications) |
| Downloads | [![NuGet downloads](https://img.shields.io/nuget/dt/Orc.Notifications.svg)](https://www.nuget.org/packages/Orc.Notifications) |
| Stable version | [![Stable version](https://img.shields.io/nuget/v/Orc.Notifications.svg)](https://www.nuget.org/packages/Orc.Notifications) |
| Unstable version | [![Unstable version](https://img.shields.io/nuget/vpre/Orc.Notifications.svg)](https://www.nuget.org/packages/Orc.Notifications) |


This library is used to create and display desktop notifications. Notification looks like popup windows and will appear on the top right corner of the screen.

Notifications can be used to briefly display important information to the user.

![Notification](~/images/orc.notifications/notifications.gif)

In order to create notifications in your application use IoC with the `INotificationService` interface.

A default `Notification` class, which implements the `INotification` interface is provided.

```csharp
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



