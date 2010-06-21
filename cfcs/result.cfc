<cfcomponent extends="WEB-INF.cftags.component" displayname="return object for CFML services - http, ftp and query">
	<cffunction name="SETPREFIX" returntype="void">
		<cfargument name="prefix" type="struct" required="YES">
		<cfthrow message="the function [com.adobe.CFML.result.SETPREFIX(struct prefix)] is not implemented yet">
	</cffunction>
	<cffunction name="SETRESULT" returntype="void">
		<cfargument name="result" type="any" required="YES">
		<cfthrow message="the function [com.adobe.CFML.result.SETRESULT(any result)] is not implemented yet">
	</cffunction>
	<cffunction name="GETRESULT" returntype="any">
		<cfthrow message="the function [com.adobe.CFML.result.GETRESULT()] is not implemented yet">
	</cffunction>
	<cffunction name="GETPREFIX" returntype="struct">
		<cfthrow message="the function [com.adobe.CFML.result.GETPREFIX()] is not implemented yet">
	</cffunction>
</cfcomponent>
