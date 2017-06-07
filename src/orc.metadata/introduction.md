# Orc.Metadata

--|--
Chat|[![Join the chat at https://gitter.im/WildGums/Orc.Metadata](https://badges.gitter.im/Join%20Chat.svg)](https://gitter.im/WildGums/Orc.Metadata?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)
Downloads|![NuGet downloads](https://img.shields.io/nuget/dt/orc.metadata.svg)
Stable version|![Version](https://img.shields.io/nuget/v/orc.metadata.svg)
Unstable version|![Pre-release version](https://img.shields.io/nuget/vpre/orc.metadata.svg)

This library provides classes to store metadata about objects. This metadata isn't necessarily stored inside the object itself, allowing the developer to keep track of additional information besides the information stored in the object.

For the final interaction with the metadata, it is unknown where the information is coming from (the object itself or metadata stored somewhere else). The developer only has to work with the `IMetadata` and `IMetadataCollection` interfaces.

## Using the metadata interfaces

There are 2 important interfaces inside this library:

* IMetadataCollection => definition or description of the metadata (for example, properties) collection
* IMetadata => the actual interaction adapter between the generic metadata and the actual object instance

### Retrieving type information

To retrieve type information about an object, the information is stored in one of the *IMetadataCollection* implementations. The developer only has to work with the *IMetadataCollection* interface. To retrieve the information, use the code below:

	var allMetadata = metadataCollection.All;
	foreach (var metadata in allMetadata)
	{
	    Console.WriteLine(metadata.Name);
	}

### Retrieving metadata of a specific object

To retrieve the metadata of a specific object, use the code below:

    var metadata = metadataCollection.GetMetadata("MyMetadataName");
    var metadataValue = metadata.GetValue(myInstance); 

## Using reflection metadata classes

The reflection metadata classes will use reflection to retrieve metadata information from an object.

### Creating the metadata collection

	var metadataCollection = new ReflectionMetadataCollection(typeof(MyModel));

Now the metadata collection can be used to retrieve any properties from the *MyModel* class and use the *IMetadata* to get or set property values.

## Using dictionary metadata classes

One way to store information separately from the actual object is to use dictionaries. To use dictionaries, it is important to create the metadata collection first.

### Creating the metadata collection

The example below creates metadata that contains a few metadata definitions with specific types.

	var dictionary = new Dictionary<string, Type>();
	dictionary["MyStringMetadata"] = typeof(string);
	dictionary["MyIntMetadata"] = typeof(int);

### Interacting with the metadata

Once a collection of metadata (the specification) is created, one can interact with it with a specific dictionary containing the actual metadata:

	var metadataDictionary = new Dictionary<string, object>();
 	dictionary["MyStringMetadata"] = "myvalue";
	dictionary["MyIntMetadata"] = "42";

	var metadata = metadataCollection.GetMetadata("MyIntMetadata");
	var value = metadata.GetValue(metadataDictionary);

	// Now value is 42


## Other ways of storing metadata

Of course it's possible to store metadata in any format on any location. To support this, either create an issue to support the format or create a pull request. Another option is to implement it manually inside the final solution where *Orc.Metadata* is used.
