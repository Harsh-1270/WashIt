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
                        <a href="neworder.jsp" class="nav-item nav-link active">New Order</a>
                        <a href="order_history.jsp" class="nav-item nav-link">Order History</a>
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
                <h3 class="display-3 mb-4 wow fadeInDown" data-wow-delay="0.1s">New Order</h1>
                <ol class="breadcrumb justify-content-center mb-0 wow fadeInDown" data-wow-delay="0.3s">
                    <li class="breadcrumb-item"><a href="index.jsp">Home</a></li>
                    <li class="breadcrumb-item active text-primary">New Order</li>
                </ol>    
            </div>
        </div>
        <!-- Header End -->


        <!-- write your page code here -->
          

        <div class="container-fluid overflow-hidden py-5">
            <div class="container py-5">
                <div class="row g-5">
                    <div class="col-lg-6 wow fadeInUp" data-wow-delay="0.1s">
                        <div class="RotateMoveLeft">
                            <img src="img/laundry-6.png" class="img-fluid w-100" alt="" style="margin-top: -120px;">
                        </div>
                    </div>
                    <div class="col-lg-6 wow fadeInUp" data-wow-delay="0.3s">
                        <h4 class="mb-4 text-primary">Add Clothes</h4>
                        <form action="OrderServlet" method="post">
                            <div class="container" style="max-width: 1000px;">
                                <div class="row">
                                    <div class="col-lg-6 col-md-6 mb-3">
                                        <div class="input-group">
                                            <div class="input-group-prepend">
                                                <img src="img/shirt.png" class="input-icon" alt="Shirt Icon">
                                            </div>
                                            <input type="number" class="form-control clothes-input" id="shirt" name="shirts" placeholder="Enter No of Shirts">
                                        </div>
                                    </div>
                                    <div class="col-lg-6 col-md-6 mb-3">
                                        <div class="input-group">
                                            <div class="input-group-prepend">
                                                <img src="img/t-shirt.png" class="input-icon" alt="T-Shirt Icon">
                                            </div>
                                            <input type="number" class="form-control clothes-input" id="tshirt" name="tshirts" placeholder="Enter No of T-Shirts">
                                        </div>
                                    </div>
                                    
                                    <div class="col-lg-6 col-md-6 mb-3">
                                        <div class="input-group">
                                            <div class="input-group-prepend">
                                                <img src="img/jeans.png" class="input-icon" alt="Pants Icon">
                                            </div>
                                            <input type="number" class="form-control clothes-input" id="pants" name="pants" placeholder="Enter No of Pants">
                                        </div>
                                    </div>
                                    <div class="col-lg-6 col-md-6 mb-3">
                                        <div class="input-group">
                                            <div class="input-group-prepend">
                                                <img src="img/trouser.png" class="input-icon" alt="Trouser Icon">
                                            </div>
                                            <input type="number" class="form-control clothes-input" id="trousers" name="trousers" placeholder="Enter No of Trousers">
                                        </div>
                                    </div>
        
                                    <div class="col-lg-6 col-md-6 mb-3">
                                        <div class="input-group">
                                            <div class="input-group-prepend">
                                                <img src="img/shorts (1).png" class="input-icon" alt="Shorts Icon">
                                            </div>
                                            <input type="number" class="form-control clothes-input" id="shorts" name="shorts" placeholder="Enter No of Shorts">
                                        </div>
                                    </div>
        
                                    <!-- Display total directly on the page -->
                                    <div class="col-lg-12 d-flex align-items-center mt-3">
                                        <label for="total" class="form-label">Total Clothes: </label>
                                        <span id="total" class="ms-2 fw-bold">0</span> <!-- Display total here -->
                                    </div>
        
                                   <div class="col-lg-12 d-flex justify-content-center mt-4">
   									 <button type="submit" class="btn btn-primary rounded-pill py-3 px-5 place-order-btn">Place Order</button>
								   </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
        
                <script>
                    document.querySelectorAll('.clothes-input').forEach(input => {
                        input.addEventListener('input', function () {
                            let total = 0;
                            document.querySelectorAll('.clothes-input').forEach(field => {
                                total += parseInt(field.value) || 0;
                            });
                            document.getElementById('total').textContent = total;
                        });
                    });
                </script>
            </div>
        </div>
        
        
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
    </body>

</html>