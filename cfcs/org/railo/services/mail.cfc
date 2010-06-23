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
				<cfscript>
					
						variables.from = "";
						variables.to = "";
						variables.subject = "";
						variables.bcc = "";
						variables.cc = "";
						variables.charset = "";
						variables.debug = "";
						variables.failto = "";
						variables.group = "";
						variables.groupcasesensitive = "";
						variables.mailerid = "";
						variables.maxrows = "";
						variables.mimeattach = "";
						variables.password = "";
						variables.port = "";
						variables.priority = "";
						variables.query = "";
						variables.replyto = "";
						variables.server = "";
						variables.spoolenable = "";
						variables.startrow = "";
						variables.timeout = "";
						variables.type = "";
						variables.username = "";
						variables.useSSL = "";
						variables.useTLS = "";
						variables.wraptext = "";
						variables.remove = "";
						variables.body = "";
				
				</cfscript>

				
					<cffunction name="getFailto" returntype="string">
						<cfreturn variables.failto/>
					</cffunction>
					
					<cffunction name="setTo" returntype="void">
						<cfargument name="to" type="string" required="true"/>
							<cfset variables.to = arguments.varname />
					</cffunction>
					
					<cffunction name="getTimeout" returntype="numeric">
						<cfreturn variables.timeout/>
					</cffunction>
					
					<cffunction name="getMaxrows" returntype="numeric">
						<cfreturn variables.maxrows/>
					</cffunction>
					
					<cffunction name="setPassword" returntype="void">
						<cfargument name="password" type="string" required="true"/>
							<cfset variables.password = arguments.varname />
					</cffunction>
					
					<cffunction name="getType" returntype="string">
						<cfreturn variables.type/>
					</cffunction>
					
					<cffunction name="setServer" returntype="void">
						<cfargument name="server" type="string" required="true"/>
							<cfset variables.server = arguments.varname />
					</cffunction>
					
					<cffunction name="setFrom" returntype="void">
						<cfargument name="from" type="string" required="true"/>
							<cfset variables.from = arguments.varname />
					</cffunction>
					
					<cffunction name="getBcc" returntype="string">
						<cfreturn variables.bcc/>
					</cffunction>
					
					<cffunction name="getDebug" returntype="boolean">
						<cfreturn variables.debug/>
					</cffunction>
					
					<cffunction name="setRemove" returntype="void">
						<cfargument name="remove" type="boolean" required="true"/>
							<cfset variables.remove = arguments.varname />
					</cffunction>
					
					<cffunction name="getMailerid" returntype="string">
						<cfreturn variables.mailerid/>
					</cffunction>
					
					<cffunction name="setGroup" returntype="void">
						<cfargument name="group" type="string" required="true"/>
							<cfset variables.group = arguments.varname />
					</cffunction>
					
					<cffunction name="setStartrow" returntype="void">
						<cfargument name="startrow" type="numeric" required="true"/>
							<cfset variables.startrow = arguments.varname />
					</cffunction>
					
					<cffunction name="setGroupcasesensitive" returntype="void">
						<cfargument name="groupcasesensitive" type="boolean" required="true"/>
							<cfset variables.groupcasesensitive = arguments.varname />
					</cffunction>
					
					<cffunction name="setPort" returntype="void">
						<cfargument name="port" type="numeric" required="true"/>
							<cfset variables.port = arguments.varname />
					</cffunction>
					
					<cffunction name="send" returntype="void">
						<cfthrow message="the function send() is not implemented yet">
					</cffunction>
					
					<cffunction name="getPort" returntype="numeric">
						<cfreturn variables.port/>
					</cffunction>
					
					<cffunction name="getReplyto" returntype="string">
						<cfreturn variables.replyto/>
					</cffunction>
					
					<cffunction name="getCc" returntype="string">
						<cfreturn variables.cc/>
					</cffunction>
					
					<cffunction name="setCharset" returntype="void">
						<cfargument name="charset" type="string" required="true"/>
							<cfset variables.charset = arguments.varname />
					</cffunction>
					
					<cffunction name="clearparts" returntype="void">
						<cfthrow message="the function clearParts() is not implemented yet">
					</cffunction>
					
					<cffunction name="setUsessl" returntype="void">
						<cfargument name="useSSL" type="boolean" required="true"/>
							<cfset variables.usessl = arguments.varname />
					</cffunction>
					
					<cffunction name="addpart" returntype="void">
						<cfthrow message="the function addPart() is not implemented yet">
					</cffunction>
					
					<cffunction name="setQuery" returntype="void">
						<cfargument name="query" type="query" required="true"/>
							<cfset variables.query = arguments.varname />
					</cffunction>
					
					<cffunction name="getGroupcasesensitive" returntype="boolean">
						<cfreturn variables.groupcasesensitive/>
					</cffunction>
					
					<cffunction name="getStartrow" returntype="numeric">
						<cfreturn variables.startrow/>
					</cffunction>
					
					<cffunction name="setWraptext" returntype="void">
						<cfargument name="wraptext" type="string" required="true"/>
							<cfset variables.wraptext = arguments.varname />
					</cffunction>
					
					<cffunction name="getServer" returntype="string">
						<cfreturn variables.server/>
					</cffunction>
					
					<cffunction name="setPriority" returntype="void">
						<cfargument name="priority" type="numeric" required="true"/>
							<cfset variables.priority = arguments.varname />
					</cffunction>
					
					<cffunction name="setCc" returntype="void">
						<cfargument name="cc" type="string" required="true"/>
							<cfset variables.cc = arguments.varname />
					</cffunction>
					
					<cffunction name="setMailerid" returntype="void">
						<cfargument name="mailerid" type="string" required="true"/>
							<cfset variables.mailerid = arguments.varname />
					</cffunction>
					
					<cffunction name="getUsername" returntype="string">
						<cfreturn variables.username/>
					</cffunction>
					
					<cffunction name="setUsetls" returntype="void">
						<cfargument name="useTLS" type="boolean" required="true"/>
							<cfset variables.usetls = arguments.varname />
					</cffunction>
					
					<cffunction name="getMimeattach" returntype="string">
						<cfreturn variables.mimeattach/>
					</cffunction>
					
					<cffunction name="setBcc" returntype="void">
						<cfargument name="bcc" type="string" required="true"/>
							<cfset variables.bcc = arguments.varname />
					</cffunction>
					
					<cffunction name="getTo" returntype="string">
						<cfreturn variables.to/>
					</cffunction>
					
					<cffunction name="setType" returntype="void">
						<cfargument name="type" type="string" required="true"/>
							<cfset variables.type = arguments.varname />
					</cffunction>
					
					<cffunction name="clear" returntype="void">
						<cfthrow message="the function clear() is not implemented yet">
					</cffunction>
					
					<cffunction name="getSpoolenable" returntype="boolean">
						<cfreturn variables.spoolenable/>
					</cffunction>
					
					<cffunction name="getBody" returntype="string">
						<cfreturn variables.body/>
					</cffunction>
					
					<cffunction name="getGroup" returntype="string">
						<cfreturn variables.group/>
					</cffunction>
					
					<cffunction name="setSpoolenable" returntype="void">
						<cfargument name="spoolenable" type="boolean" required="true"/>
							<cfset variables.spoolenable = arguments.varname />
					</cffunction>
					
					<cffunction name="getCharset" returntype="string">
						<cfreturn variables.charset/>
					</cffunction>
					
					<cffunction name="setSubject" returntype="void">
						<cfargument name="subject" type="string" required="true"/>
							<cfset variables.subject = arguments.varname />
					</cffunction>
					
					<cffunction name="setTimeout" returntype="void">
						<cfargument name="timeout" type="numeric" required="true"/>
							<cfset variables.timeout = arguments.varname />
					</cffunction>
					
					<cffunction name="getPassword" returntype="string">
						<cfreturn variables.password/>
					</cffunction>
					
					<cffunction name="getUsetls" returntype="boolean">
						<cfreturn variables.usetls/>
					</cffunction>
					
					<cffunction name="setReplyto" returntype="void">
						<cfargument name="replyto" type="string" required="true"/>
							<cfset variables.replyto = arguments.varname />
					</cffunction>
					
					<cffunction name="getWraptext" returntype="string">
						<cfreturn variables.wraptext/>
					</cffunction>
					
					<cffunction name="getQuery" returntype="query">
						<cfreturn variables.query/>
					</cffunction>
					
					<cffunction name="setMimeattach" returntype="void">
						<cfargument name="mimeattach" type="string" required="true"/>
							<cfset variables.mimeattach = arguments.varname />
					</cffunction>
					
					<cffunction name="setFailto" returntype="void">
						<cfargument name="failto" type="string" required="true"/>
							<cfset variables.failto = arguments.varname />
					</cffunction>
					
					<cffunction name="getUsessl" returntype="boolean">
						<cfreturn variables.usessl/>
					</cffunction>
					
					<cffunction name="setUsername" returntype="void">
						<cfargument name="username" type="string" required="true"/>
							<cfset variables.username = arguments.varname />
					</cffunction>
					
					<cffunction name="init" returntype="mail">
						<cfif NOT StructIsEmpty(arguments)><cfset StructAppend(variables, arguments, true)></cfif><cfreturn this/>
					</cffunction>
					
					<cffunction name="setMaxrows" returntype="void">
						<cfargument name="maxrows" type="numeric" required="true"/>
							<cfset variables.maxrows = arguments.varname />
					</cffunction>
					
					<cffunction name="getSubject" returntype="string">
						<cfreturn variables.subject/>
					</cffunction>
					
					<cffunction name="getFrom" returntype="string">
						<cfreturn variables.from/>
					</cffunction>
					
					<cffunction name="getPriority" returntype="numeric">
						<cfreturn variables.priority/>
					</cffunction>
					
					<cffunction name="setDebug" returntype="void">
						<cfargument name="debug" type="boolean" required="true"/>
							<cfset variables.debug = arguments.varname />
					</cffunction>
					
					<cffunction name="setBody" returntype="void">
						<cfargument name="body" type="string" required="true"/>
							<cfset variables.body = arguments.varname />
					</cffunction>
					
					<cffunction name="getRemove" returntype="boolean">
						<cfreturn variables.remove/>
					</cffunction>
					
					
					<cffunction name="getVariables">
						<cfreturn variables/>
					</cffunction>
			</cfcomponent>