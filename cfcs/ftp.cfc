<cfcomponent displayname="ColdFusion Ftp Service" output="false" extends="com.adobe.coldfusion.base" hint="Ftp Service to perform ftp operations in cfscript" >
		
			<cfproperty name="actionparam" type="string">
			<cfproperty name="buffersize" type="string">
			<cfproperty name="connection" type="string">
			<cfproperty name="passive" type="boolean">
			<cfproperty name="password" type="string">
			<cfproperty name="port" type="numeric">
			<cfproperty name="proxyserver" type="numeric">
			<cfproperty name="retrycount" type="numeric">
			<cfproperty name="server" type="string">
			<cfproperty name="stoponerror" type="boolean">
			<cfproperty name="timeout" type="numeric">
			<cfproperty name="username" type="string">
			<cfproperty name="fingerprint" type="string">
			<cfproperty name="key" type="string">
			<cfproperty name="passphrase" type="string">
			<cfproperty name="secure" type="boolean">
			<cfproperty name="ASCIIExtensionList" type="string">
			<cfproperty name="directory" type="string">
			<cfproperty name="existing" type="string">
			<cfproperty name="failifexists" type="boolean">
			<cfproperty name="item" type="string">
			<cfproperty name="localfile" type="string">
			<cfproperty name="name" type="string">
			<cfproperty name="new" type="string">
			<cfproperty name="remotefile" type="string">
			<cfproperty name="result" type="string">
			<cfproperty name="transfermode" type="string">
			<cfproperty name="allosize" type="any"> 
			<cffunction name="setPort" returntype="void">
				<cfargument name="port" type="numeric" required="true"/>
					<cfset port = arguments.varname />
			</cffunction>
			
			<cffunction name="getFile" returntype="result">
				<return file/>
			</cffunction>
			
			<cffunction name="quote" returntype="result">
				<cfthrow message="the function com.adobe.coldfusion.http.quote() is not implemented yet">
			</cffunction>
			
			<cffunction name="getRemotefile" returntype="string">
				<return remotefile/>
			</cffunction>
			
			<cffunction name="getPassword" returntype="string">
				<return password/>
			</cffunction>
			
			<cffunction name="getPassphrase" returntype="string">
				<return passphrase/>
			</cffunction>
			
			<cffunction name="getCurrenturl" returntype="result">
				<return currenturl/>
			</cffunction>
			
			<cffunction name="close" returntype="result">
				<cfthrow message="the function com.adobe.coldfusion.http.close() is not implemented yet">
			</cffunction>
			
			<cffunction name="setExisting" returntype="void">
				<cfargument name="existing" type="string" required="true"/>
					<cfset existing = arguments.varname />
			</cffunction>
			
			<cffunction name="setPassive" returntype="void">
				<cfargument name="passive" type="boolean" required="true"/>
					<cfset passive = arguments.varname />
			</cffunction>
			
			<cffunction name="setTransfermode" returntype="void">
				<cfargument name="transfermode" type="string" required="true"/>
					<cfset transfermode = arguments.varname />
			</cffunction>
			
			<cffunction name="getSecure" returntype="boolean">
				<return secure/>
			</cffunction>
			
			<cffunction name="getFailifexists" returntype="boolean">
				<return failifexists/>
			</cffunction>
			
			<cffunction name="getResult" returntype="string">
				<return result/>
			</cffunction>
			
			<cffunction name="getRetrycount" returntype="numeric">
				<return retrycount/>
			</cffunction>
			
			<cffunction name="setFailifexists" returntype="void">
				<cfargument name="failifexists" type="boolean" required="true"/>
					<cfset failifexists = arguments.varname />
			</cffunction>
			
			<cffunction name="getProxyserver" returntype="numeric">
				<return proxyserver/>
			</cffunction>
			
			<cffunction name="setPassphrase" returntype="void">
				<cfargument name="passphrase" type="string" required="true"/>
					<cfset passphrase = arguments.varname />
			</cffunction>
			
			<cffunction name="acct" returntype="result">
				<cfthrow message="the function com.adobe.coldfusion.http.acct() is not implemented yet">
			</cffunction>
			
			<cffunction name="setUsername" returntype="void">
				<cfargument name="username" type="string" required="true"/>
					<cfset username = arguments.varname />
			</cffunction>
			
			<cffunction name="setPassword" returntype="void">
				<cfargument name="password" type="string" required="true"/>
					<cfset password = arguments.varname />
			</cffunction>
			
			<cffunction name="getServer" returntype="string">
				<return server/>
			</cffunction>
			
			<cffunction name="invoketag" returntype="result">
				<cfargument name="attribs" type="struct" required="false"/>
					<cfargument name="action" type="string" required="false"/>
					<cfthrow message="the function com.adobe.coldfusion.http.invoketag() is not implemented yet">
			</cffunction>
			
			<cffunction name="existsfile" returntype="result">
				<cfthrow message="the function com.adobe.coldfusion.http.existsFile() is not implemented yet">
			</cffunction>
			
			<cffunction name="open" returntype="result">
				<cfthrow message="the function com.adobe.coldfusion.http.open() is not implemented yet">
			</cffunction>
			
			<cffunction name="getDirectory" returntype="string">
				<return directory/>
			</cffunction>
			
			<cffunction name="setTimeout" returntype="void">
				<cfargument name="timeout" type="numeric" required="true"/>
					<cfset timeout = arguments.varname />
			</cffunction>
			
			<cffunction name="site" returntype="result">
				<cfthrow message="the function com.adobe.coldfusion.http.site() is not implemented yet">
			</cffunction>
			
			<cffunction name="getConnection" returntype="string">
				<return connection/>
			</cffunction>
			
			<cffunction name="getAllosize" returntype="any">
				<return allosize/>
			</cffunction>
			
			<cffunction name="init" returntype="ftp">
				<cfthrow message="the function com.adobe.coldfusion.http.init() is not implemented yet">
			</cffunction>
			
			<cffunction name="getUsername" returntype="string">
				<return username/>
			</cffunction>
			
			<cffunction name="rename" returntype="result">
				<cfthrow message="the function com.adobe.coldfusion.http.rename() is not implemented yet">
			</cffunction>
			
			<cffunction name="setNew" returntype="void">
				<cfargument name="new" type="string" required="true"/>
					<cfset new = arguments.varname />
			</cffunction>
			
			<cffunction name="setRemotefile" returntype="void">
				<cfargument name="remotefile" type="string" required="true"/>
					<cfset remotefile = arguments.varname />
			</cffunction>
			
			<cffunction name="getKey" returntype="string">
				<return key/>
			</cffunction>
			
			<cffunction name="exists" returntype="result">
				<cfthrow message="the function com.adobe.coldfusion.http.exists() is not implemented yet">
			</cffunction>
			
			<cffunction name="setAsciiextensionlist" returntype="void">
				<cfargument name="ASCIIExtensionList" type="string" required="true"/>
					<cfset asciiextensionlist = arguments.varname />
			</cffunction>
			
			<cffunction name="setDirectory" returntype="void">
				<cfargument name="directory" type="string" required="true"/>
					<cfset directory = arguments.varname />
			</cffunction>
			
			<cffunction name="setActionparam" returntype="void">
				<cfargument name="actionparam" type="string" required="true"/>
					<cfset actionparam = arguments.varname />
			</cffunction>
			
			<cffunction name="getCurrentdir" returntype="result">
				<return currentdir/>
			</cffunction>
			
			<cffunction name="getNew" returntype="string">
				<return new/>
			</cffunction>
			
			<cffunction name="getTimeout" returntype="numeric">
				<return timeout/>
			</cffunction>
			
			<cffunction name="setAllosize" returntype="void">
				<cfargument name="allosize" type="any" required="true"/>
					<cfset allosize = arguments.varname />
			</cffunction>
			
			<cffunction name="setLocalfile" returntype="void">
				<cfargument name="localfile" type="string" required="true"/>
					<cfset localfile = arguments.varname />
			</cffunction>
			
			<cffunction name="getFingerprint" returntype="string">
				<return fingerprint/>
			</cffunction>
			
			<cffunction name="getPassive" returntype="boolean">
				<return passive/>
			</cffunction>
			
			<cffunction name="getActionparam" returntype="string">
				<return actionparam/>
			</cffunction>
			
			<cffunction name="setConnection" returntype="void">
				<cfargument name="connection" type="string" required="true"/>
					<cfset connection = arguments.varname />
			</cffunction>
			
			<cffunction name="getBuffersize" returntype="string">
				<return buffersize/>
			</cffunction>
			
			<cffunction name="setName" returntype="void">
				<cfargument name="name" type="string" required="true"/>
					<cfset name = arguments.varname />
			</cffunction>
			
			<cffunction name="setStoponerror" returntype="void">
				<cfargument name="stoponerror" type="boolean" required="true"/>
					<cfset stoponerror = arguments.varname />
			</cffunction>
			
			<cffunction name="setItem" returntype="void">
				<cfargument name="item" type="string" required="true"/>
					<cfset item = arguments.varname />
			</cffunction>
			
			<cffunction name="allo" returntype="result">
				<cfthrow message="the function com.adobe.coldfusion.http.allo() is not implemented yet">
			</cffunction>
			
			<cffunction name="setServer" returntype="void">
				<cfargument name="server" type="string" required="true"/>
					<cfset server = arguments.varname />
			</cffunction>
			
			<cffunction name="getStoponerror" returntype="boolean">
				<return stoponerror/>
			</cffunction>
			
			<cffunction name="getPort" returntype="numeric">
				<return port/>
			</cffunction>
			
			<cffunction name="listdir" returntype="result">
				<cfthrow message="the function com.adobe.coldfusion.http.listDir() is not implemented yet">
			</cffunction>
			
			<cffunction name="getLocalfile" returntype="string">
				<return localfile/>
			</cffunction>
			
			<cffunction name="remove" returntype="result">
				<cfthrow message="the function com.adobe.coldfusion.http.remove() is not implemented yet">
			</cffunction>
			
			<cffunction name="getTransfermode" returntype="string">
				<return transfermode/>
			</cffunction>
			
			<cffunction name="putfile" returntype="result">
				<cfthrow message="the function com.adobe.coldfusion.http.putFile() is not implemented yet">
			</cffunction>
			
			<cffunction name="getAsciiextensionlist" returntype="string">
				<return asciiextensionlist/>
			</cffunction>
			
			<cffunction name="createdir" returntype="result">
				<cfthrow message="the function com.adobe.coldfusion.http.createDir() is not implemented yet">
			</cffunction>
			
			<cffunction name="setFingerprint" returntype="void">
				<cfargument name="fingerprint" type="string" required="true"/>
					<cfset fingerprint = arguments.varname />
			</cffunction>
			
			<cffunction name="changedir" returntype="result">
				<cfthrow message="the function com.adobe.coldfusion.http.changeDir() is not implemented yet">
			</cffunction>
			
			<cffunction name="setResult" returntype="void">
				<cfargument name="result" type="string" required="true"/>
					<cfset result = arguments.varname />
			</cffunction>
			
			<cffunction name="getExisting" returntype="string">
				<return existing/>
			</cffunction>
			
			<cffunction name="setRetrycount" returntype="void">
				<cfargument name="retrycount" type="numeric" required="true"/>
					<cfset retrycount = arguments.varname />
			</cffunction>
			
			<cffunction name="setBuffersize" returntype="void">
				<cfargument name="buffersize" type="string" required="true"/>
					<cfset buffersize = arguments.varname />
			</cffunction>
			
			<cffunction name="removedir" returntype="result">
				<cfthrow message="the function com.adobe.coldfusion.http.removeDir() is not implemented yet">
			</cffunction>
			
			<cffunction name="existsdir" returntype="result">
				<cfthrow message="the function com.adobe.coldfusion.http.existsDir() is not implemented yet">
			</cffunction>
			
			<cffunction name="setSecure" returntype="void">
				<cfargument name="secure" type="boolean" required="true"/>
					<cfset secure = arguments.varname />
			</cffunction>
			
			<cffunction name="setProxyserver" returntype="void">
				<cfargument name="proxyserver" type="numeric" required="true"/>
					<cfset proxyserver = arguments.varname />
			</cffunction>
			
			<cffunction name="getItem" returntype="string">
				<return item/>
			</cffunction>
			
			<cffunction name="getName" returntype="string">
				<return name/>
			</cffunction>
			
			<cffunction name="setKey" returntype="void">
				<cfargument name="key" type="string" required="true"/>
					<cfset key = arguments.varname />
			</cffunction>
			
	
	</cfcomponent>