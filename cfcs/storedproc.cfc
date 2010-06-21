<cfcomponent displayname="ColdFusion Storedproc service" output="false" extends="com.adobe.coldfusion.base" hint="Stored procedure service to call stored procedures in cfscript" >
		
			<cfproperty name="datasource" type="string">
			<cfproperty name="procedure" type="string">
			<cfproperty name="debug" type="boolean">
			<cfproperty name="cachedafter" type="string">
			<cfproperty name="cachedwithin" type="string">
			<cfproperty name="blockfactor" type="numeric">
			<cfproperty name="password" type="string">
			<cfproperty name="result" type="string">
			<cfproperty name="returncode" type="boolean">
			<cfproperty name="username" type="string"> 
			<cffunction name="clearprocresults" returntype="void">
				<cfthrow message="the function com.adobe.coldfusion.http.clearProcResults() is not implemented yet">
			</cffunction>
			
			<cffunction name="clear" returntype="void">
				<cfthrow message="the function com.adobe.coldfusion.http.clear() is not implemented yet">
			</cffunction>
			
			<cffunction name="setDatasource" returntype="void">
				<cfargument name="datasource" type="string" required="true"/>
					<cfset datasource = arguments.varname />
			</cffunction>
			
			<cffunction name="getCachedwithin" returntype="string">
				<return cachedwithin/>
			</cffunction>
			
			<cffunction name="init" returntype="storedproc">
				<cfthrow message="the function com.adobe.coldfusion.http.init() is not implemented yet">
			</cffunction>
			
			<cffunction name="getUsername" returntype="string">
				<return username/>
			</cffunction>
			
			<cffunction name="execute" returntype="storedprocresult">
				<cfthrow message="the function com.adobe.coldfusion.http.execute() is not implemented yet">
			</cffunction>
			
			<cffunction name="getReturncode" returntype="boolean">
				<return returncode/>
			</cffunction>
			
			<cffunction name="setReturncode" returntype="void">
				<cfargument name="returncode" type="boolean" required="true"/>
					<cfset returncode = arguments.varname />
			</cffunction>
			
			<cffunction name="setUsername" returntype="void">
				<cfargument name="username" type="string" required="true"/>
					<cfset username = arguments.varname />
			</cffunction>
			
			<cffunction name="addprocresult" returntype="void">
				<cfthrow message="the function com.adobe.coldfusion.http.addProcResult() is not implemented yet">
			</cffunction>
			
			<cffunction name="setCachedwithin" returntype="void">
				<cfargument name="cachedwithin" type="string" required="true"/>
					<cfset cachedwithin = arguments.varname />
			</cffunction>
			
			<cffunction name="setPassword" returntype="void">
				<cfargument name="password" type="string" required="true"/>
					<cfset password = arguments.varname />
			</cffunction>
			
			<cffunction name="getResult" returntype="string">
				<return result/>
			</cffunction>
			
			<cffunction name="getDatasource" returntype="string">
				<return datasource/>
			</cffunction>
			
			<cffunction name="getCachedafter" returntype="string">
				<return cachedafter/>
			</cffunction>
			
			<cffunction name="setBlockfactor" returntype="void">
				<cfargument name="blockfactor" type="numeric" required="true"/>
					<cfset blockfactor = arguments.varname />
			</cffunction>
			
			<cffunction name="setCachedafter" returntype="void">
				<cfargument name="cachedafter" type="string" required="true"/>
					<cfset cachedafter = arguments.varname />
			</cffunction>
			
			<cffunction name="getPassword" returntype="string">
				<return password/>
			</cffunction>
			
			<cffunction name="getDebug" returntype="boolean">
				<return debug/>
			</cffunction>
			
			<cffunction name="getProcedure" returntype="string">
				<return procedure/>
			</cffunction>
			
			<cffunction name="setDebug" returntype="void">
				<cfargument name="debug" type="boolean" required="true"/>
					<cfset debug = arguments.varname />
			</cffunction>
			
			<cffunction name="setResult" returntype="void">
				<cfargument name="result" type="string" required="true"/>
					<cfset result = arguments.varname />
			</cffunction>
			
			<cffunction name="setProcedure" returntype="void">
				<cfargument name="procedure" type="string" required="true"/>
					<cfset procedure = arguments.varname />
			</cffunction>
			
			<cffunction name="getBlockfactor" returntype="numeric">
				<return blockfactor/>
			</cffunction>
			
	
	</cfcomponent>