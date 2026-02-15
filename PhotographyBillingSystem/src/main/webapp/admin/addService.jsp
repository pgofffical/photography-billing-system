<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Add Service | Photography Billing</title>

    <!-- Bootstrap 5 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" rel="stylesheet">

    <style>
        /* ===== BACKGROUND WITH DARK OVERLAY ===== */
        body{
            margin: 0;
            padding: 0;
            min-height: 100vh;
            padding-bottom: 80px;

            background:
            linear-gradient(rgba(0,0,0,0.65), rgba(0,0,0,0.65)),
            url("../images/photo.png") no-repeat center center fixed;
            background-size: cover;
        }

        /* ===== GLASS CARD ===== */
        .glass-card{
            background: rgba(255, 255, 255, 0.15);
            backdrop-filter: blur(15px);
            -webkit-backdrop-filter: blur(15px);
            border-radius: 18px;
            border: 1px solid rgba(255,255,255,0.3);
            color: #fff;
        }

        .glass-card .card-header{
            background: rgba(255,193,7,0.9);
            border-top-left-radius: 18px;
            border-top-right-radius: 18px;
        }

        /* ===== INPUT CONTRAST ===== */
        .form-control{
            background: rgba(255,255,255,0.95);
            border: none;
            font-weight: 500;
        }

        .form-control:focus{
            box-shadow: 0 0 0 0.2rem rgba(255,193,7,0.4);
        }

        label{
            font-weight: 600;
            color: #fff;
        }

        /* ===== BLUR FOOTER ===== */
        .footer-glass{
            position: fixed;
            bottom: 0;
            left: 0;
            width: 100%;

            backdrop-filter: blur(12px);
            -webkit-backdrop-filter: blur(12px);

            color: #fff;
            padding: 12px 0;
            text-align: center;
            font-size: 14px;
            z-index: 999;
        }
    </style>
</head>

<body>

<!-- NAVBAR -->
<nav class="navbar navbar-dark bg-dark px-4">
    <span class="navbar-brand fw-bold">📸 Welcome to LensArt Studio</span>
    <a href="adminDashboard.jsp" class="btn btn-outline-light btn-sm">
        <i class="fa fa-arrow-left"></i> Back
    </a>
</nav>

<!-- FORM -->
<div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-md-6">

            <div class="card glass-card shadow-lg">
                <div class="card-header text-dark text-center">
                    <h4><i class="fa fa-camera"></i> Add Photography Service</h4>
                </div>

                <div class="card-body">
                    <!-- ⚠️ ACTION & LOGIC NOT CHANGED -->
                    <form action="../addService" method="post">

                        <div class="mb-3">
                            <label class="form-label">Service Name</label>
                            <input type="text" name="serviceName" class="form-control"
                                   placeholder="Wedding / Pre-Wedding / Birthday" required>
                        </div>

                        <div class="mb-3">
                            <label class="form-label">Service Price (₹)</label>
                            <input type="number" name="price" class="form-control"
                                   placeholder="Enter price" required>
                        </div>

                        <div class="text-center mt-4">
                            <button type="submit" class="btn btn-success px-4">
                                <i class="fa fa-save"></i> Add Service
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
</div>

<!-- FOOTER -->
<footer class="footer-glass">
    © 2026 Photography Billing System
</footer>

</body>
</html>
