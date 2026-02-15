<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Admin Dashboard | LensArt Studio</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" rel="stylesheet">

<style>
body{
    min-height:100vh;
    background:
        linear-gradient(rgba(0,0,0,.75), rgba(0,0,0,.75)),
        url("../images/photo.png") center/cover fixed;
    color:#fff;
    font-family: "Segoe UI", sans-serif;
}

/* Navbar */
.navbar{
    backdrop-filter: blur(10px);
    background: rgba(0,0,0,.7);
}

/* Glass UI */
.glass{
    background: rgba(255,255,255,0.12);
    backdrop-filter: blur(15px);
    border-radius:18px;
    transition:.35s ease;
    cursor:pointer;
}
.glass:hover{
    transform: translateY(-8px) scale(1.03);
    box-shadow:0 20px 45px rgba(0,0,0,.7);
}

/* Icons */
.icon{
    width:70px;
    height:70px;
    border-radius:50%;
    background:rgba(255,255,255,.2);
    display:flex;
    align-items:center;
    justify-content:center;
    margin:auto;
}

/* Stats */
.stat{
    background: rgba(0,0,0,.55);
    border-radius:16px;
    padding:25px;
    transition:.3s;
}
.stat:hover{
    transform:scale(1.05);
}

/* Welcome Banner */
.banner{
    background: rgba(255,255,255,0.1);
    border-radius:18px;
    padding:25px;
}

/* Clock */
#clock{
    font-size:18px;
    opacity:.85;
}
</style>
</head>

<body>

<!-- NAVBAR -->
<nav class="navbar navbar-dark px-4">
    <span class="navbar-brand fw-bold">
        <i class="fa fa-camera-retro me-2"></i>
        LensArt Studio 
    </span>

    <div>
        <span id="clock" class="me-3"></span>
        <a href="<%= request.getContextPath() %>/logout" class="btn btn-danger btn-sm">Logout</a>
    </div>
</nav>

<div class="container py-5">

<!-- WELCOME -->
<div class="banner text-center mb-4">
    <h3 class="fw-bold">Welcome Back, LensArt Studio 👋</h3>
    <p class="opacity-75">Manage clients, bookings, invoices and services</p>
</div>

<!-- STATS -->
<div class="row g-4 text-center mb-5">

    <div class="col-md-3">
        <div class="stat">
            <i class="fa fa-users fa-2x text-primary mb-2"></i>
            <h3>120</h3>
            <small>Total Clients</small>
        </div>
    </div>

    <div class="col-md-3">
        <div class="stat">
            <i class="fa fa-calendar-check fa-2x text-success mb-2"></i>
            <h3>48</h3>
            <small>Bookings</small>
        </div>
    </div>

    <div class="col-md-3">
        <div class="stat">
            <i class="fa fa-file-invoice fa-2x text-warning mb-2"></i>
            <h3>340</h3>
            <small>Invoices</small>
        </div>
    </div>

    <div class="col-md-3">
        <div class="stat">
            <i class="fa fa-indian-rupee-sign fa-2x text-info mb-2"></i>
            <h3>₹4.2L</h3>
            <small>Total Revenue</small>
        </div>
    </div>

</div>

<!-- ACTION CARDS -->
<div class="row g-4">

    <div class="col-md-4">
        <div class="glass p-4 text-center">
            <div class="icon mb-3"><i class="fa fa-user-plus fa-2x text-primary"></i></div>
            <h5>Add Client</h5>
            <a href="addClient.jsp" class="btn btn-primary btn-sm mt-3">Open</a>
        </div>
    </div>

    <div class="col-md-4">
        <div class="glass p-4 text-center">
            <div class="icon mb-3"><i class="fa fa-users fa-2x text-success"></i></div>
            <h5>View Clients</h5>
            <a href="<%= request.getContextPath() %>/viewClient" class="btn btn-success btn-sm mt-3">Open</a>
        </div>
    </div>

    <div class="col-md-4">
        <div class="glass p-4 text-center">
            <div class="icon mb-3"><i class="fa fa-camera fa-2x text-warning"></i></div>
            <h5>Add Service</h5>
            <a href="addService.jsp" class="btn btn-warning btn-sm mt-3">Open</a>
        </div>
    </div>

    <div class="col-md-4">
        <div class="glass p-4 text-center">
            <div class="icon mb-3"><i class="fa fa-file-invoice fa-2x text-info"></i></div>
            <h5>Create Invoice</h5>
            <a href="addInvoice.jsp" class="btn btn-info btn-sm mt-3">Open</a>
        </div>
    </div>

    <div class="col-md-4">
        <div class="glass p-4 text-center">
            <div class="icon mb-3"><i class="fa fa-list fa-2x text-light"></i></div>
            <h5>View Invoice</h5>
            <a href="<%= request.getContextPath() %>/viewInvoice" class="btn btn-light btn-sm mt-3">Open</a>
        </div>
    </div>

    <div class="col-md-4">
        <div class="glass p-4 text-center">
            <div class="icon mb-3"><i class="fa fa-images fa-2x text-info"></i></div>
            <h5>Events Gallery</h5>
            <a href="eventsGallery.jsp" class="btn btn-info btn-sm mt-2">Open</a>
        </div>
    </div>

</div>
</div>

<footer class="text-center mt-4 mb-3 opacity-75">
    © 2026 LensArt Studio
</footer>

<script>
function updateClock(){
    const now = new Date();
    document.getElementById("clock").innerText =
        now.toLocaleDateString() + " | " + now.toLocaleTimeString();
}
setInterval(updateClock, 1000);
updateClock();
</script>

</body>
</html>
