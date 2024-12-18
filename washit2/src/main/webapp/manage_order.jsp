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
                        <a href="laundry.jsp" class="nav-item nav-link ">Home</a>
                        <a href="laundry.jsp" class="nav-item nav-link ">Search Order</a>
                        <a href="manage_order.jsp" class="nav-item nav-link active">Manage Order</a>
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
                <h3 class="display-3 mb-4 wow fadeInDown" data-wow-delay="0.1s">Manage Order</h1>
                <ol class="breadcrumb justify-content-center mb-0 wow fadeInDown" data-wow-delay="0.3s">
                    <li class="breadcrumb-item"><a href="laundry.jsp">Home</a></li>
                    
                    <li class="breadcrumb-item active text-primary">Manage Order</li>
                </ol>    
            </div>
        </div>
        <!-- Header End -->

       <!--Write you code here-->

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.*" %>
<%@ page import="com.entities.Order" %>

<%
    String student_id = (String) session.getAttribute("student_id");

    List<Order> orders = new ArrayList<>();
    String query = "SELECT o.id, s.first_name, s.hostel, s.roomno, o.total, o.orderDate, o.status " +
                   "FROM orders o " +
                   "JOIN students s ON o.student_id = s.id " +
                   "ORDER BY o.orderDate DESC";

    String jdbcURL = "jdbc:mysql://localhost:3307/washit"; 
    String dbUser = "root";
    String dbPass = "1234"; 

   
    try (Connection connection = DriverManager.getConnection(jdbcURL, dbUser, dbPass);
         PreparedStatement statement = connection.prepareStatement(query)) {

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

<div class="container mt-2">
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
                        <form action="viewDetailsLaundry.jsp" method="get">
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
%>
       
        <!--Code Ends here  -->
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
    

    <!-- Template Javascript -->
    <script src="js/main.js"></script>
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
     
    </body>

</html>