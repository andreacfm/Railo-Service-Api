<cfcomponent displayname="Query Service" output="false" extends="Base">
				
	<cfproperty name="name" type="string">
	
	<cfscript>		
	variables.tagname = "cfquery";
	</cfscript>

	<cffunction name="init" access="public" output="false" returntype="Base">		
		<cfset super.init(argumentCollection=arguments)>
		<cfreturn this/>
	</cffunction>
	
	<cffunction name="execute" access="public" output="false" returntype="Result">
		<cfset var result = invokeTag()>
		<cfreturn result>
	</cffunction>
	
									
								
</cfcomponent>