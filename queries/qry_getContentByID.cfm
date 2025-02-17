<cfquery name="qry_getContentByID">
    SELECT id, title, body, author
    FROM content
    WHERE id = <cfqueryparam value="#url.id#" cfsqltype="cf_sql_integer">
</cfquery>
