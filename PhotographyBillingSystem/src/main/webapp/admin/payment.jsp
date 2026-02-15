<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<title>Make Payment</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-dark text-white">

<div class="container mt-5">
    <div class="card p-4">
        <h4 class="text-center">Payment Method</h4>

        <form action="<%= request.getContextPath() %>/makePayment" method="post">
            <input type="hidden" name="invoiceId"
                   value="<%= request.getParameter("invoiceId") %>">

            <div class="mb-3">
                <label>Select Payment Method</label>
                <select name="method" class="form-select" required>
                    <option value="Cash">Cash</option>
                    <option value="UPI">UPI</option>
                    <option value="Card">Debit / Credit Card</option>
                </select>
            </div>

            <button class="btn btn-success w-100">
                <i class="fa fa-check"></i> Confirm Payment
            </button>
        </form>
    </div>
</div>

</body>
</html>
