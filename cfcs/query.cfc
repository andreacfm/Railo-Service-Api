<cfcomponent extends="com.adobe.CFML.base" displayname="CFML Query Service">
	<cffunction name="processPosParams" output="false" access="private" returntype="struct" hint="Processes positional sql params">
		<cfargument name="sqlArray" type="array" required="false" hint="Processes positional sql params">
		<cfargument name="sqlParams" type="array" required="false" hint="Processes positional sql params">
		<cfargument name="posparamsarray" type="array" required="false" hint="Processes positional sql params">
		<cfargument name="queryparams" type="array" required="false" hint="Processes positional sql params">
		<cfthrow message="the function [com.adobe.CFML.query.processPosParams(array sqlArray, array sqlParams, array posparamsarray, array queryparams)] is not implemented yet">
	</cffunction>
	<cffunction name="GETUSERNAME" returntype="string">
		<cfthrow message="the function [com.adobe.CFML.query.GETUSERNAME()] is not implemented yet">
	</cffunction>
	<cffunction name="SETCACHEDAFTER" returntype="void">
		<cfargument name="cachedafter" type="string" required="YES">
		<cfthrow message="the function [com.adobe.CFML.query.SETCACHEDAFTER(string cachedafter)] is not implemented yet">
	</cffunction>
	<cffunction name="getPreserveSingleQuotes" output="false" access="private" returntype="string" hint="preservesinglequotes() can't handle expressions, so something like #preservesinglequotes(SQlArray[1])# would'nt work, hence the need for this wrapper">
		<cfargument name="sqlstatement" type="string" required="false" hint="preservesinglequotes() can't handle expressions, so something like #preservesinglequotes(SQlArray[1])# would'nt work, hence the need for this wrapper">
		<cfthrow message="the function [com.adobe.CFML.query.getPreserveSingleQuotes(string sqlstatement)] is not implemented yet">
	</cffunction>
	<cffunction name="SETCACHEDWITHIN" returntype="void">
		<cfargument name="cachedwithin" type="string" required="YES">
		<cfthrow message="the function [com.adobe.CFML.query.SETCACHEDWITHIN(string cachedwithin)] is not implemented yet">
	</cffunction>
	<cffunction name="GETBLOCKFACTOR" returntype="numeric">
		<cfthrow message="the function [com.adobe.CFML.query.GETBLOCKFACTOR()] is not implemented yet">
	</cffunction>
	<cffunction name="SETNAME" returntype="void">
		<cfargument name="name" type="string" required="YES">
		<cfthrow message="the function [com.adobe.CFML.query.SETNAME(string name)] is not implemented yet">
	</cffunction>
	<cffunction name="checkIfNamedParamExists" output="false" access="private" returntype="boolean" hint="Checks if a named sql param exists in namedparams array.">
		<cfargument name="namedSqlparams" type="array" required="false" hint="Checks if a named sql param exists in namedparams array.">
		<cfargument name="namedparam" type="string" required="false" hint="Checks if a named sql param exists in namedparams array.">
		<cfthrow message="the function [com.adobe.CFML.query.checkIfNamedParamExists(array namedSqlparams, string namedparam)] is not implemented yet">
	</cffunction>
	<cffunction name="arrayinsert" output="false" access="private" returntype="array" hint="Merge one array into another at a specified position and returns the merged array">
		<cfargument name="sqlArray1" type="array" required="false" hint="Merge one array into another at a specified position and returns the merged array">
		<cfargument name="sqlArray2" type="array" required="false" hint="Merge one array into another at a specified position and returns the merged array">
		<cfargument name="pos" type="numeric" required="false" hint="Merge one array into another at a specified position and returns the merged array">
		<cfthrow message="the function [com.adobe.CFML.query.arrayinsert(array sqlArray1, array sqlArray2, numeric pos)] is not implemented yet">
	</cffunction>
	<cffunction name="getPositionalSqlParams" output="false" access="private" returntype="array" hint="parse queryparams stored in parameters array to filter out all postional sql params.">
		<cfargument name="queryparams" type="array" required="false" hint="parse queryparams stored in parameters array to filter out all postional sql params.">
		<cfthrow message="the function [com.adobe.CFML.query.getPositionalSqlParams(array queryparams)] is not implemented yet">
	</cffunction>
	<cffunction name="SETSQL" returntype="void">
		<cfargument name="sql" type="string" required="YES">
		<cfthrow message="the function [com.adobe.CFML.query.SETSQL(string sql)] is not implemented yet">
	</cffunction>
	<cffunction name="SETDEBUG" returntype="void">
		<cfargument name="debug" type="boolean" required="YES">
		<cfthrow message="the function [com.adobe.CFML.query.SETDEBUG(boolean debug)] is not implemented yet">
	</cffunction>
	<cffunction name="SETDATASOURCE" returntype="void">
		<cfargument name="dataSource" type="string" required="YES">
		<cfthrow message="the function [com.adobe.CFML.query.SETDATASOURCE(string dataSource)] is not implemented yet">
	</cffunction>
	<cffunction name="SETBLOCKFACTOR" returntype="void">
		<cfargument name="blockfactor" type="numeric" required="YES">
		<cfthrow message="the function [com.adobe.CFML.query.SETBLOCKFACTOR(numeric blockfactor)] is not implemented yet">
	</cffunction>
	<cffunction name="SETTIMEOUT" returntype="void">
		<cfargument name="timeout" type="numeric" required="YES">
		<cfthrow message="the function [com.adobe.CFML.query.SETTIMEOUT(numeric timeout)] is not implemented yet">
	</cffunction>
	<cffunction name="GETCACHEDWITHIN" returntype="string">
		<cfthrow message="the function [com.adobe.CFML.query.GETCACHEDWITHIN()] is not implemented yet">
	</cffunction>
	<cffunction name="execute" output="false" access="public" returntype="result" hint="Invoke the cfquery (and cfqueryparam) service tag to execute a query in cfscript. Returns the query resultset">
		<cfthrow message="the function [com.adobe.CFML.query.execute()] is not implemented yet">
	</cffunction>
	<cffunction name="parseSQL" output="false" access="private" returntype="any" hint="Parse the SQL into named and positional params.  For named params, order of params is not important but for postional params we need to match the order in which the params are listed.  Named SQL parameters are specified using ":" (for example, select  * from art where artid = :artistid) Positional SQL parameters are specified using  "?" (for example, select  * from art where artid = ? and artistid = ?)  A combination of named and positional sql params is also possible (although not encouraged) (for example, select  * from art where artid = :artid and artistid = ?)  If named/positional param delimiters (i.e. ":" and "?") appear inside single quotes, we replace them with markes "_colon_" and "_qmark" respectively to help with the parsing. After we are done with the parsing and before we pass the sql to execute() for execution, we replace the markers back with the delimiters  This function parses the sql into sqlArray[] and sqlParams[]">
		<cfargument name="sql" type="string" required="false" hint="Parse the SQL into named and positional params.  For named params, order of params is not important but for postional params we need to match the order in which the params are listed.  Named SQL parameters are specified using ":" (for example, select  * from art where artid = :artistid) Positional SQL parameters are specified using  "?" (for example, select  * from art where artid = ? and artistid = ?)  A combination of named and positional sql params is also possible (although not encouraged) (for example, select  * from art where artid = :artid and artistid = ?)  If named/positional param delimiters (i.e. ":" and "?") appear inside single quotes, we replace them with markes "_colon_" and "_qmark" respectively to help with the parsing. After we are done with the parsing and before we pass the sql to execute() for execution, we replace the markers back with the delimiters  This function parses the sql into sqlArray[] and sqlParams[]">
		<cfargument name="queryparams" type="array" required="false" hint="Parse the SQL into named and positional params.  For named params, order of params is not important but for postional params we need to match the order in which the params are listed.  Named SQL parameters are specified using ":" (for example, select  * from art where artid = :artistid) Positional SQL parameters are specified using  "?" (for example, select  * from art where artid = ? and artistid = ?)  A combination of named and positional sql params is also possible (although not encouraged) (for example, select  * from art where artid = :artid and artistid = ?)  If named/positional param delimiters (i.e. ":" and "?") appear inside single quotes, we replace them with markes "_colon_" and "_qmark" respectively to help with the parsing. After we are done with the parsing and before we pass the sql to execute() for execution, we replace the markers back with the delimiters  This function parses the sql into sqlArray[] and sqlParams[]">
		<cfargument name="sqlCommand" type="string" required="false" hint="Parse the SQL into named and positional params.  For named params, order of params is not important but for postional params we need to match the order in which the params are listed.  Named SQL parameters are specified using ":" (for example, select  * from art where artid = :artistid) Positional SQL parameters are specified using  "?" (for example, select  * from art where artid = ? and artistid = ?)  A combination of named and positional sql params is also possible (although not encouraged) (for example, select  * from art where artid = :artid and artistid = ?)  If named/positional param delimiters (i.e. ":" and "?") appear inside single quotes, we replace them with markes "_colon_" and "_qmark" respectively to help with the parsing. After we are done with the parsing and before we pass the sql to execute() for execution, we replace the markers back with the delimiters  This function parses the sql into sqlArray[] and sqlParams[]">
		<cfthrow message="the function [com.adobe.CFML.query.parseSQL(string sql, array queryparams, string sqlCommand)] is not implemented yet">
	</cffunction>
	<cffunction name="GETPASSWORD" returntype="string">
		<cfthrow message="the function [com.adobe.CFML.query.GETPASSWORD()] is not implemented yet">
	</cffunction>
	<cffunction name="GETDBTYPE" returntype="string">
		<cfthrow message="the function [com.adobe.CFML.query.GETDBTYPE()] is not implemented yet">
	</cffunction>
	<cffunction name="processNamedParams" output="false" access="private" returntype="struct" hint="Processes named sql params. Invokes insertNamedParams() to insert the named param into sqlparams array.">
		<cfargument name="sqlArray" type="array" required="false" hint="Processes named sql params. Invokes insertNamedParams() to insert the named param into sqlparams array.">
		<cfargument name="sqlParams" type="array" required="false" hint="Processes named sql params. Invokes insertNamedParams() to insert the named param into sqlparams array.">
		<cfargument name="namedparamsarray" type="array" required="false" hint="Processes named sql params. Invokes insertNamedParams() to insert the named param into sqlparams array.">
		<cfargument name="queryparams" type="array" required="false" hint="Processes named sql params. Invokes insertNamedParams() to insert the named param into sqlparams array.">
		<cfargument name="sqlCommand" type="string" required="false" hint="Processes named sql params. Invokes insertNamedParams() to insert the named param into sqlparams array.">
		<cfthrow message="the function [com.adobe.CFML.query.processNamedParams(array sqlArray, array sqlParams, array namedparamsarray, array queryparams, string sqlCommand)] is not implemented yet">
	</cffunction>
	<cffunction name="init" output="false" access="public" returntype="com.adobe.CFML.query" hint="Initialization routine. Returns an instance of this component">
		<cfthrow message="the function [com.adobe.CFML.query.init()] is not implemented yet">
	</cffunction>
	<cffunction name="SETDBTYPE" returntype="void">
		<cfargument name="dbtype" type="string" required="YES">
		<cfthrow message="the function [com.adobe.CFML.query.SETDBTYPE(string dbtype)] is not implemented yet">
	</cffunction>
	<cffunction name="SETPASSWORD" returntype="void">
		<cfargument name="password" type="string" required="YES">
		<cfthrow message="the function [com.adobe.CFML.query.SETPASSWORD(string password)] is not implemented yet">
	</cffunction>
	<cffunction name="GETTIMEOUT" returntype="numeric">
		<cfthrow message="the function [com.adobe.CFML.query.GETTIMEOUT()] is not implemented yet">
	</cffunction>
	<cffunction name="removePosParam" output="false" access="private" returntype="array" hint="Removes first positional param from positional sql params array">
		<cfargument name="posparamsarray" type="array" required="false" hint="Removes first positional param from positional sql params array">
		<cfthrow message="the function [com.adobe.CFML.query.removePosParam(array posparamsarray)] is not implemented yet">
	</cffunction>
	<cffunction name="GETMAXROWS" returntype="numeric">
		<cfthrow message="the function [com.adobe.CFML.query.GETMAXROWS()] is not implemented yet">
	</cffunction>
	<cffunction name="GETSQL" returntype="string">
		<cfthrow message="the function [com.adobe.CFML.query.GETSQL()] is not implemented yet">
	</cffunction>
	<cffunction name="SETMAXROWS" returntype="void">
		<cfargument name="maxRows" type="numeric" required="YES">
		<cfthrow message="the function [com.adobe.CFML.query.SETMAXROWS(numeric maxRows)] is not implemented yet">
	</cffunction>
	<cffunction name="replaceDelimsWithMarkers" output="false" access="private" returntype="string" hint="replace (named/positional) sql delimiters inside single quotes with markers to allow parsing SQL on delimiters replace : and ? in single quotes with _colon_ and _qmark_">
		<cfargument name="sql" type="string" required="false" hint="replace (named/positional) sql delimiters inside single quotes with markers to allow parsing SQL on delimiters replace : and ? in single quotes with _colon_ and _qmark_">
		<cfthrow message="the function [com.adobe.CFML.query.replaceDelimsWithMarkers(string sql)] is not implemented yet">
	</cffunction>
	<cffunction name="SETRESULT" returntype="void">
		<cfargument name="result" type="string" required="YES">
		<cfthrow message="the function [com.adobe.CFML.query.SETRESULT(string result)] is not implemented yet">
	</cffunction>
	<cffunction name="replaceMarkersWithDelims" output="false" access="private" returntype="array" hint="Replaces markers (_colon_and _qmark_) inside single quotes with actual delimiters (: and ?)">
		<cfargument name="sqlArray" type="array" required="false" hint="Replaces markers (_colon_and _qmark_) inside single quotes with actual delimiters (: and ?)">
		<cfthrow message="the function [com.adobe.CFML.query.replaceMarkersWithDelims(array sqlArray)] is not implemented yet">
	</cffunction>
	<cffunction name="GETNAME" returntype="string">
		<cfthrow message="the function [com.adobe.CFML.query.GETNAME()] is not implemented yet">
	</cffunction>
	<cffunction name="GETDEBUG" returntype="boolean">
		<cfthrow message="the function [com.adobe.CFML.query.GETDEBUG()] is not implemented yet">
	</cffunction>
	<cffunction name="insertNamedParams" output="false" access="private" returntype="array" hint="Inserts a named sql param into sqlParams array. If the named param is not found, an exception is thrown">
		<cfargument name="namedparam" type="string" required="false" hint="Inserts a named sql param into sqlParams array. If the named param is not found, an exception is thrown">
		<cfargument name="namedparamsarray" type="array" required="false" hint="Inserts a named sql param into sqlParams array. If the named param is not found, an exception is thrown">
		<cfargument name="sqlParams" type="array" required="false" hint="Inserts a named sql param into sqlParams array. If the named param is not found, an exception is thrown">
		<cfthrow message="the function [com.adobe.CFML.query.insertNamedParams(string namedparam, array namedparamsarray, array sqlParams)] is not implemented yet">
	</cffunction>
	<cffunction name="getNamedSqlParams" output="false" access="private" returntype="array" hint="parse queryparams stored in parameters array to filter out all named sql params.">
		<cfargument name="queryparams" type="array" required="false" hint="parse queryparams stored in parameters array to filter out all named sql params.">
		<cfthrow message="the function [com.adobe.CFML.query.getNamedSqlParams(array queryparams)] is not implemented yet">
	</cffunction>
	<cffunction name="GETCACHEDAFTER" returntype="string">
		<cfthrow message="the function [com.adobe.CFML.query.GETCACHEDAFTER()] is not implemented yet">
	</cffunction>
	<cffunction name="GETRESULT" returntype="string">
		<cfthrow message="the function [com.adobe.CFML.query.GETRESULT()] is not implemented yet">
	</cffunction>
	<cffunction name="SETUSERNAME" returntype="void">
		<cfargument name="username" type="string" required="YES">
		<cfthrow message="the function [com.adobe.CFML.query.SETUSERNAME(string username)] is not implemented yet">
	</cffunction>
	<cffunction name="GETDATASOURCE" returntype="string">
		<cfthrow message="the function [com.adobe.CFML.query.GETDATASOURCE()] is not implemented yet">
	</cffunction>
</cfcomponent>
