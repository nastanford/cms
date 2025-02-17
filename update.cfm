<!--- id and title are required for Edit Form --->
<cfif NOT IsDefined("form.id") OR NOT IsDefined("form.title")>
    <cflocation url="index.cfm" addtoken="false">
</cfif>

<cfquery name="updateContent" datasource="#this.datasource#">
    UPDATE content
    SET 
        title = <cfqueryparam value="#form.title#" cfsqltype="cf_sql_varchar">,
        body = <cfqueryparam value="#form.body#" cfsqltype="cf_sql_clob">,
        author = <cfqueryparam value="#form.author#" cfsqltype="cf_sql_varchar">
    WHERE id = <cfqueryparam value="#form.id#" cfsqltype="cf_sql_integer">
</cfquery>

<cflocation url="index.cfm" addtoken="false">