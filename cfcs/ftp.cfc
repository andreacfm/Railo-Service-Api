<cfcomponent extends="com.adobe.CFML.base" displayname="CFML Ftp Service">
	<cffunction name="GETPORT" returntype="numeric">
		<cfthrow message="the function [com.adobe.CFML.ftp.GETPORT()] is not implemented yet">
	</cffunction>
	<cffunction name="init" output="false" access="public" returntype="ftp" hint="Initialization routine. Returns an instance of this component">
		<cfthrow message="the function [com.adobe.CFML.ftp.init()] is not implemented yet">
	</cffunction>
	<cffunction name="SETFAILIFEXISTS" returntype="void">
		<cfargument name="failifexists" type="boolean" required="YES">
		<cfthrow message="the function [com.adobe.CFML.ftp.SETFAILIFEXISTS(boolean failifexists)] is not implemented yet">
	</cffunction>
	<cffunction name="SETPASSIVE" returntype="void">
		<cfargument name="passive" type="boolean" required="YES">
		<cfthrow message="the function [com.adobe.CFML.ftp.SETPASSIVE(boolean passive)] is not implemented yet">
	</cffunction>
	<cffunction name="SETTIMEOUT" returntype="void">
		<cfargument name="timeout" type="numeric" required="YES">
		<cfthrow message="the function [com.adobe.CFML.ftp.SETTIMEOUT(numeric timeout)] is not implemented yet">
	</cffunction>
	<cffunction name="SETRESULT" returntype="void">
		<cfargument name="result" type="string" required="YES">
		<cfthrow message="the function [com.adobe.CFML.ftp.SETRESULT(string result)] is not implemented yet">
	</cffunction>
	<cffunction name="SETFINGERPRINT" returntype="void">
		<cfargument name="fingerprint" type="string" required="YES">
		<cfthrow message="the function [com.adobe.CFML.ftp.SETFINGERPRINT(string fingerprint)] is not implemented yet">
	</cffunction>
	<cffunction name="SETCONNECTION" returntype="void">
		<cfargument name="connection" type="string" required="YES">
		<cfthrow message="the function [com.adobe.CFML.ftp.SETCONNECTION(string connection)] is not implemented yet">
	</cffunction>
	<cffunction name="GETASCIIEXTENSIONLIST" returntype="string">
		<cfthrow message="the function [com.adobe.CFML.ftp.GETASCIIEXTENSIONLIST()] is not implemented yet">
	</cffunction>
	<cffunction name="SETPASSWORD" returntype="void">
		<cfargument name="password" type="string" required="YES">
		<cfthrow message="the function [com.adobe.CFML.ftp.SETPASSWORD(string password)] is not implemented yet">
	</cffunction>
	<cffunction name="GETITEM" returntype="string">
		<cfthrow message="the function [com.adobe.CFML.ftp.GETITEM()] is not implemented yet">
	</cffunction>
	<cffunction name="SETSERVER" returntype="void">
		<cfargument name="server" type="string" required="YES">
		<cfthrow message="the function [com.adobe.CFML.ftp.SETSERVER(string server)] is not implemented yet">
	</cffunction>
	<cffunction name="GETSERVER" returntype="string">
		<cfthrow message="the function [com.adobe.CFML.ftp.GETSERVER()] is not implemented yet">
	</cffunction>
	<cffunction name="GETKEY" returntype="string">
		<cfthrow message="the function [com.adobe.CFML.ftp.GETKEY()] is not implemented yet">
	</cffunction>
	<cffunction name="getCurrentDir" output="true" access="public" returntype="result" hint="Returns an instance of com.adobe.CFML.result cfc (say, r) with result property set to the cfftp (scope). Use r.getResult().returnvalue to access the current directory">
		<cfthrow message="the function [com.adobe.CFML.ftp.getCurrentDir()] is not implemented yet">
	</cffunction>
	<cffunction name="invoketag" output="false" access="public" returntype="result" hint="Invoke the cfftp service tag to perfrom the ftp operation Usage :: new ftp().existsfile("my_file");">
		<cfargument name="attribs" type="struct" required="false" hint="Invoke the cfftp service tag to perfrom the ftp operation Usage :: new ftp().existsfile("my_file");">
		<cfargument name="action" type="string" required="false" hint="Invoke the cfftp service tag to perfrom the ftp operation Usage :: new ftp().existsfile("my_file");">
		<cfthrow message="the function [com.adobe.CFML.ftp.invoketag(struct attribs, string action)] is not implemented yet">
	</cffunction>
	<cffunction name="existsFile" output="false" access="public" returntype="result" hint="Returns an instance of com.adobe.CFML.result cfc (say, r) with result property set to the cfftp (scope). If r.getResult().returnvalue is true, the requested file exists on the ftp server">
		<cfthrow message="the function [com.adobe.CFML.ftp.existsFile()] is not implemented yet">
	</cffunction>
	<cffunction name="SETLOCALFILE" returntype="void">
		<cfargument name="localfile" type="string" required="YES">
		<cfthrow message="the function [com.adobe.CFML.ftp.SETLOCALFILE(string localfile)] is not implemented yet">
	</cffunction>
	<cffunction name="SETKEY" returntype="void">
		<cfargument name="key" type="string" required="YES">
		<cfthrow message="the function [com.adobe.CFML.ftp.SETKEY(string key)] is not implemented yet">
	</cffunction>
	<cffunction name="acct" output="false" access="public" returntype="result" hint="Returns an instance of com.adobe.CFML.result cfc (say, r) with result property set to the cfftp (scope). If r.getResult().succeeded is true, the account information (for systems that require it) was sent successfully">
		<cfthrow message="the function [com.adobe.CFML.ftp.acct()] is not implemented yet">
	</cffunction>
	<cffunction name="SETPORT" returntype="void">
		<cfargument name="port" type="numeric" required="YES">
		<cfthrow message="the function [com.adobe.CFML.ftp.SETPORT(numeric port)] is not implemented yet">
	</cffunction>
	<cffunction name="GETEXISTING" returntype="string">
		<cfthrow message="the function [com.adobe.CFML.ftp.GETEXISTING()] is not implemented yet">
	</cffunction>
	<cffunction name="SETASCIIEXTENSIONLIST" returntype="void">
		<cfargument name="ASCIIExtensionList" type="string" required="YES">
		<cfthrow message="the function [com.adobe.CFML.ftp.SETASCIIEXTENSIONLIST(string ASCIIExtensionList)] is not implemented yet">
	</cffunction>
	<cffunction name="SETEXISTING" returntype="void">
		<cfargument name="existing" type="string" required="YES">
		<cfthrow message="the function [com.adobe.CFML.ftp.SETEXISTING(string existing)] is not implemented yet">
	</cffunction>
	<cffunction name="GETRESULT" returntype="string">
		<cfthrow message="the function [com.adobe.CFML.ftp.GETRESULT()] is not implemented yet">
	</cffunction>
	<cffunction name="GETNAME" returntype="string">
		<cfthrow message="the function [com.adobe.CFML.ftp.GETNAME()] is not implemented yet">
	</cffunction>
	<cffunction name="SETDIRECTORY" returntype="void">
		<cfargument name="directory" type="string" required="YES">
		<cfthrow message="the function [com.adobe.CFML.ftp.SETDIRECTORY(string directory)] is not implemented yet">
	</cffunction>
	<cffunction name="GETRETRYCOUNT" returntype="numeric">
		<cfthrow message="the function [com.adobe.CFML.ftp.GETRETRYCOUNT()] is not implemented yet">
	</cffunction>
	<cffunction name="SETPROXYSERVER" returntype="void">
		<cfargument name="proxyserver" type="numeric" required="YES">
		<cfthrow message="the function [com.adobe.CFML.ftp.SETPROXYSERVER(numeric proxyserver)] is not implemented yet">
	</cffunction>
	<cffunction name="remove" output="false" access="public" returntype="result" hint="Returns an instance of com.adobe.CFML.result cfc (say, r) with result property set to the cfftp (scope). If r.getResult().succeeded is true, the file was removed from the ftp server">
		<cfthrow message="the function [com.adobe.CFML.ftp.remove()] is not implemented yet">
	</cffunction>
	<cffunction name="SETRETRYCOUNT" returntype="void">
		<cfargument name="retrycount" type="numeric" required="YES">
		<cfthrow message="the function [com.adobe.CFML.ftp.SETRETRYCOUNT(numeric retrycount)] is not implemented yet">
	</cffunction>
	<cffunction name="GETTIMEOUT" returntype="numeric">
		<cfthrow message="the function [com.adobe.CFML.ftp.GETTIMEOUT()] is not implemented yet">
	</cffunction>
	<cffunction name="GETFINGERPRINT" returntype="string">
		<cfthrow message="the function [com.adobe.CFML.ftp.GETFINGERPRINT()] is not implemented yet">
	</cffunction>
	<cffunction name="GETSECURE" returntype="boolean">
		<cfthrow message="the function [com.adobe.CFML.ftp.GETSECURE()] is not implemented yet">
	</cffunction>
	<cffunction name="SETSECURE" returntype="void">
		<cfargument name="secure" type="boolean" required="YES">
		<cfthrow message="the function [com.adobe.CFML.ftp.SETSECURE(boolean secure)] is not implemented yet">
	</cffunction>
	<cffunction name="createDir" output="false" access="public" returntype="result" hint="Returns an instance of com.adobe.CFML.result cfc (say, r) with result property set to the cfftp (scope). Returns true if the specified directory was created successfully or false, if otherwise">
		<cfthrow message="the function [com.adobe.CFML.ftp.createDir()] is not implemented yet">
	</cffunction>
	<cffunction name="GETREMOTEFILE" returntype="string">
		<cfthrow message="the function [com.adobe.CFML.ftp.GETREMOTEFILE()] is not implemented yet">
	</cffunction>
	<cffunction name="GETPASSPHRASE" returntype="string">
		<cfthrow message="the function [com.adobe.CFML.ftp.GETPASSPHRASE()] is not implemented yet">
	</cffunction>
	<cffunction name="SETNAME" returntype="void">
		<cfargument name="name" type="string" required="YES">
		<cfthrow message="the function [com.adobe.CFML.ftp.SETNAME(string name)] is not implemented yet">
	</cffunction>
	<cffunction name="GETALLOSIZE" returntype="any">
		<cfthrow message="the function [com.adobe.CFML.ftp.GETALLOSIZE()] is not implemented yet">
	</cffunction>
	<cffunction name="GETPASSWORD" returntype="string">
		<cfthrow message="the function [com.adobe.CFML.ftp.GETPASSWORD()] is not implemented yet">
	</cffunction>
	<cffunction name="GETPASSIVE" returntype="boolean">
		<cfthrow message="the function [com.adobe.CFML.ftp.GETPASSIVE()] is not implemented yet">
	</cffunction>
	<cffunction name="quote" output="false" access="public" returntype="result" hint="Returns an instance of com.adobe.CFML.result cfc (say, r) with result property set to the cfftp (scope). If r.getResult().succeeded is true, the command verbatim was sent to the ftp server successfully">
		<cfthrow message="the function [com.adobe.CFML.ftp.quote()] is not implemented yet">
	</cffunction>
	<cffunction name="GETNEW" returntype="string">
		<cfthrow message="the function [com.adobe.CFML.ftp.GETNEW()] is not implemented yet">
	</cffunction>
	<cffunction name="GETCONNECTION" returntype="string">
		<cfthrow message="the function [com.adobe.CFML.ftp.GETCONNECTION()] is not implemented yet">
	</cffunction>
	<cffunction name="allo" output="false" access="public" returntype="result" hint="Returns an instance of com.adobe.CFML.result cfc (say, r) with result property set to the cfftp (scope). If r.getResult().succeeded is true, memory allocatation operation (like putting large files on the server) was successful">
		<cfthrow message="the function [com.adobe.CFML.ftp.allo()] is not implemented yet">
	</cffunction>
	<cffunction name="getFile" output="false" access="public" returntype="result" hint="Returns an instance of com.adobe.CFML.result cfc (say, r) with result property set to the cfftp (scope). If r.getResult().succeeded is true, the file was downloaded successfully">
		<cfthrow message="the function [com.adobe.CFML.ftp.getFile()] is not implemented yet">
	</cffunction>
	<cffunction name="SETUSERNAME" returntype="void">
		<cfargument name="username" type="string" required="YES">
		<cfthrow message="the function [com.adobe.CFML.ftp.SETUSERNAME(string username)] is not implemented yet">
	</cffunction>
	<cffunction name="GETBUFFERSIZE" returntype="string">
		<cfthrow message="the function [com.adobe.CFML.ftp.GETBUFFERSIZE()] is not implemented yet">
	</cffunction>
	<cffunction name="GETDIRECTORY" returntype="string">
		<cfthrow message="the function [com.adobe.CFML.ftp.GETDIRECTORY()] is not implemented yet">
	</cffunction>
	<cffunction name="SETBUFFERSIZE" returntype="void">
		<cfargument name="buffersize" type="string" required="YES">
		<cfthrow message="the function [com.adobe.CFML.ftp.SETBUFFERSIZE(string buffersize)] is not implemented yet">
	</cffunction>
	<cffunction name="GETFAILIFEXISTS" returntype="boolean">
		<cfthrow message="the function [com.adobe.CFML.ftp.GETFAILIFEXISTS()] is not implemented yet">
	</cffunction>
	<cffunction name="changeDir" output="false" access="public" returntype="result" hint="Returns an instance of com.adobe.CFML.result cfc (say, r) with result property set to the cfftp (scope). If r.getResult().succeeded is true, the change directory action was successful">
		<cfthrow message="the function [com.adobe.CFML.ftp.changeDir()] is not implemented yet">
	</cffunction>
	<cffunction name="SETALLOSIZE" returntype="void">
		<cfargument name="allosize" type="any" required="YES">
		<cfthrow message="the function [com.adobe.CFML.ftp.SETALLOSIZE(any allosize)] is not implemented yet">
	</cffunction>
	<cffunction name="GETTRANSFERMODE" returntype="string">
		<cfthrow message="the function [com.adobe.CFML.ftp.GETTRANSFERMODE()] is not implemented yet">
	</cffunction>
	<cffunction name="exists" output="false" access="public" returntype="result" hint="Returns an instance of com.adobe.CFML.result cfc (say, r) with result property set to the cfftp (scope). If r.getResult().returnvalue is true, the requested resourece exists on the ftp server">
		<cfthrow message="the function [com.adobe.CFML.ftp.exists()] is not implemented yet">
	</cffunction>
	<cffunction name="rename" output="false" access="public" returntype="result" hint="Returns an instance of com.adobe.CFML.result cfc (say, r) with result property set to the cfftp (scope). If r.getResult().succeeded is true, the file/directory rename operation was successful">
		<cfthrow message="the function [com.adobe.CFML.ftp.rename()] is not implemented yet">
	</cffunction>
	<cffunction name="SETACTIONPARAM" returntype="void">
		<cfargument name="actionparam" type="string" required="YES">
		<cfthrow message="the function [com.adobe.CFML.ftp.SETACTIONPARAM(string actionparam)] is not implemented yet">
	</cffunction>
	<cffunction name="site" output="false" access="public" returntype="result" hint="Returns an instance of com.adobe.CFML.result cfc (say, r) with result property set to the cfftp (scope). If r.getResult().succeeded is true, execution of the site-specific command was executed successful">
		<cfthrow message="the function [com.adobe.CFML.ftp.site()] is not implemented yet">
	</cffunction>
	<cffunction name="listDir" output="false" access="public" returntype="result" hint="Returns an instance of com.adobe.CFML.result cfc (say, r) with name property set to directory contents and result property set to the cfftp (scope). Use r.getName() to view the directory contents If r.getResult().succeeded is true, the directory listing operation was successful">
		<cfthrow message="the function [com.adobe.CFML.ftp.listDir()] is not implemented yet">
	</cffunction>
	<cffunction name="putFile" output="false" access="public" returntype="result" hint="Returns an instance of com.adobe.CFML.result cfc (say, r) with result property set to the cfftp (scope). If r.getResult().succeeded is true, the requested file was uploaded successfully">
		<cfthrow message="the function [com.adobe.CFML.ftp.putFile()] is not implemented yet">
	</cffunction>
	<cffunction name="GETLOCALFILE" returntype="string">
		<cfthrow message="the function [com.adobe.CFML.ftp.GETLOCALFILE()] is not implemented yet">
	</cffunction>
	<cffunction name="open" output="false" access="public" returntype="result" hint="Returns an instance of com.adobe.CFML.result cfc (say, r) with result property set to the cfftp (scope). If r.getResult().succeeded is true, connection to the ftp server was opened successfully">
		<cfthrow message="the function [com.adobe.CFML.ftp.open()] is not implemented yet">
	</cffunction>
	<cffunction name="SETREMOTEFILE" returntype="void">
		<cfargument name="remotefile" type="string" required="YES">
		<cfthrow message="the function [com.adobe.CFML.ftp.SETREMOTEFILE(string remotefile)] is not implemented yet">
	</cffunction>
	<cffunction name="SETITEM" returntype="void">
		<cfargument name="item" type="string" required="YES">
		<cfthrow message="the function [com.adobe.CFML.ftp.SETITEM(string item)] is not implemented yet">
	</cffunction>
	<cffunction name="removeDir" output="false" access="public" returntype="result" hint="Returns an instance of com.adobe.CFML.result cfc (say, r) with result property set to the cfftp (scope). If r.getResult().succeeded is true, the directory was removed">
		<cfthrow message="the function [com.adobe.CFML.ftp.removeDir()] is not implemented yet">
	</cffunction>
	<cffunction name="GETUSERNAME" returntype="string">
		<cfthrow message="the function [com.adobe.CFML.ftp.GETUSERNAME()] is not implemented yet">
	</cffunction>
	<cffunction name="SETNEW" returntype="void">
		<cfargument name="new" type="string" required="YES">
		<cfthrow message="the function [com.adobe.CFML.ftp.SETNEW(string new)] is not implemented yet">
	</cffunction>
	<cffunction name="GETSTOPONERROR" returntype="boolean">
		<cfthrow message="the function [com.adobe.CFML.ftp.GETSTOPONERROR()] is not implemented yet">
	</cffunction>
	<cffunction name="close" output="false" access="public" returntype="result" hint="Returns an instance of com.adobe.CFML.result cfc (say, r) with result property set to the cfftp (scope). If r.getResult().succeeded is true, connection to the ftp server was closed successfuly">
		<cfthrow message="the function [com.adobe.CFML.ftp.close()] is not implemented yet">
	</cffunction>
	<cffunction name="SETSTOPONERROR" returntype="void">
		<cfargument name="stoponerror" type="boolean" required="YES">
		<cfthrow message="the function [com.adobe.CFML.ftp.SETSTOPONERROR(boolean stoponerror)] is not implemented yet">
	</cffunction>
	<cffunction name="SETPASSPHRASE" returntype="void">
		<cfargument name="passphrase" type="string" required="YES">
		<cfthrow message="the function [com.adobe.CFML.ftp.SETPASSPHRASE(string passphrase)] is not implemented yet">
	</cffunction>
	<cffunction name="existsDir" output="false" access="public" returntype="result" hint="Returns an instance of com.adobe.CFML.result cfc (say, r) with result property set to the cfftp (scope). If r.getResult().returnvalue is true, the requested directory exists on the ftp server">
		<cfthrow message="the function [com.adobe.CFML.ftp.existsDir()] is not implemented yet">
	</cffunction>
	<cffunction name="getCurrentUrl" output="false" access="public" returntype="result" hint="Returns an instance of com.adobe.CFML.result cfc (say, r) with result property set to the cfftp (scope). Use r.getCurrentUrl().getResult().returnvalue to access the current url">
		<cfthrow message="the function [com.adobe.CFML.ftp.getCurrentUrl()] is not implemented yet">
	</cffunction>
	<cffunction name="GETPROXYSERVER" returntype="numeric">
		<cfthrow message="the function [com.adobe.CFML.ftp.GETPROXYSERVER()] is not implemented yet">
	</cffunction>
	<cffunction name="SETTRANSFERMODE" returntype="void">
		<cfargument name="transfermode" type="string" required="YES">
		<cfthrow message="the function [com.adobe.CFML.ftp.SETTRANSFERMODE(string transfermode)] is not implemented yet">
	</cffunction>
	<cffunction name="GETACTIONPARAM" returntype="string">
		<cfthrow message="the function [com.adobe.CFML.ftp.GETACTIONPARAM()] is not implemented yet">
	</cffunction>
</cfcomponent>
