<cfcomponent extends="mxunit.framework.TestCase">
	
	<cfset variables.dsn = "railoserviceapi">
	
	<cffunction name="setUp" returntype="void" access="public">
	</cffunction>

	<cffunction name="tearDown" returntype="void" access="public">
	</cffunction>
	
	<cffunction name="simple_creation_must_return_a_cfc_query_object" returntype="void">
		<cfscript>
		var q = new CF.query();
		assertTrue(isObject(q),"new query does not return an object");	
		</cfscript>	
	</cffunction>
	
	<cffunction name="simple_execute_return_recordset" returntype="void">
		<cfscript>
		var q = new CF.Query(datasource = variables.dsn, sql = "select * from railoteam");
		var result = q.execute();	
		assertTrue(isvalid("Query",result.getResult()));	
		</cfscript>
	</cffunction>

</cfcomponent>
