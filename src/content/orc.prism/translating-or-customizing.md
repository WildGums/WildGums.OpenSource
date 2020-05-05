+++
title = "Translating or customizing" 
description = ""
weight = 40
+++

Starting with version 1.0, it is possible to fully customize the bootstrapper tasks. Orc.Prism now uses the `IBootstrapperTaskFactory` to create the tasks instead of the bootstrapper itself. To customize the logic, one has to implement his/her own version of the *IBootstrapperTaskFactory*. The easiest way to do this is to derive from the existing *BootstrapperTaskFactory* and register it in the service locator before the bootstrapper is created.

## Customizing the messages

The example below customizes the messages that are shown during the initialization tasks.

```
public class TranslatedBootstrapperTaskFactory : BootstrapperTaskFactory
{
    public override ITask CreateCreateLoggerTask(Action action)
    {
        return CreateCreateLoggerTask(action, "We are now creating the logger for you");
    }
}
```

{{% notice warning %}}
Remember to register the `TranslatedBootstrapperTaskFactory` before the bootstrapper is created
{{% /notice %}}

{{% notice warning %}}
Note that this example only customizes a single action. To customize all the actions, override all methods
{{% /notice %}}