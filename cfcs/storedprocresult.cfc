<cfcomponent displayname="ColdFusion Storedproc service return object" output="false" extends="WEB-INF.cftags.component" hint="component returned by the storedproc service" >
		
			<cfproperty name="prefix" type="struct">
			<cfproperty name="procResultSets" type="struct">
			<cfproperty name="procOutVariables" type="struct"> 
			<cffunction name="setPrefix" returntype="void">
				<cfargument name="prefix" type="struct" required="true"/>
					<cfset prefix = arguments.varname />
			</cffunction>
			
			<cffunction name="getProcresultsets" returntype="struct">
				<return procresultsets/>
			</cffunction>
			
			<cffunction name="setProcresultsets" returntype="void">
				<cfargument name="procResultSets" type="struct" required="true"/>
					<cfset procresultsets = arguments.varname />
			</cffunction>
			
			<cffunction name="setProcoutvariables" returntype="void">
				<cfargument name="procOutVariables" type="struct" required="true"/>
					<cfset procoutvariables = arguments.varname />
			</cffunction>
			
			<cffunction name="getProcoutvariables" returntype="struct">
				<return procoutvariables/>
			</cffunction>
			
			<cffunction name="getPrefix" returntype="struct">
				<return prefix/>
			</cffunction>
			
	
	</cfcomponent>