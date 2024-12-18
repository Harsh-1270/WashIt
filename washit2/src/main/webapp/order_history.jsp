<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <title>WashIt - Laundry Made Easy</title>
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

        <!-- Spinner Start -->
        <div id="spinner" class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
            <div class="spinner-border text-primary" style="width: 3rem; height: 3rem;" role="status">
                <span class="sr-only">Loading...</span>
            </div>
        </div>
        <!-- Spinner End -->


        <!-- Navbar & Hero Start -->
        <div class="container-fluid header position-relative overflow-hidden p-0">
            <nav class="navbar navbar-expand-lg fixed-top navbar-light px-4 px-lg-5 py-3 py-lg-0">
                <a href="index.jsp" class="navbar-brand p-0">
                    <h1 class="display-6 text-primary m-0"><i class="fas fa-soap me-2"></i>WashIt</h1>
                    <!-- <img src="img/logo.png" alt="Logo"> -->
                </a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                    <span class="fa fa-bars"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarCollapse">
                    <div class="navbar-nav ms-auto py-0">
                        <a href="index.jsp" class="nav-item nav-link ">Home</a>
                        <a href="neworder.jsp" class="nav-item nav-link ">New Order</a>
                        <a href="order_history.jsp" class="nav-item nav-link active">Order History</a>
                        <a href="contact.jsp" class="nav-item nav-link">Contact Us</a>
                        <a href="about.jsp" class="nav-item nav-link">About</a>
                        <div class="nav-item dropdown">
                            <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown"><i class="fas fa-user"></i></a>
                            <div class="dropdown-menu m-0">
                                <a href="index.jsp" class="dropdown-item"><i class="fas fa-sliders-h fa-fw"></i>My Account</a>
                                <a href="index.jsp" class="dropdown-item"><i class="fas fa-cog fa-fw"></i> Setting</a>
                                <a href="StudentLogoutServlet" class="dropdown-item"><i class="fas fa-sign-out-alt fa-fw"></i>Log Out</a>
                            </div>
                        </div>
                    </div>
                </div>
            </nav>
       
        <!-- Navbar & Hero End -->


         <!-- Header Start -->
         <div class="container-fluid bg-breadcrumb">
            <ul class="breadcrumb-animation">
                <li></li>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
            </ul>
            <div class="container text-center py-5" style="max-width: 900px;">
                <h3 class="display-3 mb-4 wow fadeInDown" data-wow-delay="0.1s">Order History</h1>
                <ol class="breadcrumb justify-content-center mb-0 wow fadeInDown" data-wow-delay="0.3s">
                    <li class="breadcrumb-item"><a href="index.jsp">Home</a></li>
                    <li class="breadcrumb-item active text-primary">Order History</li>
                </ol>    
            </div>
        </div>
        <!-- Header End -->


        <!-- write your page code here -->
        
<%@ page import="java.sql.*" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page import="com.entities.Order" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="javax.servlet.http.HttpSession" %>

<%
    String dbURL = "jdbc:mysql://localhost:3307/washit"; 
    String dbUser = "root"; 
    String dbPass = "1234";

    List<Order> orders = new ArrayList<>();

    HttpSession currentSession = request.getSession(); 
    Integer studentId = (Integer) currentSession.getAttribute("student_id"); 

    if (studentId == null) {
        out.println("Student ID is not available. Please log in.");
        return; 
    }

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection conn = DriverManager.getConnection(dbURL, dbUser, dbPass);
        
        String sql = "SELECT o.id, s.first_name, s.hostel, s.roomno, o.total, o.orderDate, o.status " +
                     "FROM orders o " +
                     "JOIN students s ON o.student_id = s.id " +
                     "WHERE o.student_id = ? ORDER BY o.orderDate DESC";

        PreparedStatement stmt = conn.prepareStatement(sql);
        stmt.setInt(1, studentId); 
        ResultSet resultSet = stmt.executeQuery();

        while (resultSet.next()) {
            Order order = new Order(
                resultSet.getInt("id"),
                resultSet.getString("first_name"),
                resultSet.getString("hostel"),
                resultSet.getString("roomno"),
                resultSet.getInt("total"),
                resultSet.getTimestamp("orderDate"),
                resultSet.getString("status")
            );
            orders.add(order);
        }

        resultSet.close();
        stmt.close();
        conn.close();
    } catch (Exception e) {
        e.printStackTrace();
    }

    SimpleDateFormat dateFormat = new SimpleDateFormat("dd-MM-yyyy HH:mm"); 
%>

<div class="container mt-5">
    <table class="table table-bordered table-hover">
        <thead class="thead-light">
            <tr>
                <th>Sr. No</th>
                <th>First Name</th>
                <th>Hostel</th>
                <th>Room No</th>
                <th>Total Clothes</th>
                <th>Order Date</th>
                <th>Status</th>
                <th>Edit</th>
                <th>Delete</th>
                <th>View Details</th>
            </tr>
        </thead>
        <tbody>
            <%
                if (orders.isEmpty()) {
            %>
                <tr>
                    <td colspan="9" class="text-center">No orders found.</td>
                </tr>
            <%
                } else {
                    int srNo = 1; 
                    for (Order order : orders) {
            %>
                <tr>
                    <td><%= srNo++ %></td>
                    <td><%= order.getFirstName() %></td>
                    <td><%= order.getHostel() %></td>
                    <td><%= order.getRoomNo() %></td>
                    <td><%= order.getTotalClothes() %></td>
                    <td><%= dateFormat.format(order.getOrderDate()) %></td>
                    <td><%= order.getStatus() %></td>
                    <td>
                        <% if ("PENDING".equals(order.getStatus())) { %>
                            <a href="edit.jsp?id=<%= order.getId() %>" class="btn btn-primary btn-sm">Edit</a>
                        <% } else { %>
                            <a href="" class="btn btn-primary btn-sm" disabled>Edit</a>
                        <% } %>
                    </td>
                    <td>
    						<% if ("PENDING".equals(order.getStatus())) { %>
       							 <a href="<%= request.getContextPath() %>/DeleteOrderServlet?id=<%= order.getId() %>" class="btn btn-danger btn-sm">Delete</a>
    						<% } else { %>
        						<a href="#" class="btn btn-danger btn-sm" disabled>Delete</a>
    						<% } %>
					</td>


                    <td><a href="viewDetailsStudent.jsp?id=<%= order.getId() %>" class="btn btn-info btn-sm">View Details</a></td>
                </tr>
            <%
                    }
                }
            %>
        </tbody>
    </table>
</div>

  
        
        
           <!-- Copyright Start -->
           <div class="container-fluid copyright py-4">
            <div class="container">
                <div class="row g-4 align-items-center">
                    <div class="col-md-6 text-center text-md-start mb-md-0">
                        <span class="text-white"><a href="#"><i class="fas fa-copyright text-light me-2"></i>WashIt</a>, All right reserved.</span>
                    </div>
                    <div class="col-md-6 text-center text-md-end text-white">
                        Designed By <a class="border-bottom" href="https://htmlcodex.com">Team A</a> 
                    </div>
                </div>
            </div>
        </div>
        <!-- Copyright End -->


        <!-- Back to Top -->
        <a href="#" class="btn btn-primary btn-lg-square back-to-top"><i class="fa fa-arrow-up"></i></a>   

        
    <!-- JavaScript Libraries -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="lib/wow/wow.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/waypoints/waypoints.min.js"></script>
    <script src="lib/counterup/counterup.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>
    <script src="lib/lightbox/js/lightbox.min.js"></script>
    

    <!-- Template Javascript -->
    <script src="js/main.js"></script>
    </body>

</html>