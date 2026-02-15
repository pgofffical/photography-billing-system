<!DOCTYPE html>
<html>
<head>
<title>Book Event</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>

<body class="bg-dark text-white">

<div class="container mt-5" style="max-width:600px">
    <h3 class="text-center mb-4">Book Your Event</h3>

    <form action="addClient" method="post">

        <div class="mb-3">
            <input type="text" name="name" class="form-control" placeholder="Your Name" required>
        </div>

        <div class="mb-3">
            <input type="text" name="phone" class="form-control" placeholder="Phone Number" required>
        </div>

        <div class="mb-3">
            <input type="email" name="email" class="form-control" placeholder="Email" required>
        </div>

        <div class="mb-3">
            <select name="eventType" class="form-control">
                <option>Wedding</option>
                <option>Birthday</option>
                <option>Pre Wedding</option>
                <option>Other</option>
            </select>
        </div>

        <button class="btn btn-warning w-100">Submit Booking</button>
    </form>
</div>

</body>
</html>
