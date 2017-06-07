# Using stored procedures and functions 

Sometimes it's required to use stored procedures or functions. This is still possible with Catel. Below is an example on how to call a stored procedure:

	using (var dbContextManager = DbContextManager<MyEntities>.GetManager())
	{
	    var dbContext = dbContextManager.DbContext;
	    var result = dbContext.Database.SqlQuery<ReturnType>("storedProcedureName", params);
	}