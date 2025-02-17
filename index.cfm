

<cfinclude template="./sql/add_fake_data.cfm">
<cfinclude template="./includes/header.cfm">
<cfinclude template="./queries/qry_getContents.cfm">

<div class="container mt-4">
    <div class="d-flex justify-content-between align-items-center mb-4">
        <h2 class="text-light">Content Management</h2>
        <a href="create.cfm" class="btn btn-primary">Add New Content</a>
    </div>

    <div class="card bg-dark border-secondary">
        <div class="card-body">
            <table class="table table-dark table-hover">
                <thead>
                    <tr>
                        <th>Title</th>
                        <th>Author</th>
                        <th>Created At</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <cfoutput query="qry_getContents">
                        <tr>
                            <td>#title#</td>
                            <td>#author#</td>
                            <td>#DateFormat(created_at, "mm/dd/yyyy")# #TimeFormat(created_at, "hh:mm tt")#</td>
                            <td>
                                <a href="edit.cfm?id=#id#" class="btn btn-sm btn-outline-primary">Edit</a>
                                <a href="destroy.cfm?id=#id#" onclick="return confirm('Are you sure you want to delete (#title#)?')" class="btn btn-sm btn-outline-primary">Delete</a>
                            </td>
                        </tr>
                    </cfoutput>
                </tbody>
            </table>
        </div>
    </div>
</div>

<cfinclude template="./includes/footer.cfm">