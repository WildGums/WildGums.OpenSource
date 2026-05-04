---
uid: orc.dataaccess
title: Orc.DataAccess
---

Find the source at [https://github.com/WildGums/Orc.DataAccess](https://github.com/WildGums/Orc.DataAccess).

| | |
|-|-|
| Downloads | [![NuGet downloads](https://img.shields.io/nuget/dt/Orc.DataAccess.svg)](https://www.nuget.org/packages/Orc.DataAccess) |
| Stable version | [![Stable version](https://img.shields.io/nuget/v/Orc.DataAccess.svg)](https://www.nuget.org/packages/Orc.DataAccess) |
| Unstable version | [![Unstable version](https://img.shields.io/nuget/vpre/Orc.DataAccess.svg)](https://www.nuget.org/packages/Orc.DataAccess) |


This library provides a unified data access layer for reading data from multiple sources including CSV files, databases, and Excel spreadsheets.

## Supported data sources

- **CSV** — read and write comma-separated value files
- **Database** — connect to and query relational databases via ADO.NET providers
- **Excel** — read data from Excel workbooks

## Key concepts

Data sources are accessed through readers that implement a common interface, making it straightforward to swap data sources without changing the consuming code.

### Reading from a data source

```csharp
var reader = dataSourceReaderFactory.CreateReader(dataSource);
var records = reader.Read();
```

### Registering a custom reader

Custom readers can be registered through the reader registry:

```csharp
dataSourceReaderRegistry.Register<MyCustomReader>();
```
