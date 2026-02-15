<!DOCTYPE html>
<html>
<head>
<title>Gallery | LensArt Studio</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" rel="stylesheet">

<style>
body{
    background: linear-gradient(rgba(0,0,0,.8), rgba(0,0,0,.8)),
                url("images/photo.png") center/cover fixed;
    color:white;
    font-family: 'Segoe UI', sans-serif;
}

/* Title */
.gallery-title{
    text-align:center;
    margin:40px 0 20px;
    font-weight:700;
    letter-spacing:1px;
}

/* Filter buttons */
.filter-btn{
    border-radius:25px;
    margin:5px;
}

/* Image Card */
.gallery-item{
    overflow:hidden;
    border-radius:15px;
    position:relative;
    cursor:pointer;
}

.gallery-item img{
    width:100%;
    transition:0.4s;
}

.gallery-item:hover img{
    transform:scale(1.1);
}

.overlay{
    position:absolute;
    inset:0;
    background:rgba(0,0,0,.5);
    display:flex;
    align-items:center;
    justify-content:center;
    opacity:0;
    transition:.3s;
}

.gallery-item:hover .overlay{
    opacity:1;
}

.overlay i{
    font-size:30px;
    color:white;
}
</style>
</head>

<body>

<div class="container">

    <h2 class="gallery-title">Event Gallery</h2>

    <!-- FILTER BUTTONS -->
    <div class="text-center mb-4">
        <button class="btn btn-warning filter-btn" onclick="filterSelection('all')">All</button>
        <button class="btn btn-outline-light filter-btn" onclick="filterSelection('wedding')">Wedding</button>
        <button class="btn btn-outline-light filter-btn" onclick="filterSelection('birthday')">Birthday</button>
        <button class="btn btn-outline-light filter-btn" onclick="filterSelection('prewedding')">Pre-Wedding</button>
    </div>

    <!-- GALLERY GRID -->
    <div class="row">

        <% for(int i=1;i<=15;i++){ %>
        <div class="col-md-4 mb-4 filter-item wedding">
            <div class="gallery-item" onclick="openModal('images/events/pexels-<%=i%>.jpg')">
                <img src="images/events/pexels-<%=i%>.jpg">
                <div class="overlay">
                    <i class="fa fa-search-plus"></i>
                </div>
            </div>
        </div>
        <% } %>

    </div>
</div>

<!-- IMAGE MODAL -->
<div class="modal fade" id="imgModal">
  <div class="modal-dialog modal-dialog-centered modal-lg">
    <div class="modal-content bg-dark">
      <div class="modal-body text-center">
        <img id="modalImg" class="img-fluid rounded">
      </div>
    </div>
  </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

<script>
function openModal(src){
    document.getElementById("modalImg").src = src;
    new bootstrap.Modal(document.getElementById('imgModal')).show();
}

function filterSelection(category){
    let items = document.getElementsByClassName("filter-item");
    for(let i=0;i<items.length;i++){
        items[i].style.display =
            (category=="all" || items[i].classList.contains(category))
            ? "block" : "none";
    }
}
</script>

</body>
</html>
