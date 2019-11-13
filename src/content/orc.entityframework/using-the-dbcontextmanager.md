+++
title = "Using the DbContextManager" 
description = ""
weight = 10
+++

The `DbContextManager` class allows the sharing of `DbContext` (with underlying `ObjectContext`) classes in Entity Framework. The good thing about this is that the same context can be used in the same scope without having to recreate the same type of the same context over and over again.

A very good example of this scoping is an ASP.NET (MVC) application where a context is normally shared throughout the whole thread that handles a request. A big advantage of reusing the same instance of a context is that already fetched entities don't need to be refetched over and over again.

## Obtaining a DbContext

Obtaining a `DbContext` is very simple by using the `DbContextManager`.

```
using (var dbContextManager = DbContextManager<MyEntities>.GetManager())
{
    var dbContext = dbContextManager.DbContext;
 
    // TODO: handle logic with dbContext here
}
```

@alert important
It is very important to wrap the DbContextManager in a using state because it must be disposed
@end
 
Scoping is all done automatically because when a `DbContextManager` is instantiated, a reference counter is increased. Every time an instance of the `DbContextManager` is disposed, the reference counter is decreased. When the reference count reaches zero (0), it will dispose the `DbContext` that it manages.

## Sharing a single DbContext per ASP.NET request

When a request is started, a context can be created by calling this code:

```
DbContextManagerHelper.CreateDbContextForHttpContext<MyEntities>();
```

When a request is ended, the context can be disposed by using this code:

```
DbContextManagerHelper.DisposeDbContextForHttpContext<MyEntities>();
```