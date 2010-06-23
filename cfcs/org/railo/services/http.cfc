<cfcomponent displayname="HTTP Service" output="false" extends="base">
				
					<cfproperty name="url" type="string">
					<cfproperty name="charset" type="string">
					<cfproperty name="clientcert" type="string">
					<cfproperty name="clientcertpassword" type="string">
					<cfproperty name="columns" type="string">
					<cfproperty name="delimiter" type="string">
					<cfproperty name="file" type="string">
					<cfproperty name="firstrowasheaders" type="boolean">
					<cfproperty name="getasbinary" type="string">
					<cfproperty name="method" type="string" default="GET">
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
				<cfscript>
						variables.tagname = "http";
						variables.params = []; //child tags to pass
						variables.attributes.method = "GET"; //defaults
				
					public any function send(){
						return super.invokeTag(getTagName(), getTagAttributes());
					}	
				</cfscript>
</cfcomponent>