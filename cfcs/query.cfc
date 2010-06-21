<cfcomponent displayname="ColdFusion Query Service" output="false" extends="com.adobe.coldfusion.base" hint="Query Service to execute SQL queries in cfscript" >
		
			<cfproperty name="name" type="string">
			<cfproperty name="blockfactor" type="numeric">
			<cfproperty name="cachedafter" type="string">
			<cfproperty name="cachedwithin" type="string">
			<cfproperty name="dataSource" type="string">
			<cfproperty name="dbtype" type="string">
			<cfproperty name="debug" type="boolean">
			<cfproperty name="maxRows" type="numeric">
			<cfproperty name="password" type="string">
			<cfproperty name="result" type="string">
			<cfproperty name="timeout" type="numeric">
			<cfproperty name="username" type="string">
			<cfproperty name="sql" type="string"> 
			<cffunction name="getBlockfactor" returntype="numeric">
				<return blockfactor/>
			</cffunction>
			
			<cffunction name="processposparams" returntype="struct">
				<cfargument name="sqlArray" type="array" required="false"/>
					<cfargument name="sqlParams" type="array" required="false"/>
					<cfargument name="posparamsarray" type="array" required="false"/>
					<cfargument name="queryparams" type="array" required="false"/>
					<cfthrow message="the function com.adobe.coldfusion.http.processPosParams() is not implemented yet">
			</cffunction>
			
			<cffunction name="execute" returntype="result">
				<cfthrow message="the function com.adobe.coldfusion.http.execute() is not implemented yet">
			</cffunction>
			
			<cffunction name="parsesql" returntype="any">
				<cfargument name="sql" type="string" required="false"/>
					<cfargument name="queryparams" type="array" required="false"/>
					<cfargument name="sqlCommand" type="string" required="false"/>
					<cfthrow message="the function com.adobe.coldfusion.http.parseSQL() is not implemented yet">
			</cffunction>
			
			<cffunction name="checkifnamedparamexists" returntype="boolean">
				<cfargument name="namedSqlparams" type="array" required="false"/>
					<cfargument name="namedparam" type="string" required="false"/>
					<cfthrow message="the function com.adobe.coldfusion.http.checkIfNamedParamExists() is not implemented yet">
			</cffunction>
			
			<cffunction name="insertnamedparams" returntype="array">
				<cfargument name="namedparam" type="string" required="false"/>
					<cfargument name="namedparamsarray" type="array" required="false"/>
					<cfargument name="sqlParams" type="array" required="false"/>
					<cfthrow message="the function com.adobe.coldfusion.http.insertNamedParams() is not implemented yet">
			</cffunction>
			
			<cffunction name="getResult" returntype="string">
				<return result/>
			</cffunction>
			
			<cffunction name="getDbtype" returntype="string">
				<return dbtype/>
			</cffunction>
			
			<cffunction name="getNamedsqlparams" returntype="array">
				<cfargument name="queryparams" type="array" required="false"/>
					<return namedsqlparams/>
			</cffunction>
			
			<cffunction name="getMaxrows" returntype="numeric">
				<return maxrows/>
			</cffunction>
			
			<cffunction name="getDatasource" returntype="string">
				<return datasource/>
			</cffunction>
			
			<cffunction name="setDatasource" returntype="void">
				<cfargument name="dataSource" type="string" required="true"/>
					<cfset datasource = arguments.varname />
			</cffunction>
			
			<cffunction name="getTimeout" returntype="numeric">
				<return timeout/>
			</cffunction>
			
			<cffunction name="getPositionalsqlparams" returntype="array">
				<cfargument name="queryparams" type="array" required="false"/>
					<return positionalsqlparams/>
			</cffunction>
			
			<cffunction name="getCachedwithin" returntype="string">
				<return cachedwithin/>
			</cffunction>
			
			<cffunction name="getName" returntype="string">
				<return name/>
			</cffunction>
			
			<cffunction name="setCachedwithin" returntype="void">
				<cfargument name="cachedwithin" type="string" required="true"/>
					<cfset cachedwithin = arguments.varname />
			</cffunction>
			
			<cffunction name="replacemarkerswithdelims" returntype="array">
				<cfargument name="sqlArray" type="array" required="false"/>
					<cfthrow message="the function com.adobe.coldfusion.http.replaceMarkersWithDelims() is not implemented yet">
			</cffunction>
			
			<cffunction name="setDbtype" returntype="void">
				<cfargument name="dbtype" type="string" required="true"/>
					<cfset dbtype = arguments.varname />
			</cffunction>
			
			<cffunction name="setPassword" returntype="void">
				<cfargument name="password" type="string" required="true"/>
					<cfset password = arguments.varname />
			</cffunction>
			
			<cffunction name="setName" returntype="void">
				<cfargument name="name" type="string" required="true"/>
					<cfset name = arguments.varname />
			</cffunction>
			
			<cffunction name="getPreservesinglequotes" returntype="string">
				<cfargument name="sqlstatement" type="string" required="false"/>
					<return preservesinglequotes/>
			</cffunction>
			
			<cffunction name="arrayinsert" returntype="array">
				<cfargument name="sqlArray1" type="array" required="false"/>
					<cfargument name="sqlArray2" type="array" required="false"/>
					<cfargument name="pos" type="numeric" required="false"/>
					<cfthrow message="the function com.adobe.coldfusion.http.arrayinsert() is not implemented yet">
			</cffunction>
			
			<cffunction name="setCachedafter" returntype="void">
				<cfargument name="cachedafter" type="string" required="true"/>
					<cfset cachedafter = arguments.varname />
			</cffunction>
			
			<cffunction name="processnamedparams" returntype="struct">
				<cfargument name="sqlArray" type="array" required="false"/>
					<cfargument name="sqlParams" type="array" required="false"/>
					<cfargument name="namedparamsarray" type="array" required="false"/>
					<cfargument name="queryparams" type="array" required="false"/>
					<cfargument name="sqlCommand" type="string" required="false"/>
					<cfthrow message="the function com.adobe.coldfusion.http.processNamedParams() is not implemented yet">
			</cffunction>
			
			<cffunction name="setMaxrows" returntype="void">
				<cfargument name="maxRows" type="numeric" required="true"/>
					<cfset maxrows = arguments.varname />
			</cffunction>
			
			<cffunction name="getPassword" returntype="string">
				<return password/>
			</cffunction>
			
			<cffunction name="init" returntype="com.adobe.coldfusion.query">
				<cfthrow message="the function com.adobe.coldfusion.http.init() is not implemented yet">
			</cffunction>
			
			<cffunction name="setUsername" returntype="void">
				<cfargument name="username" type="string" required="true"/>
					<cfset username = arguments.varname />
			</cffunction>
			
			<cffunction name="replacedelimswithmarkers" returntype="string">
				<cfargument name="sql" type="string" required="false"/>
					<cfthrow message="the function com.adobe.coldfusion.http.replaceDelimsWithMarkers() is not implemented yet">
			</cffunction>
			
			<cffunction name="setDebug" returntype="void">
				<cfargument name="debug" type="boolean" required="true"/>
					<cfset debug = arguments.varname />
			</cffunction>
			
			<cffunction name="getSql" returntype="string">
				<return sql/>
			</cffunction>
			
			<cffunction name="setSql" returntype="void">
				<cfargument name="sql" type="string" required="true"/>
					<cfset sql = arguments.varname />
			</cffunction>
			
			<cffunction name="setTimeout" returntype="void">
				<cfargument name="timeout" type="numeric" required="true"/>
					<cfset timeout = arguments.varname />
			</cffunction>
			
			<cffunction name="getCachedafter" returntype="string">
				<return cachedafter/>
			</cffunction>
			
			<cffunction name="getDebug" returntype="boolean">
				<return debug/>
			</cffunction>
			
			<cffunction name="getUsername" returntype="string">
				<return username/>
			</cffunction>
			
			<cffunction name="setResult" returntype="void">
				<cfargument name="result" type="string" required="true"/>
					<cfset result = arguments.varname />
			</cffunction>
			
			<cffunction name="removeposparam" returntype="array">
				<cfargument name="posparamsarray" type="array" required="false"/>
					<cfthrow message="the function com.adobe.coldfusion.http.removePosParam() is not implemented yet">
			</cffunction>
			
			<cffunction name="setBlockfactor" returntype="void">
				<cfargument name="blockfactor" type="numeric" required="true"/>
					<cfset blockfactor = arguments.varname />
			</cffunction>
			
	
	</cfcomponent>