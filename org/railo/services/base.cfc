<cfcomponent displayname="base">
	<cfscript>
		variables.attributes = {};
		variables.params = [];
		variables.parts = [];
	</cfscript>

	<cffunction name="getAttributes" output="false" access="public" returntype="struct" hint="Returns a struct with all/some of the service tag attribute values. If no attributes are specified, it returns a CFML with all service tag attribute values">
		<cfargument name="attribs" type="string" required="false" hint="Returns a struct with all/some of the service tag attribute values. If no attributes are specified, it returns a CFML with all service tag attribute values">
		<cfthrow message="the function [com.adobe.CFML.base.getAttributes(string attribs)] is not implemented yet">
	</cffunction>
	
	
	<cffunction name="clearAttribute" output="false" access="private" returntype="void" hint="Removes a specific service tag attribute from CFC variables scope. Invoked by clearAttributes()">
		<cfargument name="tagAttributesStruct" type="struct" required="false" hint="Removes a specific service tag attribute from CFC variables scope. Invoked by clearAttributes()">
		<cfargument name="tagAttribute" type="string" required="false" hint="Removes a specific service tag attribute from CFC variables scope. Invoked by clearAttributes()">
		<cfthrow message="the function [com.adobe.CFML.base.clearAttribute(struct tagAttributesStruct, string tagAttribute)] is not implemented yet">
	</cffunction>
	
	
	<cffunction name="clear" output="false" access="public" returntype="void" hint="Removes service tag attributes">
		<cfthrow message="the function [com.adobe.CFML.base.clear()] is not implemented yet">
	</cffunction>
	
	
	<cffunction name="setAttributes" output="false" access="public" returntype="void" hint="Set service tag attributes.">
		<cfthrow message="the function [com.adobe.CFML.base.setAttributes()] is not implemented yet">
	</cffunction>
	
	<cffunction name="setTagName" output="false" access="private" returntype="void" hint="Set the name of the service tag to be invoked">
		<cfargument name="tagName" type="string" required="false" hint="Set the name of the service tag to be invoked">
			<cfset variables.tagName = arguments.tagName />
	</cffunction>
	
	<cffunction name="getTagName" output="false" access="public" returntype="string" hint="Get the name of the service tag">
		<cfreturn variables.tagname />
	</cffunction>
	
	<cffunction name="getSupportedTagAttributes" output="false" access="public" returntype="struct" hint="pass in a tag name and it returns the attributes that it can possibly support">
			<cfset var attribs = getTagData("cf",this.getTagName())>
			<cfreturn attribs.attributes>
	</cffunction>
	
	
	<cffunction name="invokeTag" output="true" access="private" returntype="any" hint="invokes the service tag">
		<cfargument name="tagName" type="string" hint="invokes the service tag">
		<cfargument name="tagAttributes" type="struct" hint="invokes the service tag">
		<cfargument name="tagParams" type="struct" required="no" hint="invokes the service tag">
			
		<cfset var resultVar = "">
		<cfset var result = new Result()>
		<cfset var tagAttributes = getTagAttributes()>
		
		
		<cfswitch expression="#tagname#">
			<cfcase value="http">
				<cfhttp attributeCollection="#getTagAttributes()#" result="resultVar">
					<cfloop array="#variables.params#" index="param">
						<cfhttpParam attributeCollection="#param#">
					</cfloop>
				</cfhttp>
				<cfif structkeyexists(tagAttributes,"name") and tagAttributes["name"] neq "">
	                  <cfset result.setResult(StructFind(variables,tagAttributes["name"]))>
				<cfelse>
					<cfset result.setResult(resultVar)>
				</cfif>
				<cfset result.setPrefix(resultVar)>
				<cfreturn result />
			</cfcase>
			<cfcase value="mail">
				<cfset var body = "">
				<cfif StructKeyExists(tagAttributes, "body")>
					<cfset body = tagAttributes.body>
					<cfset Structdelete(tagAttributes, "body")>
				</cfif>
				<cfmail attributeCollection="#tagAttributes#">#body#							
				<cfloop array="#variables.params#" index="param">
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
		
		
		<cfthrow message="the function [com.adobe.CFML.base.invokeTag(string tagName, struct tagAttributes, struct tagParams)] is not implemented yet for #tagName#">
		
		
		
	</cffunction>
	<cffunction name="clearParams" output="false" access="public" returntype="void" hint="Resets child tags by resetting the parameters array">
		<cfthrow message="the function [com.adobe.CFML.base.clearParams()] is not implemented yet">
	</cffunction>
	<cffunction name="appendAllowExtraAttributes" output="false" access="private" returntype="array" hint="Validate against any incorrect attributes passed to the child tags. This is done by passing allowExtraAttributes=false">
		<cfargument name="params" type="array" required="false" hint="Validate against any incorrect attributes passed to the child tags. This is done by passing allowExtraAttributes=false">
		<cfthrow message="the function [com.adobe.CFML.base.appendAllowExtraAttributes(array params)] is not implemented yet">
	</cffunction>
	<cffunction name="getTagAttributes" output="false" access="public" returntype="struct" hint="Returns a struct with attributes set either using implicit setters | init() | setAttributes()">
		<cfreturn Duplicate(variables.attributes) />	
	</cffunction>
	<cffunction name="addParam" output="false" access="public" returntype="any" hint="Add child tags like cfmailparam, cfmailpart etc">
		<cfif NOT StructIsEmpty(arguments)>
			<cfset ArrayAppend(variables.params,arguments)>
		</cfif>
		<cfreturn this/>
	</cffunction>
	
	<cffunction name="clearAttributes" output="false" access="public" returntype="void" hint="Removes all|some of the service tag attributes from CFC variables scope. Accepts a list of service tag attributes to remove. If no attributes are specified, all attributes are removed from CFC variables scope">
		<cfargument name="tagAttributesToClear" type="string" required="false" hint="Removes all|some of the service tag attributes from CFC variables scope. Accepts a list of service tag attributes to remove. If no attributes are specified, all attributes are removed from CFC variables scope">
		<cfthrow message="the function [com.adobe.CFML.base.clearAttributes(string tagAttributesToClear)] is not implemented yet">
	</cffunction>
	
	
	<cfscript>
		
	public any function init(){
		if(!StructIsEmpty(arguments)){
			StructAppend(variables.attributes, arguments, true);
		}
		return this;
	}	
		
	public any function addParam(){
		if(!StructIsEmpty(arguments)){
			ArrayAppend(variables.params,arguments)
		}
		return this;
	}
	
	public array function getParams(){
		return variables.params;
	}
	
	public any function clearParams(){
		variables.params = [];
		return this;
	}
	
	public any function addPart(){
		if(!StructIsEmpty(arguments)){
			ArrayAppend(variables.parts, arguments);
		}
		return this;
	}
	
	public array function getParts(){
		return variables.parts;
	}

	public any function setParts(array parts){
		variables.parts = parts;
		return this;
	}
	public any function clearParts(){
		variables.parts = [];
	}
	
	public struct function getAttributes(){
		return variables.attributes;
	}	
	
	public any function setAttributes(array attributes){
		variables.attributes = attributes;
		return this;
	}
	
	public any function clearAttributes(){
		variables.attributes = {};
		return this;
	}
	
	public any function clear()
	{
		clearAttributes();
		clearParams();
		clearParts();
		return this;
	}
		
	public any function onMissingMethod(methodName, methodArguments){
		var attrName = Right(methodname, Len(methodname)-3);
		var methodType = Left(methodname, 3);
		
		var lAllowedExtra = "";
		switch(variables.tagName){
			case "mail":
				lAllowedExtra = "body";
			break;
		
		}
		


		if(methodType EQ "get" && (StructKeyExists(getSupportedTagAttributes(), attrName) || ListFind(lAllowedExtra, attrName))){
			if(StructKeyExists(variables.attributes, attrName)){
				return variables.attributes[attrName];
			}
			else{
				return "";
			}
		}

		
		if(methodType EQ "set" && (StructKeyExists(getSupportedTagAttributes(), attrName) || ListFindNoCase(lAllowedExtra, attrName))){
			variables.attributes[attrName] = methodArguments[1];
			return this;
		}

		
		//Add also allowed "special" attributes for certain tags
		
		throw("There is no method with the name #methodName#", "expression");
	}
	
	</cfscript>
	
</cfcomponent>
