<cfcomponent displayname="ColdFusion Mail service" output="false" extends="com.adobe.coldfusion.base" hint="Mail service to send mail in cfscript" >
		
			<cfproperty name="from" type="string">
			<cfproperty name="to" type="string">
			<cfproperty name="subject" type="string">
			<cfproperty name="bcc" type="string">
			<cfproperty name="cc" type="string">
			<cfproperty name="charset" type="string">
			<cfproperty name="debug" type="boolean">
			<cfproperty name="failto" type="string">
			<cfproperty name="group" type="string">
			<cfproperty name="groupcasesensitive" type="boolean">
			<cfproperty name="mailerid" type="string">
			<cfproperty name="maxrows" type="numeric">
			<cfproperty name="mimeattach" type="string">
			<cfproperty name="password" type="string">
			<cfproperty name="port" type="numeric">
			<cfproperty name="priority" type="numeric">
			<cfproperty name="query" type="query">
			<cfproperty name="replyto" type="string">
			<cfproperty name="server" type="string">
			<cfproperty name="spoolenable" type="boolean">
			<cfproperty name="startrow" type="numeric">
			<cfproperty name="timeout" type="numeric">
			<cfproperty name="type" type="string">
			<cfproperty name="username" type="string">
			<cfproperty name="useSSL" type="boolean">
			<cfproperty name="useTLS" type="boolean">
			<cfproperty name="wraptext" type="string">
			<cfproperty name="remove" type="boolean">
			<cfproperty name="body" type="string"> 
			<cffunction name="getFailto" returntype="string">
				<return failto/>
			</cffunction>
			
			<cffunction name="setTo" returntype="void">
				<cfargument name="to" type="string" required="true"/>
					<cfset to = arguments.varname />
			</cffunction>
			
			<cffunction name="getTimeout" returntype="numeric">
				<return timeout/>
			</cffunction>
			
			<cffunction name="getMaxrows" returntype="numeric">
				<return maxrows/>
			</cffunction>
			
			<cffunction name="setPassword" returntype="void">
				<cfargument name="password" type="string" required="true"/>
					<cfset password = arguments.varname />
			</cffunction>
			
			<cffunction name="getType" returntype="string">
				<return type/>
			</cffunction>
			
			<cffunction name="setServer" returntype="void">
				<cfargument name="server" type="string" required="true"/>
					<cfset server = arguments.varname />
			</cffunction>
			
			<cffunction name="setFrom" returntype="void">
				<cfargument name="from" type="string" required="true"/>
					<cfset from = arguments.varname />
			</cffunction>
			
			<cffunction name="getBcc" returntype="string">
				<return bcc/>
			</cffunction>
			
			<cffunction name="getDebug" returntype="boolean">
				<return debug/>
			</cffunction>
			
			<cffunction name="setRemove" returntype="void">
				<cfargument name="remove" type="boolean" required="true"/>
					<cfset remove = arguments.varname />
			</cffunction>
			
			<cffunction name="getMailerid" returntype="string">
				<return mailerid/>
			</cffunction>
			
			<cffunction name="setGroup" returntype="void">
				<cfargument name="group" type="string" required="true"/>
					<cfset group = arguments.varname />
			</cffunction>
			
			<cffunction name="setStartrow" returntype="void">
				<cfargument name="startrow" type="numeric" required="true"/>
					<cfset startrow = arguments.varname />
			</cffunction>
			
			<cffunction name="setGroupcasesensitive" returntype="void">
				<cfargument name="groupcasesensitive" type="boolean" required="true"/>
					<cfset groupcasesensitive = arguments.varname />
			</cffunction>
			
			<cffunction name="setPort" returntype="void">
				<cfargument name="port" type="numeric" required="true"/>
					<cfset port = arguments.varname />
			</cffunction>
			
			<cffunction name="send" returntype="void">
				<cfthrow message="the function com.adobe.coldfusion.http.send() is not implemented yet">
			</cffunction>
			
			<cffunction name="getPort" returntype="numeric">
				<return port/>
			</cffunction>
			
			<cffunction name="getReplyto" returntype="string">
				<return replyto/>
			</cffunction>
			
			<cffunction name="getCc" returntype="string">
				<return cc/>
			</cffunction>
			
			<cffunction name="setCharset" returntype="void">
				<cfargument name="charset" type="string" required="true"/>
					<cfset charset = arguments.varname />
			</cffunction>
			
			<cffunction name="clearparts" returntype="void">
				<cfthrow message="the function com.adobe.coldfusion.http.clearParts() is not implemented yet">
			</cffunction>
			
			<cffunction name="setUsessl" returntype="void">
				<cfargument name="useSSL" type="boolean" required="true"/>
					<cfset usessl = arguments.varname />
			</cffunction>
			
			<cffunction name="addpart" returntype="void">
				<cfthrow message="the function com.adobe.coldfusion.http.addPart() is not implemented yet">
			</cffunction>
			
			<cffunction name="setQuery" returntype="void">
				<cfargument name="query" type="query" required="true"/>
					<cfset query = arguments.varname />
			</cffunction>
			
			<cffunction name="getGroupcasesensitive" returntype="boolean">
				<return groupcasesensitive/>
			</cffunction>
			
			<cffunction name="getStartrow" returntype="numeric">
				<return startrow/>
			</cffunction>
			
			<cffunction name="setWraptext" returntype="void">
				<cfargument name="wraptext" type="string" required="true"/>
					<cfset wraptext = arguments.varname />
			</cffunction>
			
			<cffunction name="getServer" returntype="string">
				<return server/>
			</cffunction>
			
			<cffunction name="setPriority" returntype="void">
				<cfargument name="priority" type="numeric" required="true"/>
					<cfset priority = arguments.varname />
			</cffunction>
			
			<cffunction name="setCc" returntype="void">
				<cfargument name="cc" type="string" required="true"/>
					<cfset cc = arguments.varname />
			</cffunction>
			
			<cffunction name="setMailerid" returntype="void">
				<cfargument name="mailerid" type="string" required="true"/>
					<cfset mailerid = arguments.varname />
			</cffunction>
			
			<cffunction name="getUsername" returntype="string">
				<return username/>
			</cffunction>
			
			<cffunction name="setUsetls" returntype="void">
				<cfargument name="useTLS" type="boolean" required="true"/>
					<cfset usetls = arguments.varname />
			</cffunction>
			
			<cffunction name="getMimeattach" returntype="string">
				<return mimeattach/>
			</cffunction>
			
			<cffunction name="setBcc" returntype="void">
				<cfargument name="bcc" type="string" required="true"/>
					<cfset bcc = arguments.varname />
			</cffunction>
			
			<cffunction name="getTo" returntype="string">
				<return to/>
			</cffunction>
			
			<cffunction name="setType" returntype="void">
				<cfargument name="type" type="string" required="true"/>
					<cfset type = arguments.varname />
			</cffunction>
			
			<cffunction name="clear" returntype="void">
				<cfthrow message="the function com.adobe.coldfusion.http.clear() is not implemented yet">
			</cffunction>
			
			<cffunction name="getSpoolenable" returntype="boolean">
				<return spoolenable/>
			</cffunction>
			
			<cffunction name="getBody" returntype="string">
				<return body/>
			</cffunction>
			
			<cffunction name="getGroup" returntype="string">
				<return group/>
			</cffunction>
			
			<cffunction name="setSpoolenable" returntype="void">
				<cfargument name="spoolenable" type="boolean" required="true"/>
					<cfset spoolenable = arguments.varname />
			</cffunction>
			
			<cffunction name="getCharset" returntype="string">
				<return charset/>
			</cffunction>
			
			<cffunction name="setSubject" returntype="void">
				<cfargument name="subject" type="string" required="true"/>
					<cfset subject = arguments.varname />
			</cffunction>
			
			<cffunction name="setTimeout" returntype="void">
				<cfargument name="timeout" type="numeric" required="true"/>
					<cfset timeout = arguments.varname />
			</cffunction>
			
			<cffunction name="getPassword" returntype="string">
				<return password/>
			</cffunction>
			
			<cffunction name="getUsetls" returntype="boolean">
				<return usetls/>
			</cffunction>
			
			<cffunction name="setReplyto" returntype="void">
				<cfargument name="replyto" type="string" required="true"/>
					<cfset replyto = arguments.varname />
			</cffunction>
			
			<cffunction name="getWraptext" returntype="string">
				<return wraptext/>
			</cffunction>
			
			<cffunction name="getQuery" returntype="query">
				<return query/>
			</cffunction>
			
			<cffunction name="setMimeattach" returntype="void">
				<cfargument name="mimeattach" type="string" required="true"/>
					<cfset mimeattach = arguments.varname />
			</cffunction>
			
			<cffunction name="setFailto" returntype="void">
				<cfargument name="failto" type="string" required="true"/>
					<cfset failto = arguments.varname />
			</cffunction>
			
			<cffunction name="getUsessl" returntype="boolean">
				<return usessl/>
			</cffunction>
			
			<cffunction name="setUsername" returntype="void">
				<cfargument name="username" type="string" required="true"/>
					<cfset username = arguments.varname />
			</cffunction>
			
			<cffunction name="init" returntype="mail">
				<cfthrow message="the function com.adobe.coldfusion.http.init() is not implemented yet">
			</cffunction>
			
			<cffunction name="setMaxrows" returntype="void">
				<cfargument name="maxrows" type="numeric" required="true"/>
					<cfset maxrows = arguments.varname />
			</cffunction>
			
			<cffunction name="getSubject" returntype="string">
				<return subject/>
			</cffunction>
			
			<cffunction name="getFrom" returntype="string">
				<return from/>
			</cffunction>
			
			<cffunction name="getPriority" returntype="numeric">
				<return priority/>
			</cffunction>
			
			<cffunction name="setDebug" returntype="void">
				<cfargument name="debug" type="boolean" required="true"/>
					<cfset debug = arguments.varname />
			</cffunction>
			
			<cffunction name="setBody" returntype="void">
				<cfargument name="body" type="string" required="true"/>
					<cfset body = arguments.varname />
			</cffunction>
			
			<cffunction name="getRemove" returntype="boolean">
				<return remove/>
			</cffunction>
			
	
	</cfcomponent>