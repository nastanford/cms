<!--- form to add a new content --->
<cfinclude template="./includes/header.cfm">

<div class="container mt-4">
    <div class="card bg-dark border-secondary">
        <div class="card-body">
            <h2 class="card-title text-light mb-4">Add New Content</h2>
            
            <form action="store.cfm" method="post">
                <div class="mb-3">
                    <label for="title" class="form-label text-light">Title</label>
                    <input type="text" class="form-control bg-dark text-light" id="title" name="title" required>
                </div>
                
                <div class="mb-3">
                    <label for="body" class="form-label text-light">Body</label>
                    <textarea class="form-control bg-dark text-light" id="body" name="body" rows="10"></textarea>
                </div>
                
                <div class="mb-3">
                    <label for="author" class="form-label text-light">Author</label>
                    <input type="text" class="form-control bg-dark text-light" id="author" name="author">
                </div>
                
                <div class="mb-3">
                    <a href="index.cfm" class="btn btn-outline-secondary">Cancel</a>
                    <button type="submit" class="btn btn-primary">Save Content</button>
                </div>
            </form>
        </div>
    </div>
</div>

<cfinclude template="./includes/footer.cfm">