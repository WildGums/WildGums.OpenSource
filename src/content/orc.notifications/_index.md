+++
title = "Orc.Notifications" 
description = ""
+++

{{< header name="Orc.Notifications" >}}

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



