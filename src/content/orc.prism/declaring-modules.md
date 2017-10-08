When developing a module in Prism, most of the time you need a base class for all the models that contain the IoC container, *IRegionManager* and more. To make development with prism and Catel as easy as possible, the *ModuleBase* is included with Orc.Prism. There are two versions of the *ModuleBase* available, which are described below.

## Generic ModuleBase

The generic module base allows the end-developer to decide what IoC container is used. For example, the developer has the choice whether the *ServiceLocator* or any other IoC container such as Unity or MEF is used.

### Defining a module

Defining a module is very simple. Just create a new class with the *ModuleBase* as base class.

	public class MyModule : ModuleBase<IServiceLocator>
	{
	    public MyModule()
	        : base("My module", ServiceLocator.Instance.ResolveType<IModuleTracker>(), ServiceLocator.Instance)
	    { 
	    }
	
	    protected override T GetService<T>()
	    {
	        return Container.ResolveType<T>();
	    }
	}

### Handling code when the module is initialized

The *ModuleBase* contains convenience methods when the module is initialized. Simple override the *OnInitializing* or *OnInitialized* methods.

## Non-generic ModuleBase

The non-generic base uses the *ServiceLocator* as default IoC container. This class derives from the generic module base and specifies the *ServiceLocator* as IoC container.
