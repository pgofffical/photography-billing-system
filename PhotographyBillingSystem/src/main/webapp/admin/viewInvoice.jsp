<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*,org.bson.Document" %>
<!DOCTYPE html>
<html>
<head>
    <title>Invoice List | Photography Billing</title>

    <!-- Bootstrap 5 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" rel="stylesheet">

    <style>
        body{
            margin: 0;
            padding: 0;
            min-height: 100vh;
            padding-bottom: 80px;
            background:
            linear-gradient(rgba(0,0,0,0.65), rgba(0,0,0,0.65)),
            url("images/photo.png") no-repeat center center fixed;
            background-size: cover;
        }

        .glass-card{
            background: rgba(255,255,255,0.15);
            backdrop-filter: blur(15px);
            border-radius: 18px;
            border: 1px solid rgba(255,255,255,0.3);
            color: #fff;
        }

        .glass-card .card-header{
            background: rgba(25,135,84,0.95);
            border-radius: 18px 18px 0 0;
        }

        .table{
            background: rgba(255,255,255,0.95);
        }

        .table th{
            background: #212529;
            color: #fff;
        }

        .footer-glass{
            position: fixed;
            bottom: 0;
            width: 100%;
            backdrop-filter: blur(12px);
            color: #fff;
            padding: 12px 0;
            text-align: center;
            font-size: 14px;
        }
    </style>
</head>

<body>

<!-- NAVBAR -->
<nav class="navbar navbar-dark bg-dark px-4">
    <span class="navbar-brand fw-bold">📸 Welcome to LensArt Studio</span>
    <a href="<%= request.getContextPath() %>/admin/adminDashboard.jsp"
       class="btn btn-outline-light btn-sm">
        <i class="fa fa-arrow-left"></i> Back
    </a>
</nav>

<!-- CONTENT -->
<div class="container mt-5">
    <div class="card glass-card shadow-lg">
        <div class="card-header text-center">
            <h4><i class="fa fa-file-invoice"></i> Invoice List</h4>
        </div>

        <div class="card-body">

            <table class="table table-bordered table-hover table-striped text-center align-middle">
                <thead>
                    <tr>
                        <th>Client ID</th>
                        <th>Service</th>
                        <th>Amount (₹)</th>
                        <th>Bill Date</th>
                        <th>Status</th>
                        <th>Action</th>
                    </tr>
                </thead>

                <tbody>
                <%
                List<Document> list = (List<Document>) request.getAttribute("invoices");
                if(list != null && !list.isEmpty()){
                    for(Document d : list){
                        String status = d.getString("paymentStatus");
                %>
                    <tr>
                        <td><%= d.getString("clientId") %></td>
                        <td><%= d.getString("service") %></td>
                        <td><%= d.getDouble("amount") %></td>
                        <td><%= d.getString("billDate") %></td>

                        <!-- STATUS -->
                        <td>
						    <% if("PAID".equals(d.getString("paymentStatus"))) { %>
						        <span class="badge bg-success">PAID</span>
						    <% } else { %>
						        <span class="badge bg-danger">UNPAID</span><br><br>
						      
						    <% } %>
						</td>

                        <!-- ACTION -->
                        <td>
                            <% if(!"PAID".equalsIgnoreCase(status)){ %>
                                <a href="<%= request.getContextPath() %>/admin/payment.jsp?invoiceId=<%= d.getObjectId("_id") %>"
                                   class="btn btn-warning btn-sm">
                                    <i class="fa fa-credit-card"></i> Pay
                                </a>
                            <% } else { %>
                                <span class="text-success fw-bold">Completed</span>
                            <% } %>
                        </td>
                    </tr>
                <%
                    }
                } else {
                %>
                    <tr>
                        <td colspan="6" class="text-muted">No invoices found</td>
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
<footer class="footer-glass">
    © 2026 Photography Billing System
</footer>

</body>
</html>
