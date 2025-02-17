<cfquery name="qry_getContents">
    SELECT id, title, author, created_at
    FROM content
    ORDER BY created_at DESC
</cfquery>
