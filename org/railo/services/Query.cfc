<cfcomponent displayname="Query Service" output="false" extends="Base">
				
	<cfproperty name="name" type="string">
	
	<cfscript>		
	variables.tagname = "query";
	</cfscript>

	<cffunction name="init" access="public" output="false" returntype="Base">	
		<cfdump var="#arguments#">
		<cfabort>
	
		<cfset super.init(arguments)>
		<cfreturn this/>
	</cffunction>
	
	<cffunction name="execute" access="public" output="false" returntype="Result">
		<cfset var result = invokeTag()>
		<cfreturn result>
	</cffunction>
	
									
								
</cfcomponent>