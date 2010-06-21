<cfcomponent displayname="ColdFusion HTTP Service" output="false" extends="com.adobe.coldfusion.base" hint="Http Service to generates an HTTP request and handle the response from the server" >
		
			<cfproperty name="url" type="string">
			<cfproperty name="charset" type="string">
			<cfproperty name="clientcert" type="string">
			<cfproperty name="clientcertpassword" type="string">
			<cfproperty name="columns" type="string">
			<cfproperty name="delimiter" type="string">
			<cfproperty name="file" type="string">
			<cfproperty name="firstrowasheaders" type="boolean">
			<cfproperty name="getasbinary" type="string">
			<cfproperty name="method" type="string">
			<cfproperty name="multipart" type="boolean">
			<cfproperty name="multiparttype" type="string">
			<cfproperty name="name" type="string">
			<cfproperty name="password" type="string">
			<cfproperty name="path" type="string">
			<cfproperty name="port" type="numeric">
			<cfproperty name="proxyserver" type="string">
			<cfproperty name="proxyport" type="numeric">
			<cfproperty name="proxyuser" type="string">
			<cfproperty name="proxypassword" type="string">
			<cfproperty name="redirect" type="boolean">
			<cfproperty name="resolveurl" type="boolean">
			<cfproperty name="result" type="string">
			<cfproperty name="textqualifier" type="string">
			<cfproperty name="throwonerror" type="boolean">
			<cfproperty name="timeout" type="numeric">
			<cfproperty name="useragent" type="string">
			<cfproperty name="username" type="string"> 
			<cffunction name="setClientcertpassword" returntype="void">
				<cfargument name="clientcertpassword" type="string" required="true"/>
					<cfset clientcertpassword = arguments.varname />
			</cffunction>
			
			<cffunction name="setUseragent" returntype="void">
				<cfargument name="useragent" type="string" required="true"/>
					<cfset useragent = arguments.varname />
			</cffunction>
			
			<cffunction name="getPassword" returntype="string">
				<return password/>
			</cffunction>
			
			<cffunction name="getPort" returntype="numeric">
				<return port/>
			</cffunction>
			
			<cffunction name="setTimeout" returntype="void">
				<cfargument name="timeout" type="numeric" required="true"/>
					<cfset timeout = arguments.varname />
			</cffunction>
			
			<cffunction name="setName" returntype="void">
				<cfargument name="name" type="string" required="true"/>
					<cfset name = arguments.varname />
			</cffunction>
			
			<cffunction name="getProxyserver" returntype="string">
				<return proxyserver/>
			</cffunction>
			
			<cffunction name="setColumns" returntype="void">
				<cfargument name="columns" type="string" required="true"/>
					<cfset columns = arguments.varname />
			</cffunction>
			
			<cffunction name="setUrl" returntype="void">
				<cfargument name="url" type="string" required="true"/>
					<cfset url = arguments.varname />
			</cffunction>
			
			<cffunction name="setResult" returntype="void">
				<cfargument name="result" type="string" required="true"/>
					<cfset result = arguments.varname />
			</cffunction>
			
			<cffunction name="getColumns" returntype="string">
				<return columns/>
			</cffunction>
			
			<cffunction name="getResolveurl" returntype="boolean">
				<return resolveurl/>
			</cffunction>
			
			<cffunction name="getMultipart" returntype="boolean">
				<return multipart/>
			</cffunction>
			
			<cffunction name="getProxyport" returntype="numeric">
				<return proxyport/>
			</cffunction>
			
			<cffunction name="setRedirect" returntype="void">
				<cfargument name="redirect" type="boolean" required="true"/>
					<cfset redirect = arguments.varname />
			</cffunction>
			
			<cffunction name="setProxyport" returntype="void">
				<cfargument name="proxyport" type="numeric" required="true"/>
					<cfset proxyport = arguments.varname />
			</cffunction>
			
			<cffunction name="setResolveurl" returntype="void">
				<cfargument name="resolveurl" type="boolean" required="true"/>
					<cfset resolveurl = arguments.varname />
			</cffunction>
			
			<cffunction name="setClientcert" returntype="void">
				<cfargument name="clientcert" type="string" required="true"/>
					<cfset clientcert = arguments.varname />
			</cffunction>
			
			<cffunction name="getName" returntype="string">
				<return name/>
			</cffunction>
			
			<cffunction name="setThrowonerror" returntype="void">
				<cfargument name="throwonerror" type="boolean" required="true"/>
					<cfset throwonerror = arguments.varname />
			</cffunction>
			
			<cffunction name="setMultiparttype" returntype="void">
				<cfargument name="multiparttype" type="string" required="true"/>
					<cfset multiparttype = arguments.varname />
			</cffunction>
			
			<cffunction name="getMethod" returntype="string">
				<return method/>
			</cffunction>
			
			<cffunction name="getPath" returntype="string">
				<return path/>
			</cffunction>
			
			<cffunction name="getUrl" returntype="string">
				<return url/>
			</cffunction>
			
			<cffunction name="getCharset" returntype="string">
				<return charset/>
			</cffunction>
			
			<cffunction name="setPort" returntype="void">
				<cfargument name="port" type="numeric" required="true"/>
					<cfset port = arguments.varname />
			</cffunction>
			
			<cffunction name="setDelimiter" returntype="void">
				<cfargument name="delimiter" type="string" required="true"/>
					<cfset delimiter = arguments.varname />
			</cffunction>
			
			<cffunction name="setCharset" returntype="void">
				<cfargument name="charset" type="string" required="true"/>
					<cfset charset = arguments.varname />
			</cffunction>
			
			<cffunction name="getMultiparttype" returntype="string">
				<return multiparttype/>
			</cffunction>
			
			<cffunction name="setPath" returntype="void">
				<cfargument name="path" type="string" required="true"/>
					<cfset path = arguments.varname />
			</cffunction>
			
			<cffunction name="getFirstrowasheaders" returntype="boolean">
				<return firstrowasheaders/>
			</cffunction>
			
			<cffunction name="getProxypassword" returntype="string">
				<return proxypassword/>
			</cffunction>
			
			<cffunction name="getRedirect" returntype="boolean">
				<return redirect/>
			</cffunction>
			
			<cffunction name="getDelimiter" returntype="string">
				<return delimiter/>
			</cffunction>
			
			<cffunction name="setMethod" returntype="void">
				<cfargument name="method" type="string" required="true"/>
					<cfset method = arguments.varname />
			</cffunction>
			
			<cffunction name="setPassword" returntype="void">
				<cfargument name="password" type="string" required="true"/>
					<cfset password = arguments.varname />
			</cffunction>
			
			<cffunction name="getTextqualifier" returntype="string">
				<return textqualifier/>
			</cffunction>
			
			<cffunction name="getResult" returntype="string">
				<return result/>
			</cffunction>
			
			<cffunction name="getUseragent" returntype="string">
				<return useragent/>
			</cffunction>
			
			<cffunction name="getClientcertpassword" returntype="string">
				<return clientcertpassword/>
			</cffunction>
			
			<cffunction name="getThrowonerror" returntype="boolean">
				<return throwonerror/>
			</cffunction>
			
			<cffunction name="getUsername" returntype="string">
				<return username/>
			</cffunction>
			
			<cffunction name="getGetasbinary" returntype="string">
				<return getasbinary/>
			</cffunction>
			
			<cffunction name="send" returntype="result">
				<cfthrow message="the function com.adobe.coldfusion.http.send() is not implemented yet">
			</cffunction>
			
			<cffunction name="getFile" returntype="string">
				<return file/>
			</cffunction>
			
			<cffunction name="setUsername" returntype="void">
				<cfargument name="username" type="string" required="true"/>
					<cfset username = arguments.varname />
			</cffunction>
			
			<cffunction name="setTextqualifier" returntype="void">
				<cfargument name="textqualifier" type="string" required="true"/>
					<cfset textqualifier = arguments.varname />
			</cffunction>
			
			<cffunction name="getProxyuser" returntype="string">
				<return proxyuser/>
			</cffunction>
			
			<cffunction name="setGetasbinary" returntype="void">
				<cfargument name="getasbinary" type="string" required="true"/>
					<cfset getasbinary = arguments.varname />
			</cffunction>
			
			<cffunction name="setFirstrowasheaders" returntype="void">
				<cfargument name="firstrowasheaders" type="boolean" required="true"/>
					<cfset firstrowasheaders = arguments.varname />
			</cffunction>
			
			<cffunction name="getTimeout" returntype="numeric">
				<return timeout/>
			</cffunction>
			
			<cffunction name="setProxyserver" returntype="void">
				<cfargument name="proxyserver" type="string" required="true"/>
					<cfset proxyserver = arguments.varname />
			</cffunction>
			
			<cffunction name="setMultipart" returntype="void">
				<cfargument name="multipart" type="boolean" required="true"/>
					<cfset multipart = arguments.varname />
			</cffunction>
			
			<cffunction name="getClientcert" returntype="string">
				<return clientcert/>
			</cffunction>
			
			<cffunction name="setProxypassword" returntype="void">
				<cfargument name="proxypassword" type="string" required="true"/>
					<cfset proxypassword = arguments.varname />
			</cffunction>
			
			<cffunction name="init" returntype="http">
				<cfthrow message="the function com.adobe.coldfusion.http.init() is not implemented yet">
			</cffunction>
			
			<cffunction name="setFile" returntype="void">
				<cfargument name="file" type="string" required="true"/>
					<cfset file = arguments.varname />
			</cffunction>
			
			<cffunction name="setProxyuser" returntype="void">
				<cfargument name="proxyuser" type="string" required="true"/>
					<cfset proxyuser = arguments.varname />
			</cffunction>
			
	
	</cfcomponent>