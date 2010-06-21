<cfcomponent displayname="base">
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
		<cfthrow message="the function [com.adobe.CFML.base.setTagName(string tagName)] is not implemented yet">
	</cffunction>
	<cffunction name="getTagName" output="false" access="private" returntype="string" hint="Get the name of the service tag">
		<cfthrow message="the function [com.adobe.CFML.base.getTagName()] is not implemented yet">
	</cffunction>
	<cffunction name="getSupportedTagAttributes" output="false" access="private" returntype="string" hint="Accepts a service tag name and returns the allowed tag attributes. Uses double-checked locking">
		<cfargument name="tagName" type="string" required="false" hint="Accepts a service tag name and returns the allowed tag attributes. Uses double-checked locking">
		<cfthrow message="the function [com.adobe.CFML.base.getSupportedTagAttributes(string tagName)] is not implemented yet">
	</cffunction>
	<cffunction name="invokeTag" output="true" access="private" returntype="any" hint="invokes the service tag">
		<cfargument name="tagName" type="string" hint="invokes the service tag">
		<cfargument name="tagAttributes" type="struct" hint="invokes the service tag">
		<cfargument name="tagParams" type="struct" required="no" hint="invokes the service tag">
		<cfthrow message="the function [com.adobe.CFML.base.invokeTag(string tagName, struct tagAttributes, struct tagParams)] is not implemented yet">
	</cffunction>
	<cffunction name="clearParams" output="false" access="public" returntype="void" hint="Resets child tags by resetting the parameters array">
		<cfthrow message="the function [com.adobe.CFML.base.clearParams()] is not implemented yet">
	</cffunction>
	<cffunction name="appendAllowExtraAttributes" output="false" access="private" returntype="array" hint="Validate against any incorrect attributes passed to the child tags. This is done by passing allowExtraAttributes=false">
		<cfargument name="params" type="array" required="false" hint="Validate against any incorrect attributes passed to the child tags. This is done by passing allowExtraAttributes=false">
		<cfthrow message="the function [com.adobe.CFML.base.appendAllowExtraAttributes(array params)] is not implemented yet">
	</cffunction>
	<cffunction name="getTagAttributes" output="false" access="private" returntype="struct" hint="Returns a struct with attributes set either using implicit setters | init() | setAttributes()">
		<cfthrow message="the function [com.adobe.CFML.base.getTagAttributes()] is not implemented yet">
	</cffunction>
	<cffunction name="addParam" output="false" access="public" returntype="void" hint="Add child tags like cfmailparam, cfmailpart etc">
		<cfthrow message="the function [com.adobe.CFML.base.addParam()] is not implemented yet">
	</cffunction>
	<cffunction name="clearAttributes" output="false" access="public" returntype="void" hint="Removes all|some of the service tag attributes from CFC variables scope. Accepts a list of service tag attributes to remove. If no attributes are specified, all attributes are removed from CFC variables scope">
		<cfargument name="tagAttributesToClear" type="string" required="false" hint="Removes all|some of the service tag attributes from CFC variables scope. Accepts a list of service tag attributes to remove. If no attributes are specified, all attributes are removed from CFC variables scope">
		<cfthrow message="the function [com.adobe.CFML.base.clearAttributes(string tagAttributesToClear)] is not implemented yet">
	</cffunction>
</cfcomponent>
