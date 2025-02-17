<cfquery name="create_content_table" datasource="#this.datasource#">
    CREATE TABLE content 
    (
        id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1),
        title VARCHAR(255) NOT NULL,
        body CLOB,  
        author VARCHAR(255),
        created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
    )
</cfquery>