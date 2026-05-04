---
uid: orc.serialization
title: Orc.Serialization
---

Find the source at [https://github.com/WildGums/Orc.Serialization](https://github.com/WildGums/Orc.Serialization).

| | |
|-|-|
| Downloads | [![NuGet downloads](https://img.shields.io/nuget/dt/Orc.Serialization.svg)](https://www.nuget.org/packages/Orc.Serialization) |
| Stable version | [![Stable version](https://img.shields.io/nuget/v/Orc.Serialization.svg)](https://www.nuget.org/packages/Orc.Serialization) |
| Unstable version | [![Unstable version](https://img.shields.io/nuget/vpre/Orc.Serialization.svg)](https://www.nuget.org/packages/Orc.Serialization) |


This library provides serialization support for WildGums applications. It includes packages for JSON serialization (`Orc.Serialization.Json`) and YAML serialization (`Orc.Serialization.Yaml`).

## Available packages

| Package | Description |
|---------|-------------|
| `Orc.Serialization` | Core serialization abstractions and base classes |
| `Orc.Serialization.Json` | JSON serialization support using Newtonsoft.Json |
| `Orc.Serialization.Yaml` | YAML serialization support |

## Key concepts

The library is built around the `ISerializer` interface, which provides a consistent API for both serializing and deserializing objects. Each package provides a concrete implementation of `ISerializer` for its respective format.

## Getting started

### JSON serialization

Use constructor injection to receive `ISerializer`:

```csharp
public class MyService
{
    private readonly ISerializer _serializer;

    public MyService(ISerializer serializer)
    {
        _serializer = serializer;
    }

    public string Serialize(MyClass obj) => _serializer.SerializeToString(obj);
    public MyClass Deserialize(string json) => _serializer.Deserialize<MyClass>(json);
}
```

### YAML serialization

```csharp
public class MyService
{
    private readonly IYamlSerializer _yamlSerializer;

    public MyService(IYamlSerializer yamlSerializer)
    {
        _yamlSerializer = yamlSerializer;
    }

    public string Serialize(MyClass obj) => _yamlSerializer.SerializeToString(obj);
    public MyClass Deserialize(string yaml) => _yamlSerializer.Deserialize<MyClass>(yaml);
}
