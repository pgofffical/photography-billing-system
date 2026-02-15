<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*,org.bson.Document" %>
<!DOCTYPE html>
<html>
<head>
<title>View Clients | Photography Billing</title>

<!-- Bootstrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- Font Awesome -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" rel="stylesheet">

<style>
    body{
        background:
        linear-gradient(rgba(0,0,0,.65), rgba(0,0,0,.65)),
        url("images/photo.png");
        background-size: cover;
        min-height: 100vh;
    }

    .glass-card{
        background: rgba(255,255,255,0.15);
	    backdrop-filter: blur(12px);
	    border-radius:18px;
	    box-shadow:0 15px 35px rgba(0,0,0,.6);
	}

    table{
        background: white;
    }

    footer{
        color:#ddd;
    }
</style>
</head>

<body>

<!-- NAVBAR -->
<nav class="navbar navbar-dark bg-dark px-4 shadow">
    <span class="navbar-brand fw-bold">📸 Welcome to LensArt Studio</span>
    <a href="<%= request.getContextPath() %>/admin/adminDashboard.jsp"
       class="btn btn-outline-light btn-sm">
        <i class="fa fa-arrow-left"></i> Back
    </a>
</nav>

<!-- CONTENT -->
<div class="container mt-5 mb-5">

    <div class="card glass-card shadow-lg">
        <div class="card-header bg-primary text-white text-center rounded-top">
            <h4><i class="fa fa-users"></i> Client List</h4>
        </div>

        <div class="card-body">

            <table class="table table-bordered table-hover table-striped text-center align-middle">
                <thead class="table-dark">
                    <tr>
                        <th>Name</th>
                        <th>Phone</th>
                        <th>Email</th>
                        <th>Event Type</th>
                        <th>Action</th>
                    </tr>
                </thead>

                <tbody>
                <%
                List<Document> list = (List<Document>) request.getAttribute("clients");
                if(list != null && !list.isEmpty()){
                    for(Document d : list){
                %>
                    <tr>
                        <td><%= d.getString("name") %></td>
                        <td><%= d.getString("phone") %></td>
                        <td><%= d.getString("email") %></td>
                        <td>
                            <span class="badge bg-info text-dark">
                                <%= d.getString("eventType") %>
                            </span>
                        </td>
                        <td>
                            <a href="<%= request.getContextPath() %>/deleteClient?id=<%= d.getObjectId("_id") %>"
                               class="btn btn-danger btn-sm"
                               onclick="return confirm('Are you sure you want to delete this client?');">
                                <i class="fa fa-trash"></i>
                            </a>
                        </td>
                    </tr>
                <%
                    }
                } else {
                %>
                    <tr>
                        <td colspan="5" class="text-muted fw-semibold">No clients found</td>
                    </tr>
                <%
                }
                %>
                </tbody>
            </table>

        </div>
    </div>
</div>

<!-- FOOTER -->
<footer class="text-center mt-4 mb-3">
    © 2026 Photography Billing System
</footer>

</body>
</html>
