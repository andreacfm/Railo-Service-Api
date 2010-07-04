<cfcomponent displayname="Query Service" output="false" extends="base">
				
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
				<cfscript>
					
						variables.name = "";
						variables.blockfactor = "";
						variables.cachedafter = "";
						variables.cachedwithin = "";
						variables.dataSource = "";
						variables.dbtype = "";
						variables.debug = "";
						variables.maxRows = "";
						variables.password = "";
						variables.result = "";
						variables.timeout = "";
						variables.username = "";
						variables.sql = "";
				
				</cfscript>

				
					
					<cffunction name="processposparams" returntype="struct">
						<cfargument name="sqlArray" type="array" required="false"/>
							<cfargument name="sqlParams" type="array" required="false"/>
							<cfargument name="posparamsarray" type="array" required="false"/>
							<cfargument name="queryparams" type="array" required="false"/>
							<cfthrow message="the function processPosParams() is not implemented yet">
					</cffunction>
					
					<cffunction name="execute" returntype="result">
						<cfthrow message="the function execute() is not implemented yet">
					</cffunction>
					
					<cffunction name="parsesql" returntype="any">
						<cfargument name="sql" type="string" required="false"/>
							<cfargument name="queryparams" type="array" required="false"/>
							<cfargument name="sqlCommand" type="string" required="false"/>
							<cfthrow message="the function parseSQL() is not implemented yet">
					</cffunction>
					
					<cffunction name="checkifnamedparamexists" returntype="boolean">
						<cfargument name="namedSqlparams" type="array" required="false"/>
							<cfargument name="namedparam" type="string" required="false"/>
							<cfthrow message="the function checkIfNamedParamExists() is not implemented yet">
					</cffunction>
					
					<cffunction name="insertnamedparams" returntype="array">
						<cfargument name="namedparam" type="string" required="false"/>
							<cfargument name="namedparamsarray" type="array" required="false"/>
							<cfargument name="sqlParams" type="array" required="false"/>
							<cfthrow message="the function insertNamedParams() is not implemented yet">
					</cffunction>
					
					<cffunction name="getResult" returntype="string">
						<cfreturn variables.result/>
					</cffunction>
					
					<cffunction name="getDbtype" returntype="string">
						<cfreturn variables.dbtype/>
					</cffunction>
					
					<cffunction name="getNamedsqlparams" returntype="array">
						<cfargument name="queryparams" type="array" required="false"/>
							<cfreturn variables.namedsqlparams/>
					</cffunction>
					
					
					
					<cffunction name="getPositionalsqlparams" returntype="array">
						<cfargument name="queryparams" type="array" required="false"/>
							<cfreturn variables.positionalsqlparams/>
					</cffunction>
					
					
					<cffunction name="replacemarkerswithdelims" returntype="array">
						<cfargument name="sqlArray" type="array" required="false"/>
							<cfthrow message="the function replaceMarkersWithDelims() is not implemented yet">
					</cffunction>
					
					
					<cffunction name="arrayinsert" returntype="array">
						<cfargument name="sqlArray1" type="array" required="false"/>
							<cfargument name="sqlArray2" type="array" required="false"/>
							<cfargument name="pos" type="numeric" required="false"/>
							<cfthrow message="the function arrayinsert() is not implemented yet">
					</cffunction>
					

					
					<cffunction name="processnamedparams" returntype="struct">
						<cfargument name="sqlArray" type="array" required="false"/>
							<cfargument name="sqlParams" type="array" required="false"/>
							<cfargument name="namedparamsarray" type="array" required="false"/>
							<cfargument name="queryparams" type="array" required="false"/>
							<cfargument name="sqlCommand" type="string" required="false"/>
							<cfthrow message="the function processNamedParams() is not implemented yet">
					</cffunction>
					
					
					
					<cffunction name="replacedelimswithmarkers" returntype="string">
						<cfargument name="sql" type="string" required="false"/>
							<cfthrow message="the function replaceDelimsWithMarkers() is not implemented yet">
					</cffunction>
					
					
			
				
		
					
					<cffunction name="removeposparam" returntype="array">
						<cfargument name="posparamsarray" type="array" required="false"/>
							<cfthrow message="the function removePosParam() is not implemented yet">
					</cffunction>
					
				
			</cfcomponent>