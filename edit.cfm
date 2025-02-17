<!--- URL ID is required for Edit Form --->
<cfif NOT IsDefined("url.id")>
    <cflocation url="index.cfm" addtoken="false">
</cfif>
<cfinclude template="./queries/qry_getContentByID.cfm">
<cfif qry_getContentByID.recordCount NEQ 1>
    <cflocation url="index.cfm" addtoken="false">
</cfif>

<cfinclude template="./includes/header.cfm">
<div class="container mt-4">
    <div class="card bg-dark border-secondary">
        <div class="card-body">
            <h2 class="card-title text-light mb-4">Edit Content</h2>
            
            <cfoutput query="qry_getContentByID">
            <form action="update.cfm" method="post">
                <input type="hidden" name="id" value="#id#">
                
                <div class="mb-3">
                    <label for="title" class="form-label text-light">Title</label>
                    <input type="text" class="form-control bg-dark text-light" id="title" name="title" value="#title#" required>
                </div>
                
                <div class="mb-3">
                    <label for="body" class="form-label text-light">Body</label>
                    <textarea class="form-control bg-dark text-light" id="body" name="body" rows="10">#body#</textarea>
                </div>
                
                <div class="mb-3">
                    <label for="author" class="form-label text-light">Author</label>
                    <input type="text" class="form-control bg-dark text-light" id="author" name="author" value="#author#">
                </div>
                
                <div class="mb-3">
                    <a href="index.cfm" class="btn btn-outline-secondary">Cancel</a>
                    <button type="submit" class="btn btn-primary">Update Content</button>
                </div>
            </form>
            </cfoutput>
        </div>
    </div>
</div>

<cfinclude template="./includes/footer.cfm">