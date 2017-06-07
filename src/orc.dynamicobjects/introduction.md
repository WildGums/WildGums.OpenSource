# Orc.DynamicObjects

[![Join the chat at https://gitter.im/WildGums/Orc.DynamicObjects](https://badges.gitter.im/Join%20Chat.svg)](https://gitter.im/WildGums/Orc.DynamicObjects?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

![License](https://img.shields.io/github/license/WildGums/Orc.DynamicObjects.svg)
![Version](https://img.shields.io/nuget/v/[NUGET.PACKAGENAME].svg)
![Pre-release version](https://img.shields.io/nuget/vpre/Orc.DynamicObjects.svg)

# Introduction

In .NET, it is possible to create fully dynamic objects. This makes it possible to create types of which the members are not yet known at compile time. 

> For more information about dynamic programming, see [MSDN](http://msdn.microsoft.com/en-us/vstudio/ff800651.aspx).

## Creating dynamic objects

Creating a dynamic object with full Catel functionality is easy. Just add the *Orc.DynamicObjects* reference via NuGet and create a class that derives from *DynamicModelBase*:

	public class DynamicModel : DynamicModelBase
	{
	    // TODO: Add custom functionality if required
	}

Then the dynamic model can be used like this:

	dynamic model = new DynamicModel();
	model.NonExistingProperty = "a dynamic value";
	 
	Console.WriteLine(model.NonExistingProperty);

> It is important to know that you must use the keyword *dynamic* to instantiate the type.

## Using ModelBase functionality

The *DynamicModelBase* class derives from *ModelBase*. However it must be preceded by the dynamic keyword. To use the *ModelBase* functionality, cast it to the right type:

	dynamic model = new DynamicModel();
	model.NonExistingProperty = "a dynamic value";
	 
	// Note: the Validate method is available on the ModelBase
	var modelBase = (ModelBase)model;
	modelBase.Validate();

## Supporting serialization of dynamic objects

Dynamic objects in Catel fully support the default serialization that Catel provides. To example below shows how to serialize a dynamic object:

	dynamic model = new DynamicModel();
	model.NonExistingProperty = "a dynamic value";
	
	var serializer = SerializationFactory.GetXmlSerializer();
	
	using (var memoryStream = new MemoryStream())
	{
		var dynamicModel = (DynamicModel)model;
		serializer.Serialize(dynamicModel, memoryStream);
	
		memoryStream.Position = 0L;
	
		dynamic deserializedModel = serializer.Deserialize(typeof(DynamicModel), memoryStream);
		var deserializedDynamicModel = (DynamicModel) deserializedModel;
	
		// deserializedDynamicModel is now a dynamically deserialized object
	}


