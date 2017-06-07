# Orc.EntityFramework

[![Join the chat at https://gitter.im/WildGums/Orc.EntityFramework](https://badges.gitter.im/Join%20Chat.svg)](https://gitter.im/WildGums/Orc.EntityFramework?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

![License](https://img.shields.io/github/license/WildGums/Orc.EntityFramework.svg)
![Version](https://img.shields.io/nuget/v/[NUGET.PACKAGENAME].svg)
![Pre-release version](https://img.shields.io/nuget/vpre/Orc.EntityFramework.svg)

# Introduction

This guide will give a very brief explanation how to use Entity Framework together with Catel.

## Context

### Creating the code-first models

Create a new context with code-first models right-clicking on the solution => Add => New item... Then search for ADO.NET Entity Data Model and give it a name and follow the wizard.

### Customizing the code-first models

By default the code-first models aren't very smart. To add additional functionality such as validation, change notifications, etc, it is best to let it derive from ModelBase. To do so, make all entities derive from ModelBase as shown in the example below:

	[Table("person")]
	public partial class Person : ModelBase
	{
	    [StringLength(50)]
	    public string FirstName { get; set; }
	 
	    [StringLength(50)]
	    public string lastname { get; set; }
	 
	    public long PersonId { get; set; }
	    public long FamilyId { get; set; }
	 
	    public virtual Family Family { get; set; }
	}

When the classes are derived from *ModelBase*, EF will try to serialize all the default Catel properties as well. To make sure that EF ignores the Catel properties, go to the *Context* class and search for the OnModelCreating method. Then add the *IgnoreCatelProperties* extension method to all entity definitions as shown in the example below:

	protected override void OnModelCreating(DbModelBuilder modelBuilder)
	{
	    modelBuilder.Entity<Family>()
	        .IgnoreCatelProperties()
	        .Property(e => e.FamilyName)
	        .IsUnicode(false);
	 
	    modelBuilder.Entity<Family>()
	        .HasMany(e => e.Person)
	        .WithRequired(e => e.Family)
	        .WillCascadeOnDelete(false);
	}

## Repositories

### Creating repositories

Once the DAL is correctly set up, it's time to create the repositories. Creating repositories with Catel is super easy. Just create (or generate with T4) a class and interface for each entity:

	public class FamilyRepository : EntityRepositoryBase<family, int>, IFamilyRepository
	{
	    public FamilyRepository(DbContext dbContext) 
	        : base(dbContext)
	    {
	    }
	}
	 
	public interface IFamilyRepository : IEntityRepository<family, int>
	{
	}

### Registering repositories

In order for the unit of work to find the repositories, they need to be registered in the *ServiceLocator*. This can be done as follows:

	var serviceLocator = ServiceLocator.Default;
	 
	serviceLocator.RegisterType<IFamilyRepository, FamilyRepository>();

## Unit of Work

### Retrieving data

To retrieve data inside a transaction, you can use the UnitOfWork. Inside a method / service call / view model, use the following code:

	using (var uow = new UnitOfWork<FamilyContext>())
	{
	    var familyRepository = uow.GetRepository<IFamilyRepository>();
	 
	    var families = new ObservableCollection<family>(familyRepository.GetAll());
	    // TODO: Do something with all families
	}

> Catel will automatically take care of scoping of the DbContext when using unit of work and  repositories

### Saving data

To save data, the entities must be updated in the repositories and then saved in the unit of work. Below is an example, assuming the list of families contains updated entities:

	using (var uow = new UnitOfWork<FamilyContext>())
	{
	    var familyRepository = uow.GetRepository<IFamilyRepository>();
	    var personRepository = uow.GetRepository<IPersonRepository>();
	
	    foreach (var family in families)
	    {
	        familyRepository.Update(family);
	    }
	
	    uow.SaveChanges();
	}

