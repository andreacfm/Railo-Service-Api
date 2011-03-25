<cfoutput>requestmethod:#CGI.request_method#</cfoutput>
<cfif NOT StructIsEmpty(FORM)>
<cfloop Collection="#FORM#" item="formItem">
<cfoutput>form_#formItem#=#FORM[formItem]#</cfoutput>
</cfloop>

</cfif>