
<cffunction name="generateAdminApiCFC" output="yes">
	<cfargument name="path">
	<cfargument name="name">
	<cfset var cfc=createObject('component',name)>
    <cfset var meta=GetMetaData(cfc)>
    <cfset var leth="<">
    <cfset var nl="
">
	<cfset var args="">
    <cfset var content="">
	<cfset content='#leth#cfcomponent extends="#meta.extends.fullname#" displayname="#meta.displayname#">#nl#'>
    <cfloop index="function" array="#meta.functions#">
        <cfset content=content&'	#leth#cffunction#attr(function,'name')##attr(function,'output')##attr(function,'access')##attr(function,'returntype')##attr(function,'hint')#>#nl#'>
        <cfset args="">
        <cfloop index="arg" array="#function.parameters#">
                <cfset content=content&'		#leth#cfargument#attr(arg,'name')##attr(arg,'type')##attr(arg,'required')##attr(function,'default')##attr(function,'hint')#>#nl#'>
                <cfset args=args&", "&getType(arg)&arg.name>
        </cfloop>
        <cfif len(args)><cfset args=mid(args,3,100000)></cfif>
        <cfset content=content&'		#leth#cfthrow message="the function [#name#.#function.name#(#args#)] is not implemented yet">#nl#'>
        
        <cfset content=content&'	#leth#/cffunction>#nl#'>
    </cfloop>
    <cfset content=content&'#leth#/cfcomponent>#nl#'>
    
    <cfset content=ReplaceNoCase(content,'coldfusion','CFML','all')>
    <!--- <cfif FindNoCase("Adobe",content)><cfthrow message="#content#"></cfif>--->
    
    <pre>#content#-#replace(content,'<','&lt;','all')#</pre>
    <cffile action="write" addnewline="no" file="#path##listLast(name,'.')#.cfc" output="#content#" fixnewline="no">
</cffunction>

<cffunction name="attr" output="no" returntype="string">
	<cfargument name="sct" type="struct" required="yes">
	<cfargument name="name" type="string" required="yes">
	<cfif StructKeyExists(sct,name)>
    	<cfreturn ' '&name&'="'&sct[name]&'"'> 
    </cfif>
    <cfreturn "">
</cffunction>

<cffunction name="getType" output="no" returntype="string">
	<cfargument name="sct" type="struct" required="yes">
	<cfif StructKeyExists(sct,'type')>
    	<cfreturn sct['type']&" "> 
    </cfif>
    <cfreturn "">
</cffunction>

<cfset path="/Users/mic/Temp/cfcs/">
<cfif not DirectoryExists(path)><cfdirectory directory="#path#" action="create" mode="777"></cfif>

<cfset generateAdminApiCFC(path,'com.adobe.coldfusion.base')>
<cfset generateAdminApiCFC(path,'com.adobe.coldfusion.ftp')>
<cfset generateAdminApiCFC(path,'com.adobe.coldfusion.http')>
<cfset generateAdminApiCFC(path,'com.adobe.coldfusion.mail')>
<cfset generateAdminApiCFC(path,'com.adobe.coldfusion.pdf')>
<cfset generateAdminApiCFC(path,'com.adobe.coldfusion.query')>
<cfset generateAdminApiCFC(path,'com.adobe.coldfusion.result')>
<cfset generateAdminApiCFC(path,'com.adobe.coldfusion.storedproc')>
<cfset generateAdminApiCFC(path,'com.adobe.coldfusion.storedprocresult')>



