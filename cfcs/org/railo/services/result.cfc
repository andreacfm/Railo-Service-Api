<cfcomponent displayname="result" output="false" hint="object returned by the http,ftp,query and mail services" >
				
					<cfproperty name="result" type="any">
					<cfproperty name="prefix" type="struct">
				<cfscript>
					
						variables.result = "";
						variables.prefix = "";
				
				</cfscript>

				
					<cffunction name="getPrefix" returntype="struct">
						<cfreturn variables.prefix/>
					</cffunction>
					
					<cffunction name="getResult" returntype="any">
						<cfreturn variables.result/>
					</cffunction>
					
					<cffunction name="setResult" returntype="void">
						<cfargument name="result" type="any" required="true"/>
							<cfset variables.result = arguments.result />
					</cffunction>
					
					<cffunction name="setPrefix" returntype="void">
						<cfargument name="prefix" type="struct" required="true"/>
							<cfset variables.prefix = arguments.prefix />
					</cffunction>
					
					
					<cffunction name="getVariables">
						<cfreturn variables/>
					</cffunction>
			</cfcomponent>