<cfcomponent extends="com.adobe.CFML.base" displayname="CFML Storedproc service">
	<cffunction name="GETCACHEDAFTER" returntype="string">
		<cfthrow message="the function [com.adobe.CFML.storedproc.GETCACHEDAFTER()] is not implemented yet">
	</cffunction>
	<cffunction name="SETCACHEDWITHIN" returntype="void">
		<cfargument name="cachedwithin" type="string" required="YES">
		<cfthrow message="the function [com.adobe.CFML.storedproc.SETCACHEDWITHIN(string cachedwithin)] is not implemented yet">
	</cffunction>
	<cffunction name="SETBLOCKFACTOR" returntype="void">
		<cfargument name="blockfactor" type="numeric" required="YES">
		<cfthrow message="the function [com.adobe.CFML.storedproc.SETBLOCKFACTOR(numeric blockfactor)] is not implemented yet">
	</cffunction>
	<cffunction name="SETRETURNCODE" returntype="void">
		<cfargument name="returncode" type="boolean" required="YES">
		<cfthrow message="the function [com.adobe.CFML.storedproc.SETRETURNCODE(boolean returncode)] is not implemented yet">
	</cffunction>
	<cffunction name="SETRESULT" returntype="void">
		<cfargument name="result" type="string" required="YES">
		<cfthrow message="the function [com.adobe.CFML.storedproc.SETRESULT(string result)] is not implemented yet">
	</cffunction>
	<cffunction name="clearProcResults" output="false" access="public" returntype="void" hint="Removes procresult child tags(if defined) by resetting the procresults array">
		<cfthrow message="the function [com.adobe.CFML.storedproc.clearProcResults()] is not implemented yet">
	</cffunction>
	<cffunction name="GETRETURNCODE" returntype="boolean">
		<cfthrow message="the function [com.adobe.CFML.storedproc.GETRETURNCODE()] is not implemented yet">
	</cffunction>
	<cffunction name="SETCACHEDAFTER" returntype="void">
		<cfargument name="cachedafter" type="string" required="YES">
		<cfthrow message="the function [com.adobe.CFML.storedproc.SETCACHEDAFTER(string cachedafter)] is not implemented yet">
	</cffunction>
	<cffunction name="GETDEBUG" returntype="boolean">
		<cfthrow message="the function [com.adobe.CFML.storedproc.GETDEBUG()] is not implemented yet">
	</cffunction>
	<cffunction name="SETDATASOURCE" returntype="void">
		<cfargument name="datasource" type="string" required="YES">
		<cfthrow message="the function [com.adobe.CFML.storedproc.SETDATASOURCE(string datasource)] is not implemented yet">
	</cffunction>
	<cffunction name="SETUSERNAME" returntype="void">
		<cfargument name="username" type="string" required="YES">
		<cfthrow message="the function [com.adobe.CFML.storedproc.SETUSERNAME(string username)] is not implemented yet">
	</cffunction>
	<cffunction name="addProcResult" output="false" access="public" returntype="void" hint="Add procresult child tags that are stored in the procresults array">
		<cfthrow message="the function [com.adobe.CFML.storedproc.addProcResult()] is not implemented yet">
	</cffunction>
	<cffunction name="GETUSERNAME" returntype="string">
		<cfthrow message="the function [com.adobe.CFML.storedproc.GETUSERNAME()] is not implemented yet">
	</cffunction>
	<cffunction name="SETPROCEDURE" returntype="void">
		<cfargument name="procedure" type="string" required="YES">
		<cfthrow message="the function [com.adobe.CFML.storedproc.SETPROCEDURE(string procedure)] is not implemented yet">
	</cffunction>
	<cffunction name="GETRESULT" returntype="string">
		<cfthrow message="the function [com.adobe.CFML.storedproc.GETRESULT()] is not implemented yet">
	</cffunction>
	<cffunction name="clear" output="false" access="public" returntype="void" hint="Clear tag attributes and child tags like procparams and procresults (if applicable)">
		<cfthrow message="the function [com.adobe.CFML.storedproc.clear()] is not implemented yet">
	</cffunction>
	<cffunction name="SETDEBUG" returntype="void">
		<cfargument name="debug" type="boolean" required="YES">
		<cfthrow message="the function [com.adobe.CFML.storedproc.SETDEBUG(boolean debug)] is not implemented yet">
	</cffunction>
	<cffunction name="init" output="false" access="public" returntype="storedproc" hint="Initialization routine. Returns an instance of this component">
		<cfthrow message="the function [com.adobe.CFML.storedproc.init()] is not implemented yet">
	</cffunction>
	<cffunction name="GETDATASOURCE" returntype="string">
		<cfthrow message="the function [com.adobe.CFML.storedproc.GETDATASOURCE()] is not implemented yet">
	</cffunction>
	<cffunction name="GETCACHEDWITHIN" returntype="string">
		<cfthrow message="the function [com.adobe.CFML.storedproc.GETCACHEDWITHIN()] is not implemented yet">
	</cffunction>
	<cffunction name="GETPASSWORD" returntype="string">
		<cfthrow message="the function [com.adobe.CFML.storedproc.GETPASSWORD()] is not implemented yet">
	</cffunction>
	<cffunction name="GETBLOCKFACTOR" returntype="numeric">
		<cfthrow message="the function [com.adobe.CFML.storedproc.GETBLOCKFACTOR()] is not implemented yet">
	</cffunction>
	<cffunction name="SETPASSWORD" returntype="void">
		<cfargument name="password" type="string" required="YES">
		<cfthrow message="the function [com.adobe.CFML.storedproc.SETPASSWORD(string password)] is not implemented yet">
	</cffunction>
	<cffunction name="execute" output="false" access="public" returntype="storedprocResult" hint="Invoke the cfstoredproc tag (and its child tags cfprocparams and cfprocresult) to provide the storedproc service in cfscript  Usage :: sp = new sp();	//stored proc object r = sp.execute(procedure="proc")  //execute stored procedure and return an instance of com.adobe.CFML.storedprocResult with data (like procresultsets|procvars|result) set r.getProcResultSets() //access any resultsets returned by the stored procedure r.getProcOutVariables() //access any OUT|INOUT variables set by the stored procedure r.getResult() //access result struct (a.k.a cfstoredproc scope) avaialble after a stored procedure call)">
		<cfthrow message="the function [com.adobe.CFML.storedproc.execute()] is not implemented yet">
	</cffunction>
	<cffunction name="GETPROCEDURE" returntype="string">
		<cfthrow message="the function [com.adobe.CFML.storedproc.GETPROCEDURE()] is not implemented yet">
	</cffunction>
</cfcomponent>
