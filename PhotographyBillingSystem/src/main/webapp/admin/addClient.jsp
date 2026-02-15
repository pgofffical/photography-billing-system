<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Add Client | Photography Billing</title>

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
    background-size:cover;
    background-position:center;
    color:#fff;
}

.brand-logo{
    height:65px;
    margin-right:10px;
}

/* Glass Card */
.glass-card{
    background: rgba(255,255,255,0.15);
    backdrop-filter: blur(12px);
    border-radius:18px;
    box-shadow:0 15px 35px rgba(0,0,0,.6);
}

/* Input icons */
.input-group-text{
    background: rgba(255,255,255,.2);
    border:none;
    color:#fff;
}

.form-control, .form-select{
    background: rgba(255,255,255,.15);
    border:none;
    color:#fff;
}

.form-control::placeholder{
    color:#ddd;
}
select {
        color: black;
    }
option {
     color: black;
     background-color: white;
}
</style>
</head>

<body>

<!-- NAVBAR -->
<nav class="navbar navbar-dark bg-dark bg-opacity-75 px-4">
	<div class="d-flex align-items-center">
        <img src="../images/logo.png" class="brand-logo" alt="Logo">
        <span class="navbar-brand fw-bold">Welcome to LensArt Studio</span>
    </div>
    <button onclick="history.back()" class="btn btn-outline-light btn-sm">
        <i class="fa fa-arrow-left"></i> Back
    </button>
</nav>

<!-- FORM -->
<div class="container py-5">
    <div class="row justify-content-center">
        <div class="col-md-6">

            <div class="glass-card p-4">
                <h4 class="text-center mb-4">
                    <i class="fa fa-user-plus"></i> Add New Client
                </h4>

                <form action="<%=request.getContextPath()%>/addClient" method="post">

                    <!-- Name -->
                    <div class="mb-3 input-group">
                        <span class="input-group-text">
                            <i class="fa fa-user"></i>
                        </span>
                        <input type="text" name="name" class="form-control"
                               placeholder="Client Name" required>
                    </div>

                    <!-- Phone -->
                    <div class="mb-3 input-group">
                        <span class="input-group-text">
                            <i class="fa fa-phone"></i>
                        </span>
                        <input type="text" name="phone" class="form-control"
                               placeholder="Phone Number" required>
                    </div>

                    <!-- Email -->
                    <div class="mb-3 input-group">
                        <span class="input-group-text">
                            <i class="fa fa-envelope"></i>
                        </span>
                        <input type="email" name="email" class="form-control"
                               placeholder="Email Address">
                    </div>

                    <!-- Event Type -->
                    <div class="mb-4 input-group">
                        <span class="input-group-text">
                            <i class="fa fa-calendar"></i>
                        </span>
                        <select name="eventType" class="form-select color:black">
                            <option value="">Select Event Type</option>
                            <option>Wedding</option>
                            <option>Pre-Wedding</option>
                            <option>Birthday</option>
                            <option>Engagement</option>
                            <option>Corporate Event</option>
                        </select>
                    </div>

                    <!-- Buttons -->
                    <div class="text-center">
                        <button type="submit" class="btn btn-success px-4">
                            <i class="fa fa-save"></i> Save Client
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

<footer class="text-center mt-4 opacity-75">
    © 2026 Photography Billing System
</footer>

</body>
</html>
