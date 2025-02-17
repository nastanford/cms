<!--- id and title are required for delete --->
<cfif NOT IsDefined("url.id")>
    <cflocation url="index.cfm" addtoken="false">
</cfif>

<cfquery name="destroyContent">
    DELETE from content
    WHERE id = <cfqueryparam value="#url.id#" cfsqltype="cf_sql_integer">
</cfquery>

<cflocation url="index.cfm" addtoken="false">