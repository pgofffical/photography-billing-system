<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Create Invoice | Photography Billing</title>

    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" rel="stylesheet">

    <style>
        body{
            min-height:100vh;
            background:
                linear-gradient(rgba(0,0,0,.65), rgba(0,0,0,.65)),
                url("../images/photo.png");
            background-size: cover;
            background-position: center;
            font-family: "Segoe UI", sans-serif;
        }

        /* Glass Card */
        .glass-card{
            background: rgba(255,255,255,0.15);
            backdrop-filter: blur(12px);
            -webkit-backdrop-filter: blur(12px);
            border-radius: 18px;
            box-shadow: 0 20px 40px rgba(0,0,0,.6);
            color: #fff;
        }

        .glass-card .form-control{
            background: rgba(255,255,255,.9);
        }

        /* Footer Glass */
        .footer-glass{
            
            backdrop-filter: blur(10px);
            -webkit-backdrop-filter: blur(10px);
            color: #fff;
            padding: 12px 0;
            font-size: 14px;
            margin-top: 50px;
        }
    </style>
</head>

<body>

<!-- NAVBAR -->
<nav class="navbar navbar-dark bg-dark bg-opacity-75 px-4 shadow">
    <span class="navbar-brand fw-bold">📸 Welcome to LensArt Studio</span>
    <a href="adminDashboard.jsp" class="btn btn-outline-light btn-sm">
        <i class="fa fa-arrow-left"></i> Back
    </a>
</nav>

<!-- FORM -->
<div class="container mt-5 mb-5">
    <div class="row justify-content-center">
        <div class="col-md-7">

            <div class="glass-card p-4">
                <div class="text-center mb-4">
                    <h4 class="fw-bold">
                        <i class="fa fa-file-invoice text-info"></i> Create Invoice
                    </h4>
                </div>

                <form action="../addInvoice" method="post">

                    <div class="mb-3">
                        <label class="form-label">Client ID</label>
                        <input type="text" name="clientId" class="form-control"
                               placeholder="Enter Client ID" required>
                    </div>

                    <div class="mb-3">
                        <label class="form-label">Service Name</label>
                        <input type="text" name="service" class="form-control"
                               placeholder="Wedding Photography" required>
                    </div>

                    <div class="mb-3">
                        <label class="form-label">Amount (₹)</label>
                        <input type="number" name="amount" class="form-control"
                               placeholder="Enter amount" required>
                    </div>

                    <div class="mb-3">
                        <label class="form-label">Bill Date</label>
                        <input type="date" name="billDate" class="form-control" required>
                    </div>

                    <div class="text-center mt-4">
                        <button type="submit" class="btn btn-success px-4">
                            <i class="fa fa-save"></i> Create Invoice
                        </button>
                        <button type="reset" class="btn btn-secondary px-4 ms-2">
                            Clear
                        </button>
                    </div>

                </form>
            </div>

        </div>
    </div>
</div>

<!-- FOOTER -->
<footer class="footer-glass text-center">
    © 2026 Photography Billing System
</footer>

</body>
</html>
