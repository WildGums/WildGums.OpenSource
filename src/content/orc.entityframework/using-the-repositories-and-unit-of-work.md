+++
title = "Using the repositories and unit of work" 
description = ""
weight = 20
+++

The Repository and Unit of Work (UoW) pattern are very useful patterns to create an abstraction level over the `DbContext` that is provided by Entity Framework. A much heard excuse not to use repositories is that EF itself already works with repositories (the `DbContext`) and a UoW (in the SaveChanges method). Below are a few examples why it is a good thing to create repositories:

* Abstract away some of the more complex features of Entity Framework that the end-developer should not be bothered with
* Hide the actual `DbContext` (make it internal) to prevent misuse
* Keep security checks and saving and rollback in a single location
* Force the use of the `Specification` pattern on queries

@alert info
Note that repositories and UoW should not be used to abstract away the ORM tool because that is just another abstraction layer which is not required. Use it for the advantages mentioned above
@end

A Unit of Work (UoW) is a a combination of several actions that will be grouped into a transaction. This means that either all actions inside a UoW are committed or rolled back. The advantage of using a UoW is that multiple save actions to multiple Repositories can be grouped as a unit.

A repository is a class or service responsible for providing objects and allowing end-developers to query data. Instead of querying the DbContext directly, the DbContext can be abstracted away to provide default queries and force required functionality to all end-developers of the DbContext.

## Overview of Unit of Work and repositories

There are different interpretations of how repositories should be used in combination with unit of work. Let's start with an overview how the DbContext, Repositories and Unit of Work relate to each other. The image below represents an overview of the situation as Catel deals with the DbContext, Repositories and Unit of Work:

[image here]

The image above shows that the Unit of Work is the top-level component to be used. Each UoW contains its own `DbContext` instance. The `DbContext` can either be injected or will be created on the fly. Then the UoW also contains repositories which always get the `DbContext` injected. This way, all repositories inside a UoW share the same `DbContext`.


## Creating a Unit of Work

A UoW can be created by simply instantiating it. The end-developer has the option to either inject the `DbContext` or let the `DbContextManager` take care of it automatically.

```
using (var uow = new UnitOfWork<MyDbContext>())
{
    // get repositories and query away
}
```

## Creating a repository

A repository can be created very easily by deriving from the `EntityRepositoryBase` class. Below is an example of a customer repository:

```
public class CustomerRepository : EntityRepositoryBase<Customer, int>, ICustomerRepository
{
    public CustomerRepository(DbContext dbContext)
        : base(dbContext)
    {
    }
}
 
public interface ICustomerRepository : IEntityRepository<Customer, int>
{
}
```

## Retrieving repositories from a Unit of Work

Once a UoW is created, it can be used to resolve repositories. To retrieve a repository from the UoW, the following conditions must be met:

1. The repository must be registered in the ServiceLocator as Transient type. If the repository is declared as non-transient, it will be instantiated as new instance anyway.
2. The repository must have a constructor accepting a DbContext instance

To retrieve a new repository from the UoW, use the following code:

```
using (var uow = new UnitOfWork<MyDbContext>())
{
    var customerRepository = uow.GetRepository<ICustomerRepository>();
 
    // all interaction with the customer repository is applied to the unit of work
}
```

### Saving a Unit of Work

It is very important to save a Unit of Work. Once the Unit of Work gets out of scope (outside the using), all changes will be discarded if not explicitly saved.

```
using (var uow = new UnitOfWork<MyDbContext>())
{
    var customerRepository = uow.GetRepository<ICustomerRepository>();
 
    // all interaction with the customer repository is applied to the unit of work
 
    uow.SaveChanges();
}
```