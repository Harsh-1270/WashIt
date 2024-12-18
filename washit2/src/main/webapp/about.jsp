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
                        <a href="order_history.jsp" class="nav-item nav-link ">Order History</a>
                        <a href="contact.jsp" class="nav-item nav-link ">Contact Us</a>
                        <a href="about.jsp" class="nav-item nav-link active">About</a>
                        <div class="nav-item dropdown">
                            <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown"><i class="fas fa-user"></i></a>
                            <div class="dropdown-menu m-0" style="margin-right:20px;">
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
                <h3 class="display-3 mb-4 wow fadeInDown" data-wow-delay="0.1s">About Us</h1>
                <ol class="breadcrumb justify-content-center mb-0 wow fadeInDown" data-wow-delay="0.3s">
                    <li class="breadcrumb-item"><a href="index.jsp">Home</a></li>
                    <li class="breadcrumb-item active text-primary">About Us</li>
                </ol>    
            </div>
        </div>
        <!-- Header End -->


        <!-- About Start -->
        <div class="container-fluid overflow-hidden py-5 mt-5">
            <div class="container py-5">
                <div class="row g-5">
                    <div class="col-lg-6 wow fadeInUp" data-wow-delay="0.1s">
                        <div class="RotateMoveLeft">
                            <img src="img/laundry-2.png" class="img-fluid w-100" alt="">
                        </div>
                    </div>
                    <div class="col-lg-6 wow fadeInUp" data-wow-delay="0.3s">
                        <h4 class="mb-1 text-primary">About Us</h4>
                        <h1 class="display-5 mb-4">Revolutionizing Hostel Laundry</h1>
                        <p class="mb-4">At WashIt, we simplify laundry services for hostels by connecting students with laundry providers through our user-friendly platform. Our mission is to enhance student living by offering reliable and convenient laundry solutions. With automated bookings and improved communication, we ensure a seamless laundry experience that fits perfectly into hostel life.</p>                        </p>
                    </div>
                </div>
            </div>
        </div>
        <!-- About End -->


        <!-- Feature Start -->
        <div class="container-fluid feature overflow-hidden py-5">
            <div class="container py-5">
                <div class="text-center mx-auto mb-5 wow fadeInUp" data-wow-delay="0.1s" style="max-width: 900px;">
                    <h4 class="text-primary">Our Services</h4>
                    <h1 class="display-5 mb-4">Free Services</h1>
                    <p class="mb-0">Enjoy complimentary features like laundry pickups, delivery notifications to enhance your laundry experience.</p>
                </div>
                <div class="row g-4 justify-content-center text-center mb-5">
                    <div class="col-md-6 col-lg-4 col-xl-3 wow fadeInUp" data-wow-delay="0.1s">
                        <div class="text-center p-4">
                            <div class="d-inline-block rounded bg-light p-4 mb-4">  <i class="fas fa-water" style="color: darkblue; font-size: 3em;"></i>

                            </div>
                            <div class="feature-content">
                                <a href="#" class="h4">Cloth Laundry </a>
                                <p class="mt-4 mb-0">We Offer Free Services for: Shirts, T-shirts, Pants, Trousers, and Shorts—ensuring all your essential garments are cleaned and cared for at no extra cost. </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3 wow fadeInUp" data-wow-delay="0.3s">
                        <div class="text-center p-4">
                            <div class="d-inline-block rounded bg-light p-4 mb-4"><i class="fas fa-tshirt" style="color: darkblue; font-size: 3em;"></i>

                            </div>
                            <div class="feature-content">
                                <a href="#" class="h4">Get Ironed</a>
                                <p class="mt-4 mb-0">Free Ironing: Receive complimentary ironing for shirts, T-shirts, pants, trousers, and shorts—ensuring your essentials look crisp and polished. </p>
                            </div>
                        </div>
                    </div>
                   

                    <!-- Paid Services -->

                    <div class="container-fluid feature overflow-hidden py-5 ">
                        <div class="container py-5">
                            <div class="text-center mx-auto mb-5 wow fadeInUp" data-wow-delay="0.1s" style="max-width: 900px;">
                                
                                <h1 class="display-5 mb-4">Paid Services</h1>
                                <p class="mb-0">Providing expert cleaning and care for your larger and delicate items, ensuring they look their best and last longer.</p>
                            </div>
                            <div class="row g-4 justify-content-center text-center mb-5">
                                <div class="col-md-6 col-lg-4 col-xl-3 wow fadeInUp" data-wow-delay="0.1s">
                                    <div class="text-center p-4">
                                        <div class="d-inline-block rounded bg-light p-4 mb-4"><i class="fas fa-star" style="color: darkblue; font-size: 3em;"></i>
                                        </div>
                                        <div class="feature-content">
                                            <a href="#" class="h4">Speciality Service</a>
                                            <p class="mt-4 mb-0">We Offer Paid Services for: Bedsheets, Blankets, and Woolen Clothes—providing specialized cleaning and care for your larger items to ensure they remain fresh and cozy.</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6 col-lg-4 col-xl-3 wow fadeInUp" data-wow-delay="0.3s">
                                    <div class="text-center p-4">
                                        <div class="d-inline-block rounded bg-light p-4 mb-4"><i class="fas fa-certificate" style="color: darkblue; font-size: 3em;"></i>

                                        </div>
                                        <div class="feature-content">
                                            <a href="#" class="h4">Dry Cleaning</a>
                                            <p class="mt-4 mb-0">A gentle cleaning method using chemical solvents instead of water to effectively remove stains from delicate fabrics while preserving their quality.</p>
                                        </div>
                                    </div>
                                </div>
                             </div>
                          </div>
                    </div>
                   <!-- Feature end -->            


      

        
        <!-- Copyright Start -->
        <div class="container copyright py-4">
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