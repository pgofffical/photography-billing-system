<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Event Gallery | LensArt Studio</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body{
            min-height:100vh;
            background:
                linear-gradient(rgba(0,0,0,0.75), rgba(0,0,0,0.75)),
                url("../images/photo1.png");
            background-size:cover;
            background-position:center;
            font-family:"Segoe UI", sans-serif;
        }

        /* Header */
        .gallery-header{
            background:rgba(0,0,0,0.6);
            padding:18px 30px;
            border-radius:15px;
            display:flex;
            align-items:center;
            justify-content:center;
            gap:15px;
            margin-bottom:30px;
        }

        .gallery-header img{
            height:55px;
        }

        .gallery-header h2{
            color:#fff;
            font-weight:800;
            letter-spacing:1px;
            margin:0;
        }

        /* Gallery Card */
        .gallery-card{
            border:none;
            border-radius:18px;
            overflow:hidden;
            box-shadow:0 12px 30px rgba(0,0,0,0.45);
            background:#000;
        }

        .gallery-img{
            width:100%;
            height:260px;
            object-fit:cover;
            cursor:pointer;
        }

        /* Delete button */
        .delete-btn{
            position:absolute;
            top:10px;
            right:10px;
            z-index:2;
        }

        /* Admin upload box */
        .upload-box{
            background:rgba(0,0,0,0.6);
            padding:20px;
            border-radius:15px;
            margin-bottom:30px;
        }
    </style>
</head>

<body>

<div class="container py-5">

    <!-- Logo + Title -->
    <div class="gallery-header">
        <img src="../images/logo.png" alt="LensArt Logo">
        <h2>Event Gallery</h2>
    </div>

    <!-- ADMIN UPLOAD SECTION -->
    <div class="upload-box text-center text-white">
        <form action="<%=request.getContextPath()%>/UploadImageServlet"
		      method="post"
		      enctype="multipart/form-data">
		
		    <input type="file" name="image" class="form-control" required>
		    <button class="btn btn-success mt-2">Upload</button>
		</form>

    </div>

    <!-- Gallery -->
    <div class="row g-4">

        <% for(int i=1;i<=15;i++){ %>
        <div class="col-lg-4 col-md-6">
            <div class="card gallery-card position-relative">

                <!-- DELETE FORM -->
                <form action="../DeleteImageServlet" method="post">
                    <input type="hidden" name="imageName" value="pexels-<%=i%>.jpg">
                    <button class="btn btn-danger btn-sm delete-btn"
                            onclick="return confirm('Delete this image?')">
                        🗑
                    </button>
                </form>

                <!-- IMAGE -->
                <img src="../images/events/pexels-<%=i%>.jpg"
                     class="gallery-img"
                     alt="Event <%=i%>"
                     onclick="openImage(this.src)">
            </div>
        </div>
        <% } %>

    </div>

</div>

<!-- IMAGE MODAL -->
<div class="modal fade" id="imageModal" tabindex="-1">
    <div class="modal-dialog modal-dialog-centered modal-xl">
        <div class="modal-content bg-dark border-0">
            <div class="modal-body text-center p-0">
                <img id="modalImage" src="" class="img-fluid rounded">
            </div>
        </div>
    </div>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

<script>
function openImage(imgSrc){
    document.getElementById("modalImage").src = imgSrc;
    new bootstrap.Modal(document.getElementById("imageModal")).show();
}
</script>

</body>
</html>
