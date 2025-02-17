<!--- Insert sample data if the table is empty --->
<cfquery name="checkContent" datasource="#this.datasource#">
    SELECT COUNT(*) as total FROM content
</cfquery>

<cfif checkContent.total EQ 0>
    <cfquery name="insertSampleData">
        INSERT INTO content (title, body, author) VALUES 
        ('Welcome to Our CMS', 'This is the first article in our content management system. Here you can manage all your content efficiently.', 'Admin'),
        ('Getting Started Guide', 'Learn how to use our CMS effectively. This guide will walk you through all the basic features.', 'John Doe'),
        ('Best Practices', 'Here are some best practices for managing your content: 1. Keep titles concise 2. Use proper formatting 3. Review before publishing', 'Jane Smith'),
        ('Sample Article', 'This is a sample article demonstrating the features of our CMS. You can edit or delete this content as needed.', 'Test User'),
        ('ColdFusion Tips', 'ColdFusion makes it easy to build dynamic web applications. Here are some tips for optimal performance...', 'CF Developer')
    </cfquery>
</cfif>