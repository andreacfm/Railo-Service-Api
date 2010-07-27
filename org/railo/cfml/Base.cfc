<cfcomponent displayname="base" accessors="true">

	<cfproperty type="String" name="tagName">
	<cfproperty type="Array" name="params" >
	<cfproperty type="Array" name="parts" >
	<cfproperty type="Struct" name="attributes" >

	<cfscript>
	/*
	 * Store the attributes added to the instance 
	 */
	variables.attributes = {};
	
	/*
 	 * Internal params storage
 	 */	 
	variables.params = [];	
	variables.parts = [];
	variables.tagname = "";			
	</cfscript>
	
	<!--- 
	init
	 --->
	<cffunction name="init" returntype="Base" access="public" output="false">
		<cfscript>
		setAttributes(arguments);
		return this;		
		</cfscript>		
	</cffunction>

	
	<!--- 
	addParam
	 --->
	<cffunction name="addParam" returntype="Base" output="false" access="public" 
				hint="Add a new param">
		<cfscript>
		ArrayAppend(variables.params,arguments);
		return this;		
		</cfscript>
	</cffunction>


	<!--- 
	clearParams
	 --->
	<cffunction name="clearParams" returntype="Base" output="false" access="public" hint="Clear the stored params Array">
		<cfscript>
		variables.params = [];
		return this;	
		</cfscript>	
	</cffunction>

	<!--- 
	addPart
	 --->
	<cffunction name="addPart" returntype="Base" output="false" access="public">
		<cfscript>
		ArrayAppend(variables.parts,arguments.params);
		return this;		
		</cfscript>
	</cffunction>	

	<!--- 
	clearParts
	 --->
	<cffunction name="clearParts" returntype="Base" output="false" access="public">
		<cfscript>
		variables.parts = [];
	    return this;		
		</cfscript>
	</cffunction>	

	<!--- 
	addAttributes
	 --->
	<cffunction name="addAttributes" returntype="Base" output="false" access="public">
		<cfargument name="attributes" type="struct" required="true">
		<cfscript>
		if(structCount(arguments.attributes)){
			StructAppend(variables.attributes, arguments, true);
		}
		return this;		
		</cfscript>
	</cffunction>

	<!--- 
	clearAttributes
	 --->
	<cffunction name="clearAttributes" returntype="Base" output="false" access="public">
		<cfscript>
		variables.attributes = {};
		return this;		
		</cfscript>
	</cffunction>

	<!--- 
	clear
	 --->
	<cffunction name="clear" returntype="Base" output="false" access="public">
		<cfscript>
		clearAttributes();
		clearParams();
		clearParts();
		return this;		
		</cfscript>
	</cffunction>	

	<!--- 
	getSupportedTagAttributes
	 --->
	<cffunction name="getSupportedTagAttributes" returntype="Struct" output="false" access="public">
		<cfscript>
		return getTagData("cf",getTagName());
		</cfscript>
	</cffunction>	
	
	<!--- 
	invoke Tag 
	--->
	<cffunction name="invokeTag" output="true" access="private" returntype="any" hint="invokes the service tag">
		<cfset var tagname = getTagName()>
		<cfset var tagAttributes = getAttributes()>
		<cfset var tagParams = getParams()>	
		<cfset var resultVar = "">
		<cfset var result = new Result()>
		<cfset var tagResult = "">
		
		<cfswitch expression="#tagname#">
			
			<!--- cfquery --->
			<cfcase value="query">
				
				<!--- give a default name if no name is provided --->
				<cfset tagAttributes.name = structKeyExists(tagAttributes,'name') ? tagAttributes.name : 'q'>
				
				<cfquery attributeCollection="#tagAttributes#" result="tagResult">
					#this.getSql()#
				</cfquery>
				
				<cfset result.setResult(q)>			
				<cfset result.setPrefix(tagResult)>
				
				<cfreturn result>
			</cfcase>
			
			<!--- cfhttp --->
			<cfcase value="http">
				<cfhttp attributeCollection="#tagAttributes#" result="resultVar">
					<cfloop array="#tagParams#" index="param">
						<cfhttpParam attributeCollection="#param#">
					</cfloop>
				</cfhttp>
				<cfif structkeyexists(tagAttributes,"name") and tagAttributes["name"] neq "">
	                  <cfset result.setResult(StructFind(variables,tagAttributes["name"]))>
				<cfelse>
					<cfset result.setResult(resultVar)>
				</cfif>
				<cfset result.setPrefix(resultVar)>
			</cfcase>
			
			<!--- cfmail --->
			<cfcase value="mail">
				<cfset var body = "">
				<cfif StructKeyExists(tagAttributes, "body")>
					<cfset body = tagAttributes.body>
					<cfset Structdelete(tagAttributes, "body")>
				</cfif>
				<cfmail attributeCollection="#tagAttributes#">#body#							
				<cfloop array="#tagParams#" index="param">
                        <cfmailparam attributeCollection="#param#">
                  </cfloop>
				
				<cfloop array="#variables.parts#" index="part">
					<cfset partbody = "">
                        <cfif structkeyexists(part,"body")>
                             <cfset partbody = part["body"]>
                             <cfset structdelete(part,"body")>
                        </cfif>
                        <cfmailpart attributeCollection="#part#">
                            #partbody#
                        </cfmailpart>
                    </cfloop>
				</cfmail>
			
				<cfreturn this/>
			</cfcase>
		
		
		</cfswitch>
		
		<cfreturn result>
				
	</cffunction>
	
	<!--- 
	appendAllowExtraAttributes
	 --->
	<cffunction name="appendAllowExtraAttributes" output="false" access="private" returntype="array" hint="Validate against any incorrect attributes passed to the child tags. This is done by passing allowExtraAttributes=false">
		<cfargument name="params" type="array" required="false" hint="Validate against any incorrect attributes passed to the child tags. This is done by passing allowExtraAttributes=false">
		<cfthrow message="the function [com.adobe.CFML.base.appendAllowExtraAttributes(array params)] is not implemented yet">
	</cffunction>
	
	
	<!--- 
	onMissingMethod
	 --->	
	<cffunction name="onMissingMethod" output="false" access="public" returntype="any"
				hint="Allow general get() set() method on the attributes struct and on extra values ( like mail body )">
		<cfargument name="methodname" type="string">
		<cfargument name="methodArguments" type="Array">
		
		<cfscript>
			var attrName = Right(methodname, Len(methodname)-3);
			var methodType = Left(methodname, 3);
			var tagname = getTagName();
			var supportedTagAttributes = getSupportedTagAttributes();
			var tagAttributes = getAttributes();
			
			var lAllowedExtra = "";
			
			switch(tagName){
				case "mail":
					lAllowedExtra = "body";
				case "query":
					lAllowedExtra = "sql";	
				break;
			
			}
			
			if(methodType EQ "get" && (StructKeyExists(supportedTagAttributes, attrName) || ListFindNoCase(lAllowedExtra, attrName))){
				if(StructKeyExists(tagAttributes, attrName)){
					return tagAttributes[attrName];
				}
				else{
					return "";
				}
			}
	
			
			if(methodType EQ "set" && (StructKeyExists(getSupportedTagAttributes(), attrName) || ListFindNoCase(lAllowedExtra, attrName))){
				variables.attributes[attrName] = methodArguments[1];
				return this;
			}
			
			throw("There is no method with the name #methodName#", "expression");
	
		</cfscript>

	</cffunction>	
	
</cfcomponent>
