<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>LensArt Studio | Services</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" rel="stylesheet">

<style>

body{
    min-height:100vh;
    background:
    linear-gradient(rgba(0,0,0,.7), rgba(0,0,0,.8)),
    url("images/photo.png") no-repeat center center fixed;
    background-size: cover;
    font-family: 'Segoe UI', sans-serif;
    color:white;
}

/* Navbar */
.navbar{
    backdrop-filter: blur(10px);
    background: rgba(0,0,0,.6);
}

/* Section title */
.section-title{
    font-weight:700;
    margin-bottom:40px;
}

/* Glass card */
.service-card{
    background: rgba(255,255,255,0.12);
    backdrop-filter: blur(15px);
    border-radius:20px;
    padding:35px;
    transition:0.3s;
    height:100%;
}

.service-card:hover{
    transform:translateY(-10px);
    box-shadow:0 20px 40px rgba(0,0,0,.6);
}

/* Icon */
.service-icon{
    font-size:40px;
    margin-bottom:15px;
}

/* Price */
.price{
    font-size:22px;
    font-weight:700;
    color:#ffc107;
}

/* Button */
.btn-glow{
    background: linear-gradient(45deg,#ffb300,#ff6f00);
    border:none;
    color:white;
    border-radius:10px;
    padding:10px 20px;
    font-weight:600;
}

.btn-glow:hover{
    box-shadow:0 10px 25px rgba(255,165,0,.6);
}

</style>
</head>

<body>

<!-- NAVBAR -->
<nav class="navbar navbar-expand-lg navbar-dark px-4">
    <a class="navbar-brand fw-bold" href="index.jsp">LensArt Studio</a>

    <div class="navbar-nav ms-auto">
        <a class="nav-link" href="index.jsp">Home</a>
        <a class="nav-link active" href="services.jsp">Services</a>
        <a class="nav-link" href="gallery.jsp">Gallery</a>
        <a class="btn btn-warning btn-sm ms-3" href="login.html">Admin Login</a>
    </div>
</nav>

<!-- SERVICES -->
<div class="container mt-5 mb-5">

    <h2 class="text-center section-title">Our Photography Services</h2>

    <div class="row g-4 text-center">

        <!-- Wedding -->
        <div class="col-md-4">
            <div class="service-card">
                <div class="service-icon text-danger">
                    <i class="fa fa-ring"></i>
                </div>
                <h4>Wedding Photography</h4>
                <p>Full cinematic wedding coverage with premium album and editing.</p>
                <div class="price">Starting RS 25,000</div>
                <a href="index.jsp#booking" class="btn btn-glow mt-3">Book Now</a>
            </div>
        </div>

        <!-- Pre Wedding -->
        <div class="col-md-4">
            <div class="service-card">
                <div class="service-icon text-primary">
                    <i class="fa fa-heart"></i>
                </div>
                <h4>Pre-Wedding Shoot</h4>
                <p>Outdoor romantic shoots with cinematic editing and poses guidance.</p>
                <div class="price">Starting RS 12,000</div>
                <a href="index.jsp#booking" class="btn btn-glow mt-3">Book Now</a>
            </div>
        </div>

        <!-- Birthday -->
        <div class="col-md-4">
            <div class="service-card">
                <div class="service-icon text-success">
                    <i class="fa fa-birthday-cake"></i>
                </div>
                <h4>Birthday Events</h4>
                <p>Capture joyful celebrations with professional photography coverage.</p>
                <div class="price">Starting RS 8,000</div>
                <a href="index.jsp#booking" class="btn btn-glow mt-3">Book Now</a>
            </div>
        </div>
        
        <!-- Engagement -->
		<div class="col-md-4">
		    <div class="service-card">
		        <div class="service-icon text-info">
		            <i class="fa fa-gem"></i>
		        </div>
		        <h4>Engagement Ceremony</h4>
		        <p>Elegant engagement coverage with candid and cinematic shots.</p>
		        <div class="price">Starting RS 10,000</div>
		        <a href="index.jsp#booking" class="btn btn-glow mt-3">Book Now</a>
		    </div>
		</div>
		
		<!-- Baby Shower -->
		<div class="col-md-4">
		    <div class="service-card">
		        <div class="service-icon text-warning">
		            <i class="fa fa-baby"></i>
		        </div>
		        <h4>Baby Shower</h4>
		        <p>Capture beautiful family moments with soft editing style.</p>
		        <div class="price">Starting RS 7,000</div>
		        <a href="index.jsp#booking" class="btn btn-glow mt-3">Book Now</a>
		    </div>
		</div>
		
		<!-- Corporate Event -->
		<div class="col-md-4">
		    <div class="service-card">
		        <div class="service-icon text-secondary">
		            <i class="fa fa-briefcase"></i>
		        </div>
		        <h4>Corporate Events</h4>
		        <p>Professional photography for meetings, launches, and conferences.</p>
		        <div class="price">Starting RS 15,000</div>
		        <a href="index.jsp#booking" class="btn btn-glow mt-3">Book Now</a>
		    </div>
		</div>
		
		<!-- Maternity Shoot -->
		<div class="col-md-4">
		    <div class="service-card">
		        <div class="service-icon text-danger">
		            <i class="fa fa-heart"></i>
		        </div>
		        <h4>Maternity Shoot</h4>
		        <p>Creative indoor or outdoor maternity photography sessions.</p>
		        <div class="price">Starting RS 9,000</div>
		        <a href="index.jsp#booking" class="btn btn-glow mt-3">Book Now</a>
		    </div>
		</div>
		
		<!-- Anniversary -->
		<div class="col-md-4">
		    <div class="service-card">
		        <div class="service-icon text-primary">
		            <i class="fa fa-glass-cheers"></i>
		        </div>
		        <h4>Anniversary Celebration</h4>
		        <p>Capture your special milestone with elegant photo coverage.</p>
		        <div class="price">Starting RS 8,500</div>
		        <a href="index.jsp#booking" class="btn btn-glow mt-3">Book Now</a>
		    </div>
		</div>
		
		<!-- Custom Shoot -->
		<div class="col-md-4">
		    <div class="service-card">
		        <div class="service-icon text-light">
		            <i class="fa fa-camera"></i>
		        </div>
		        <h4>Custom Photoshoot</h4>
		        <p>Tell us your idea — we design a personalized shoot for you.</p>
		        <div class="price">Contact for Price</div>
		        <a href="index.jsp#booking" class="btn btn-glow mt-3">Book Now</a>
		    </div>
		</div>
        

    </div>

</div>

<!-- FOOTER -->
<footer class="text-center text-light py-3" style="background:rgba(0,0,0,.7);">
    2026 LensArt Studio
</footer>

</body>
</html>
