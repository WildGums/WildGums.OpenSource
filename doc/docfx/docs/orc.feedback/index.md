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

It is very important to initialize the service. The recommended approach is to use constructor injection and set the `Url` property to your feedback page:

```csharp
public class MyApplicationBootstrapper
{
    private readonly IFeedbackService _feedbackService;

    public MyApplicationBootstrapper(IFeedbackService feedbackService)
    {
        _feedbackService = feedbackService;
    }

    public void Initialize()
    {
        _feedbackService.Url = "https://mycompany.com/feedback";
    }
}
```

## Providing feedback

Once initialized, feedback can be triggered programmatically:

```csharp
await _feedbackService.ProvideFeedbackAsync();
```

## Showing the feedback window

If the `Orc.Feedback` package includes a UI component, use `IUIVisualizerService` to show the feedback window:

```csharp
public class MyViewModel : ViewModelBase
{
    private readonly IUIVisualizerService _uiVisualizerService;

    public MyViewModel(IServiceProvider serviceProvider, IUIVisualizerService uiVisualizerService)
        : base(serviceProvider)
    {
        _uiVisualizerService = uiVisualizerService;
    }

    public async Task ShowFeedbackAsync()
    {
        await _uiVisualizerService.ShowDialogAsync<FeedbackViewModel>();
    }
}