<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>LensArt Studio | Capture Your Moments</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" rel="stylesheet">

<style>

/* ===== GLOBAL ===== */
body{
min-height:100vh;
background:
linear-gradient(rgba(0,0,0,.65), rgba(0,0,0,.75)),
url("images/photo.png") center/cover fixed;
font-family:'Segoe UI',sans-serif;
color:white;
}

/* ===== NAVBAR ===== */
.navbar{
backdrop-filter:blur(12px);
background:rgba(0,0,0,.55);
transition:.3s;
}

/* ===== HERO ===== */
.hero{
height:90vh;
display:flex;
align-items:center;
justify-content:center;
text-align:center;
}

.hero h1{
font-size:56px;
font-weight:700;
animation:fadeUp 1s ease;
}

.hero p{
font-size:20px;
opacity:.9;
animation:fadeUp 1.5s ease;
}

/* ===== GLASS ===== */
.glass{
background:rgba(255,255,255,.12);
backdrop-filter:blur(18px);
border-radius:22px;
padding:45px;
box-shadow:0 25px 45px rgba(0,0,0,.6);
}

/* ===== BUTTON ===== */
.btn-glow{
background:linear-gradient(45deg,#ffb300,#ff6f00);
border:none;
color:white;
font-weight:600;
padding:12px 30px;
border-radius:12px;
transition:.3s;
}

.btn-glow:hover{
transform:translateY(-3px);
box-shadow:0 12px 25px rgba(255,165,0,.6);
}

/* ===== SERVICES ===== */
.service-card{
background:white;
color:black;
border-radius:18px;
padding:30px;
transition:.3s;
}

.service-card:hover{
transform:translateY(-10px);
box-shadow:0 20px 40px rgba(0,0,0,.4);
}

/* ===== FORM ===== */
.form-glass{
background:rgba(255,255,255,.15);
backdrop-filter:blur(18px);
border-radius:20px;
padding:45px;
}

/* ===== FOOTER ===== */
.footer{
background:rgba(0,0,0,.75);
backdrop-filter:blur(10px);
}

/* ===== REVEAL ANIMATION ===== */
.reveal{
opacity:0;
transform:translateY(40px);
transition:all .8s ease;
}

.reveal.active{
opacity:1;
transform:translateY(0);
}

/* ===== COUNTER ===== */
.counter{
font-size:42px;
font-weight:bold;
color:#ffb300;
}

/* ===== ANIMATION ===== */
@keyframes fadeUp{
from{opacity:0;transform:translateY(30px);}
to{opacity:1;transform:translateY(0);}
}

</style>
</head>

<body>

<!-- NAVBAR -->
<nav class="navbar navbar-expand-lg navbar-dark px-4 fixed-top">
<a class="navbar-brand fw-bold fs-4" href="#">LensArt Studio</a>
<div class="navbar-nav ms-auto">
<a class="nav-link" href="#">Home</a>
<a class="nav-link" href="services.jsp">Services</a>
<a class="nav-link" href="gallery.jsp">Gallery</a>
<a class="btn btn-warning btn-sm ms-3" href="login.html">Admin Login</a>
</div>
</nav>

<!-- HERO -->
<section class="hero">
<div class="glass">
<h1>Capture Your Beautiful Moments</h1>
<p>Wedding • Birthday • Pre-Wedding • Events</p>
<a href="#booking" class="btn btn-glow mt-3">Book Your Event Now</a>
</div>
</section>

<!-- SERVICES -->
<section class="container mb-5 pt-4 reveal">
<h2 class="text-center mb-4 fw-bold">Our Services</h2>
<div class="row text-center g-4">

<div class="col-md-4">
<div class="service-card">
<i class="fa fa-ring fa-2x mb-3 text-danger"></i>
<h4>Wedding Photography</h4>
<p>Premium cinematic wedding coverage.</p>
</div>
</div>

<div class="col-md-4">
<div class="service-card">
<i class="fa fa-heart fa-2x mb-3 text-primary"></i>
<h4>Pre-Wedding Shoot</h4>
<p>Romantic outdoor professional shoots.</p>
</div>
</div>

<div class="col-md-4">
<div class="service-card">
<i class="fa fa-birthday-cake fa-2x mb-3 text-success"></i>
<h4>Birthday Events</h4>
<p>Capture joyful celebrations perfectly.</p>
</div>
</div>

</div>
</section>

<!-- COUNTERS -->
<section class="container text-center my-5 reveal">
<div class="row">
<div class="col-md-4">
<h2 class="counter" data-target="500">0</h2>
<p>Happy Clients</p>
</div>
<div class="col-md-4">
<h2 class="counter" data-target="1200">0</h2>
<p>Events Covered</p>
</div>
<div class="col-md-4">
<h2 class="counter" data-target="8">0</h2>
<p>Years Experience</p>
</div>
</div>
</section>

<!-- PRICING -->
<section class="container my-5 reveal">
<h2 class="text-center mb-4">Photography Packages</h2>
<div class="row text-center">

<div class="col-md-4">
<div class="service-card">
<h4>Basic</h4>
<h3>₹15,000</h3>
<p>4 Hours Coverage</p>
<p>50 Edited Photos</p>
</div>
</div>

<div class="col-md-4">
<div class="service-card border border-warning">
<h4>Premium</h4>
<h3>₹35,000</h3>
<p>Full Day Coverage</p>
<p>200 Edited Photos</p>
</div>
</div>

<div class="col-md-4">
<div class="service-card">
<h4>Luxury</h4>
<h3>₹75,000</h3>
<p>Cinematic Video + Album</p>
</div>
</div>

</div>
</section>

<!-- TESTIMONIALS -->
<section class="container my-5 reveal">
<h2 class="text-center mb-4">Client Testimonials</h2>

<div id="reviewSlider" class="carousel slide" data-bs-ride="carousel">
<div class="carousel-inner text-center">

<div class="carousel-item active">
<p>"Amazing photography and editing quality!"</p>
<h6>- Rahul Sharma</h6>
</div>

<div class="carousel-item">
<p>"Professional team and on-time delivery."</p>
<h6>- Priya Verma</h6>
</div>

<div class="carousel-item">
<p>"Captured our wedding beautifully."</p>
<h6>- Karthik R</h6>
</div>

</div>
</div>
</section>

<!-- BOOKING FORM -->
<section id="booking" class="container mb-5 reveal">
<div class="form-glass shadow-lg">

<h2 class="text-center mb-4">Book Your Event</h2>

<%
String msg = (String)request.getAttribute("msg");
if(msg!=null){
%>
<script>
alert("Booking Successful! We will contact you soon.");
</script>
<% } %>

<form action="<%= request.getContextPath() %>/bookEvent" method="post">

<div class="row g-3">
<div class="col-md-6">
<label>Name</label>
<input type="text" name="name" class="form-control" required>
</div>

<div class="col-md-6">
<label>Phone</label>
<input type="text" name="phone" class="form-control" required>
</div>

<div class="col-md-6">
<label>Email</label>
<input type="email" name="email" class="form-control" required>
</div>

<div class="col-md-6">
	<label>Event Type</label>
		<select name="eventType" class="form-select" required>
			<option value="">Select Event</option>
			<option>Wedding</option>
			<option>Birthday</option>
			<option>Pre-Wedding</option>
			<option>Corporate</option>
			<option>Other</option>
		</select>
</div>
</div>

<div class="text-center mt-4">
<button id="submitBtn" class="btn btn-glow btn-lg">
<span id="btnText">Submit Booking</span>
<span id="loader" class="spinner-border spinner-border-sm d-none"></span>
</button>
</div>

</form>
</div>
</section>

<!-- FOOTER -->
<footer class="footer text-center text-light py-3">
© 2026 LensArt Studio | All Rights Reserved
</footer>

<!-- WHATSAPP BUTTON -->
<a href="https://wa.me/919011163259"
class="btn btn-success rounded-circle"
style="position:fixed;bottom:25px;right:25px;width:60px;height:60px;font-size:26px;display:flex;align-items:center;justify-content:center;z-index:999;">
<i class="fab fa-whatsapp"></i>
</a>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

<script>

/* NAVBAR SCROLL */
window.addEventListener("scroll", function(){
const nav = document.querySelector(".navbar");
if(window.scrollY > 50){
nav.style.background = "rgba(0,0,0,.9)";
}else{
nav.style.background = "rgba(0,0,0,.55)";
}
});

/* SMOOTH SCROLL */
document.querySelectorAll('a[href^="#"]').forEach(anchor=>{
anchor.addEventListener('click',function(e){
e.preventDefault();
document.querySelector(this.getAttribute('href')).scrollIntoView({behavior:'smooth'});
});
});

/* REVEAL */
function reveal(){
document.querySelectorAll(".reveal").forEach(el=>{
let top = el.getBoundingClientRect().top;
let height = window.innerHeight;
if(top < height - 100){
el.classList.add("active");
}
});
}
window.addEventListener("scroll", reveal);

/* COUNTER */
document.querySelectorAll(".counter").forEach(counter=>{
let target = +counter.getAttribute("data-target");
let count = 0;
let speed = target / 100;
let update = ()=>{
count += speed;
if(count < target){
counter.innerText = Math.floor(count);
requestAnimationFrame(update);
}else{
counter.innerText = target;
}
};
update();
});

/* LOADING BUTTON */
document.querySelector("form").addEventListener("submit", ()=>{
document.getElementById("btnText").classList.add("d-none");
document.getElementById("loader").classList.remove("d-none");
});

</script>

</body>
</html>
