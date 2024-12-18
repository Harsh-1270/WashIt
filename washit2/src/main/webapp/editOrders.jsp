<%@ page import="java.sql.*" %>
<%
    String firstName = request.getParameter("firstName");
    String hostel = request.getParameter("hostel");
    String roomno = request.getParameter("roomno");
    String Shirts = request.getParameter("Shirts");
    String TShirts = request.getParameter("TShirts");
    String Pants = request.getParameter("Pants");
    String Trousers = request.getParameter("Trousers");
    String Shorts = request.getParameter("Shorts");
    String Total = request.getParameter("Total");
    String Status = request.getParameter("Status");
%>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Laundry Person</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="style2.css" rel="stylesheet">
    
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta content="" name="keywords">
        <meta content="" name="description">

        <!-- Google Web Fonts -->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@500;600;700&family=Rubik:wght@400;500&display=swap" rel="stylesheet"> 

        <!-- Icon Font Stylesheet -->
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css"/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

        <!-- Libraries Stylesheet -->
        <link href="lib/animate/animate.min.css" rel="stylesheet">
        <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
        <link href="lib/lightbox/css/lightbox.min.css" rel="stylesheet">


        <!-- Customized Bootstrap Stylesheet -->
        <link href="css/bootstrap.min.css" rel="stylesheet">

        <!-- Template Stylesheet -->
        <link href="css/style.css" rel="stylesheet">
</head>
<body>
<div class="container mt-5" style="width:50%;">
    <div class="card shadow-lg p-4">
        <h2 class="text-center mb-4" style="color:#f74780">Edit Student Details</h2>
        <form action="UpdateOrders" method="post">
            <input type="hidden" name="originalName" value="<%= firstName %>">

            <div style="margin-bottom: 1em;">
                <div class="mb-3">
                    <label for="firstName" class="form-label">First Name:</label>
                    <input type="text" id="firstName" name="firstName" class="form-control" value="<%= firstName %>" required>
                </div>

                <div class="mb-3">
                    <label for="hostel" class="form-label">Hostel:</label>
                    <input type="text" id="hostel" name="hostel" class="form-control" value="<%= hostel %>" required>
                </div>
                
                <div class="mb-3">
                    <label for="roomno" class="form-label">Room No:</label>
                    <input type="number" id="roomno" name="roomno" class="form-control" value="<%= roomno %>" required>
                </div>
            </div>

            <div style="margin-bottom: 1em;">
                <div class="mb-3">
                    <label for="Shirts" class="form-label">Shirts:</label>
                    <input type="text" id="Shirts" name="Shirts" class="form-control" value="<%= Shirts %>" required>
                </div>    

                <div class="mb-3">
                    <label for="TShirts" class="form-label">TShirts:</label>
                    <input type="text" id="TShirts" name="TShirts" class="form-control" value="<%= TShirts %>" required>
                </div>
                
                <div class="mb-3">
                    <label for="Pants" class="form-label">Pants:</label>
                    <input type="text" id="Pants" name="Pants" class="form-control" value="<%= Pants %>" required>
                </div>
                
                <div class="mb-3">
                    <label for="Trousers" class="form-label">Trousers:</label>
                    <input type="text" id="Trousers" name="Trousers" class="form-control" value="<%= Trousers %>" required>
                </div>
                
                <div class="mb-3">
                    <label for="Shorts" class="form-label">Shorts:</label>
                    <input type="text" id="Shorts" name="Shorts" class="form-control" value="<%= Shorts %>" required>
                </div>
                
                <div class="mb-3">
                    <label for="Total" class="form-label">Total:</label>
                    <input type="text" id="Total" name="Total" class="form-control" value="<%= Total %>" required>
                </div>
                
                <div class="mb-3">
                    <label for="Status" class="form-label">Status:</label>
                    <input type="text" id="Status" name="Status" class="form-control" value="<%= Status %>" required>
                </div>
            </div>

            <div class="d-grid gap-2">
                <button type="submit" class="btn btn-primary">Update</button>
            </div>
        </form>
    </div>
</div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
