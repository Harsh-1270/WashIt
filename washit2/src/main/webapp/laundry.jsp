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
	
	
        <style>
            .modal-content {
                background-color: #f8f9fa;
            }
            .modal-header {
                background-color: #007bff;
                color: white;
            }
            .modal-footer {
                background-color: #f1f1f1;
            }
            
			.modal {
    			display: none;
    			position: fixed;
    			z-index: 1;
    			left: 0;
    			top: 0;
    			width: 100%;
    			height: 100%;
    			overflow: auto;
    			background-color: rgb(0,0,0);
    			background-color: rgba(0,0,0,0.4);
			}
			.modal-content {
    			background-color: #fefefe;
    			margin: 15% auto;
    			padding: 20px;
    			border: 1px solid #888;
    			width: 50%;
    			box-shadow: 0 5px 15px rgba(0,0,0,0.3);
    			border-radius: 5px;
			}
			.close {
    			color: #aaa;
    			float: right;
    			font-size: 28px;
    			font-weight: bold;
			}
			.close:hover,
			.close:focus {
    			color: black;
    			text-decoration: none;
    			cursor: pointer;
			}

        </style>
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
                <a href="laundry.jsp" class="navbar-brand p-0">
                    <h1 class="display-6 text-primary m-0"><i class="fas fa-soap me-2"></i>WashIt</h1>
                </a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                    <span class="fa fa-bars"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarCollapse">
                    <div class="navbar-nav ms-auto py-0">
                        <a href="laundry.jsp" class="nav-item nav-link active" id="homeBtn">Home</a>
                        <a href="#search-order-section" class="nav-item nav-link" id="searchOrderBtn">Search Order</a>
                        <a href="manage_order.jsp" class="nav-item nav-link">Manage Order</a>
                        <a href="contact2.jsp" class="nav-item nav-link">Contact Us</a>
                        <a href="about2.jsp" class="nav-item nav-link">About</a>
                        <div class="nav-item dropdown">
                            <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown"><i class="fas fa-user"></i></a>
                            <div class="dropdown-menu m-0">
                                <a href="laundry.jsp" class="dropdown-item"><i class="fas fa-sliders-h fa-fw"></i>My Account</a>
                                <a href="laundry.jsp" class="dropdown-item"><i class="fas fa-cog fa-fw"></i> Setting</a>
                                <a href="LaundryLogoutServlet" class="dropdown-item"><i class="fas fa-sign-out-alt fa-fw"></i>Log Out</a>
                            </div>
                        </div>
                    </div>
                </div>
            </nav>
        <!-- Navbar & Hero End -->


         
        <!--Home Page-->
        <div class="container-fluid overflow-hidden py-5"  style="margin-top: 6rem;">
            <div class="container py-5">
                <div class="row g-5">
                    <div class="col-lg-6 wow fadeInUp" data-wow-delay="0.1s">
                        <div class="RotateMoveLeft">
                            <img src="img/laundry-4.png" class="img-fluid w-100" alt="">
                        </div>
                    </div>
                    <div class="col-lg-6 wow fadeInUp" data-wow-delay="0.3s">
                        <h4 class="mb-1 text-primary">Our Responsibilty</h4>
                        <h1 class="display-5 mb-4">Simplifying Hostel Laundry</h1>
                        <p class="mb-4">At WashIt, we revolutionize the laundry experience for hostel students. Our user-friendly platform connects you with dependable laundry services, ensuring convenience and reliability.We promise timely pickups, quality cleaning, and transparent pricing, making laundry one less thing to worry about during your busy student life.</p>
                        <a href="#" class="btn btn-primary rounded-pill py-3 px-5">About More</a>
                    </div>
                </div>
            </div>
        </div>
        <!--Home page end-->
        
        
        <!-- write your page code here -->

        <!--Search Order-->
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
                <h3 class="display-3 mb-4 wow fadeInDown" data-wow-delay="0.1s">Search Order</h1>
                <ol class="breadcrumb justify-content-center mb-0 wow fadeInDown" data-wow-delay="0.3s">
                    <li class="breadcrumb-item"><a href="laundry.jsp">Home</a></li>
                    
                    <li class="breadcrumb-item active text-primary">Search Order</li>
                </ol>    
            </div>
        </div>
        <!-- Header End -->

        
            <!-- Search Order Ends -->
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.*" %>
<%@ page import="com.entities.Order" %> 

<section id="search-order-section">
    <form method="post">
        <div class="input-container">
            <div class="input-wrapper">
                <select name="hostel" class="drop" required>
                    <option value="" disabled selected>Select Hostel</option>
                    <option value="Oslo">Oslo</option>
                    <option value="Draemen">Draemen</option>
                    <option value="Auckland">Auckland</option>
                </select>
            </div>
            <div class="input-wrapper">
                <input type="text" placeholder="Enter Room No" name="room" class="input" required>
            </div>
        </div>
        <div class="parent-container">
            <button type="submit" class="btn btn-primary rounded-pill text-white py-2 px-4">Search</button>
        </div>
    </form>
</section>

