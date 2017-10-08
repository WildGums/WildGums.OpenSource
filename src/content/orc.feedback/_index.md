+++
title = "Orc.Feedback" 
description = ""
+++

Name|Badge
---|---
Chat|[![Join the chat at https://gitter.im/WildGums/Orc.Feedback](https://badges.gitter.im/Join%20Chat.svg)](https://gitter.im/WildGums/Orc.Feedback?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)
Downloads|![NuGet downloads](https://img.shields.io/nuget/dt/orc.feedback.svg)
Stable version|![Version](https://img.shields.io/nuget/v/orc.feedback.svg)
Unstable version|![Pre-release version](https://img.shields.io/nuget/vpre/orc.feedback.svg)

Find the source at [https://github.com/WildGums/Orc.Feedback](https://github.com/WildGums/Orc.Feedback)

Allows the user to easily get feedback from the end-user. 

## Initializing the service

It is very important to initialize the service. It can be done by retrieving it from the service locator and update the required data:

```
	var dependencyResolver = this.GetDependencyResolver();
	var feedbackService = dependencyResolver.ResolveType<IFeedbackService>();

	feedbackService.SomeProperty = "http://myfeedbackwebsite";
```