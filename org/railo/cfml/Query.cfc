<cfcomponent displayname="Query Service" output="false" extends="Base">
				
	<cfproperty name="name" type="string">
	
	<cfscript>		
	variables.tagname = "query";
	</cfscript>

	<cffunction name="init" access="public" output="false" returntype="Base">	
		<cfset super.init(argumentCollection=arguments)>
		<cfreturn this/>
	</cffunction>
	
	<cffunction name="execute" access="public" output="false" returntype="Result">
		<cfargument name="sql" type="string" required="false">
		<cfif len(arguments.sql)>
			<cfset setSql(arguments.sql)>
		</cfif>
		<cfset parseSql()>
		<cfset var result = invokeTag()>
		<cfreturn result>
	</cffunction>
	
	
												
</cfcomponent>
<!--- 
invoke tag flow:

* params exixts?
* NO = invoketag   YES 
				   match sql for :key
				   replace with params array
				   setSql()
				   invokeTag
 --->