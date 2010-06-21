<cfcomponent displayname="return object for coldfusion services - http, ftp and query" output="false" extends="WEB-INF.cftags.component" hint="component returned by the http,ftp,query services" >
		
			<cfproperty name="result" type="any">
			<cfproperty name="prefix" type="struct"> 
			<cffunction name="getPrefix" returntype="struct">
				<return prefix/>
			</cffunction>
			
			<cffunction name="getResult" returntype="any">
				<return result/>
			</cffunction>
			
			<cffunction name="setResult" returntype="void">
				<cfargument name="result" type="any" required="true"/>
					<cfset result = arguments.varname />
			</cffunction>
			
			<cffunction name="setPrefix" returntype="void">
				<cfargument name="prefix" type="struct" required="true"/>
					<cfset prefix = arguments.varname />
			</cffunction>
			
	
	</cfcomponent>