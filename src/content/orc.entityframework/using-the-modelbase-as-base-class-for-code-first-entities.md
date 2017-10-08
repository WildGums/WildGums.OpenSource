# Using the ModelBase as base class for code-first entities

The *ModelBase* provides lots of functionality such as change tracking, property notifications and validation. It is possible to use this in code first. To do so, derive the entities from the *ModelBase* class as shown in the example below:

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

In the context, add additional initialization code to ignore the Catel properties on the *ModelBase* class:

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

Now the entities are ready to be used and can contain validation.
 