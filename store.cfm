<!--- title is required for create form --->
<cfif NOT IsDefined("form.title")>
    <cflocation url="index.cfm" addtoken="false">
</cfif>

<cfquery name="insertContent" datasource="#this.datasource#">
    INSERT INTO content (title, body, author)
    VALUES (
        <cfqueryparam value="#form.title#" cfsqltype="cf_sql_varchar">,
        <cfqueryparam value="#form.body#" cfsqltype="cf_sql_clob">,
        <cfqueryparam value="#form.author#" cfsqltype="cf_sql_varchar">
    )
</cfquery>

<cflocation url="index.cfm" addtoken="false">