<%
    if ("POST".equalsIgnoreCase(request.getMethod())) {
        String hostel = request.getParameter("hostel");
        String room = request.getParameter("room");

        List<Order> orders = new ArrayList<>();
        String query = "SELECT o.id, s.first_name, s.hostel, s.roomno, o.total, o.orderDate, o.status " +
                       "FROM orders o " +
                       "JOIN students s ON o.student_id = s.id " +
                       "WHERE s.hostel = ? AND s.roomno = ? " +
                       "ORDER BY o.orderDate DESC";
        
        

        // Database connection details
        String jdbcURL = "jdbc:mysql://localhost:3307/washit"; 
        String dbUser = "root"; 
        String dbPass = "1234"; 

        try (Connection connection = DriverManager.getConnection(jdbcURL, dbUser, dbPass);
             PreparedStatement statement = connection.prepareStatement(query)) {

            statement.setString(1, hostel);
            statement.setString(2, room);
            ResultSet resultSet = statement.executeQuery();

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
            SimpleDateFormat dateFormat = new SimpleDateFormat("dd-MM-yyyy HH:mm");

%>
<div id="search-results" class="container mt-2">

        <h4 class="mb-4 text-primary" style="margin: 0 15px;">Search Results</h4>
        
    <table class="table table-bordered table-hover">
        <thead class="thead-light">
                <tr>
                    <th>Sr No</th>
                    <th>First Name</th>
                    <th>Hostel</th>
                    <th>Room No</th>
                    <th>Total Clothes</th>
                    <th>Order Date</th>
                    <th>Status</th>
                    <th>Update Status</th>
                    <th>Send Notification</th>
                    <th>View Details</th>
                </tr>
            </thead>
            <tbody>
                <%
                    if (!orders.isEmpty()) {
                        int srNoCounter = 1; 
                        for (Order order : orders) {
                %>
                    <tr>
                        <td><%= srNoCounter++ %></td>
                        <td><%= order.getFirstName() %></td>
                        <td><%= order.getHostel() %></td>
                        <td><%= order.getRoomNo() %></td>
                        <td><%= order.getTotalClothes() %></td>
                        <td><%= dateFormat.format(order.getOrderDate()) %></td>
                        <td><%= order.getStatus() %></td>
                        <td>
                        <form action="UpdateStatusServlet" method="post" class="status-update-form">
   							 <input type="hidden" name="orderId" value="<%= order.getId() %>">
    							<select name="status" class="form-select" required>
        							<option value="" disabled selected>Choose Status</option>
        								<option value="PENDING">PENDING</option>
        								<option value="PICKED UP">PICKED UP</option>
        								<option value="IN PROCESS">IN PROCESS</option>
        							<option value="DELIVERED">DELIVERED</option>
    							</select>
    						<button type="submit" class="btn btn-warning" style="margin-top:10px; margin-left:20px;">Update Status</button>
						</form>
                        </td>
						<td>
    						<button type="button" class="btn btn-info" style="margin-top:20px; margin-left:40px;" onclick="openModal()">Notify</button>
						</td>

						<div id="notifyModal" class="modal">
						    <div class="modal-content">
						        <span class="close" onclick="closeModal()">&times;</span>
        						<h3 style="color:#f74780;">Send Notification</h3>
        					<form action="EmailServlet" method="post">
            					<input type="hidden" name="firstName" value="<%= order.getFirstName() %>">
            					<textarea name="emailBody" id="emailSubject" rows="4" style="width: 100%;"></textarea>
            					<button type="submit" class="btn btn-primary" style="margin-top: 10px;">Send</button>
        					</form>
    						</div>
						</div>
                        <td>
                            <form action="viewDetailsLaundry.jsp" method="post">
                                <input type="hidden" name="orderId" value="<%= order.getId() %>">
                                <button type="submit" class="btn btn-secondary" style="margin-top:20px; margin-left:25px;">View</button>
                            </form>
                        </td>
                    </tr>
                <%
                        }
                    } else {
                %>
                    <tr>
                        <td colspan="10" class="text-center">No orders found.</td>
                    </tr>
                <%
                    }
                %>
            </tbody>
        </table>
    </div>
<%
        } catch (SQLException e) {
            e.printStackTrace();
            out.println("<div class='alert alert-danger'>" + e.getMessage() + "</div>");
        }
    }
%>

        
        <!-- Search Order Ends -->
          


       
        
           <!-- Copyright Start -->
           <div class="container-fluid copyright py-4">
            <div class="container">
                <div class="row g-4 align-items-center">
                    <div class="col-md-6 text-center text-md-start mb-md-0">
                        <span class="text-white"><a href="#"><i class="fas fa-copyright text-light me-2"></i>WashIt</a>, All right reserved.</span>
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

    <!-- Scrollable Page Script -->
    <script>
        
        document.getElementById('searchOrderBtn').addEventListener('click', function (event) {
            event.preventDefault(); 
            const section = document.getElementById('search-order-section');
            section.scrollIntoView({ behavior: 'smooth' }); 
        
            document.querySelectorAll('.navbar-nav .nav-link').forEach(function (navLink) {
                navLink.classList.remove('active');
            });
        
            this.classList.add('active');
        });
        
        window.addEventListener('scroll', function () {
            const section = document.getElementById('search-order-section');
            const searchOrderBtn = document.getElementById('searchOrderBtn');
            const homeBtn = document.getElementById('homeBtn');
        
            const sectionPosition = section.getBoundingClientRect();
            const homePosition = window.scrollY; 
        
            if (sectionPosition.top <= window.innerHeight && sectionPosition.bottom >= 0) {
                document.querySelectorAll('.navbar-nav .nav-link').forEach(function (navLink) {
                    navLink.classList.remove('active');
                });
                searchOrderBtn.classList.add('active');
            } else if (homePosition < 100) { 
                document.querySelectorAll('.navbar-nav .nav-link').forEach(function (navLink) {
                    navLink.classList.remove('active');
                });
                homeBtn.classList.add('active');
            }
        });
        </script>
        
        <script>
			function openModal() {
   				document.getElementById("notifyModal").style.display = "block";
				}

			function closeModal() {
    			document.getElementById("notifyModal").style.display = "none";
				}

			window.onclick = function(event) {
    				var modal = document.getElementById("notifyModal");
    		if (event.target === modal) {
        			modal.style.display = "none";
    				}
				}
		</script>
        
        
    

    <!-- Template Javascript -->
    <script src="js/main.js"></script>
    </body>

</html>