---
uid: orc.feedback
title: Orc.Feedback
---

Find the source at [https://github.com/WildGums/Orc.Feedback](https://github.com/WildGums/Orc.Feedback).

| | |
|-|-|
| Chat | [![Join the chat](https://badges.gitter.im/Join%20Chat.svg)](https://gitter.im/WildGums/Orc.Feedback) |
| Downloads | [![NuGet downloads](https://img.shields.io/nuget/dt/Orc.Feedback.svg)](https://www.nuget.org/packages/Orc.Feedback) |
| Stable version | [![Stable version](https://img.shields.io/nuget/v/Orc.Feedback.svg)](https://www.nuget.org/packages/Orc.Feedback) |
| Unstable version | [![Unstable version](https://img.shields.io/nuget/vpre/Orc.Feedback.svg)](https://www.nuget.org/packages/Orc.Feedback) |


Allows the user to easily get feedback from the end-user. 

## Initializing the service

It is very important to initialize the service. It can be done by retrieving it from the service locator and update the required data:

```csharp
var dependencyResolver = this.GetDependencyResolver();
var feedbackService = dependencyResolver.ResolveType<IFeedbackService>();

feedbackService.Email = "support@mycompany.com";
```

## Showing the feedback window

Once initialized, show the feedback window to the user using the `IUIVisualizerService`:

```csharp
var uiVisualizerService = dependencyResolver.ResolveType<IUIVisualizerService>();
await uiVisualizerService.ShowDialogAsync<FeedbackViewModel>();
```