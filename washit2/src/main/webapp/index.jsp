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
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">


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
                        <a href="index.jsp" class="nav-item nav-link active">Home</a>
                        <a href="neworder.jsp" class="nav-item nav-link">New Order</a>
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


            <!-- Hero Header Start -->
            <div class="hero-header overflow-hidden px-5">
                <div class="rotate-img">
                    <img src="img/sty-1.png" class="img-fluid w-100" alt="">
                    <div class="rotate-sty-2"></div>
                </div>
                <div class="row gy-5 align-items-center">
                    <div class="col-lg-6 wow fadeInLeft" data-wow-delay="0.1s">
                        <h1 class="display-4 text-dark mb-4 wow fadeInUp" data-wow-delay="0.3s">Turn Laundry Services into Convenience</h1>
                        <p class="fs-4 mb-4 wow fadeInUp" data-wow-delay="0.5s">Simplify hostel laundry services with a platform that connects students and staff, automating bookings for better coordination and satisfaction.</p>
                        <a href="#" class="btn btn-primary rounded-pill py-3 px-5 wow fadeInUp" data-wow-delay="0.7s">Get Started</a>
                    </div>
                    <div class="col-lg-6 wow fadeInRight" data-wow-delay="0.2s">
                        <img src="img/laundry-01.png" class="img-fluid w-100 h-100" alt="">
                    </div>
                </div>
            </div>
            <!-- Hero Header End -->
        </div>
        <!-- Navbar & Hero End -->


        <!-- About Start -->
        <div class="container-fluid overflow-hidden py-5"  style="margin-top: 6rem;">
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
                        <p class="mb-4">At WashIt, we simplify laundry services for hostels by connecting students with laundry providers through our user-friendly platform. Our mission is to enhance student living by offering reliable and convenient laundry solutions. With automated bookings and improved communication, we ensure a seamless laundry experience that fits perfectly into hostel life.</p>
                        <a href="#" class="btn btn-primary rounded-pill py-3 px-5">About More</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- About End -->


        <!-- Service Start -->
        <div class="container-fluid service py-5">
            <div class="container py-5">
                <div class="text-center mx-auto mb-5 wow fadeInUp" data-wow-delay="0.1s" style="max-width: 900px;">
                    <h4 class="mb-1 text-primary">Our Process</h4>
                    <h1 class="display-5 mb-4">This is how we work</h1>
                    <p class="mb-0">Our streamlined process ensures a seamless experience from pickup to delivery, making laundry effortless for you</p>
                </div>
                <div class="row g-4 justify-content-center">
                    <div class="col-md-6 col-lg-4 col-xl-3 wow fadeInUp" data-wow-delay="0.1s">
                        <div class="service-item text-center rounded p-4">
                            <div class="service-icon d-inline-block bg-light rounded p-4 mb-4"><img src="img/services-icon1.svg"/></div>
                            <div class="service-content">
                                <h4 class="mb-4">Collect Your Clothes</h4>
                                <p class="mb-4">We conveniently pick up your laundry from your hostel, ensuring a hassle-free washing experience
                                </p>
                                <a href="#" class="btn btn-light rounded-pill text-primary py-2 px-4">Read More</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3 wow fadeInUp" data-wow-delay="0.3s">
                        <div class="service-item text-center rounded p-4">
                            <div class="service-icon d-inline-block bg-light rounded p-4 mb-4"><img src="img/services-icon2.svg"/></div>
                            <div class="service-content">
                                <h4 class="mb-4">Wash Your Clothes</h4>
                                <p class="mb-4">We professionally clean and iron your laundry with care, ensuring freshness finish for every piece
                                </p>
                                <a href="#" class="btn btn-light rounded-pill text-primary py-2 px-4">Read More</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3 wow fadeInUp" data-wow-delay="0.5s">
                        <div class="service-item text-center rounded p-4">
                            <div class="service-icon d-inline-block bg-light rounded p-4 mb-4"><img src="img/services-icon3.svg"/></div>
                            <div class="service-content">
                                <h4 class="mb-4">Get Delivery</h4>
                                <p class="mb-4">We ensure delivery of your cleaned and ironed clothes, keeping you notified everytime.
                                </p>
                                <a href="#" class="btn btn-light rounded-pill text-primary py-2 px-4">Read More</a>
                            </div>
                        </div>
                    </div>
                   
        <!-- Service End -->


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
                                <p class="mt-4 mb-0">We Offer Free Services for: Shirts, T-shirts, Pants, Trousers, and Shortsâensuring all your essential garments are cleaned and cared for at no extra cost. </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3 wow fadeInUp" data-wow-delay="0.3s">
                        <div class="text-center p-4">
                            <div class="d-inline-block rounded bg-light p-4 mb-4"><i class="fas fa-tshirt" style="color: darkblue; font-size: 3em;"></i>

                            </div>
                            <div class="feature-content">
                                <a href="#" class="h4">Get Ironed</a>
                                <p class="mt-4 mb-0">Free Ironing: Receive complimentary ironing for shirts, T-shirts, pants, trousers, and shortsâensuring your essentials look crisp and polished. </p>
                            </div>
                        </div>
                    </div>
                   

                    <!-- Paid Services -->

                    <div class="container-fluid feature overflow-hidden py-5">
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
                                            <p class="mt-4 mb-0">We Offer Paid Services for: Bedsheets, Blankets, and Woolen Clothesâproviding specialized cleaning and care for your larger items to ensure they remain fresh and cozy.</p>
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
                   <!-- Feature end -->            


        <!-- FAQ Start -->
        <div class="container-fluid FAQ bg-light overflow-hidden py-5">
            <div class="container py-5">
                <div class="row g-5 align-items-center">
                    <div class="col-lg-6 wow fadeInLeft" data-wow-delay="0.1s">
                       <div class="accordion" id="accordionExample">
                            <div class="accordion-item border-0 mb-4">
                                <h2 class="accordion-header" id="headingOne">
                                    <button class="accordion-button rounded-top" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseTOne">
                                        Why should I choose your laundry services for my hostel?
                                    </button>
                                </h2>
                                <div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
                                    <div class="accordion-body my-2">
                                        
                                        <p> Our laundry services are tailored specifically for hostel environments, providing convenience for students. We offer hassle-free pickups and deliveries, automated notifications, and a user-friendly platform that enhances your laundry experience, allowing you to focus on your studies and social life.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="accordion-item border-0 mb-4">
                                <h2 class="accordion-header" id="headingTwo">
                                    <button class="accordion-button collapsed rounded-top" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                        Are there any hidden charges? 
                                    </button>
                                </h2>
                                <div id="collapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo" data-bs-parent="#accordionExample">
                                    <div class="accordion-body my-2">
                                        
                                        <p>No, there are no hidden charges! We provide complimentary cleaning and ironing for shirts, T-shirts, shorts, pants, and trousers. Our pricing is transparent, and you will know the total cost upfront, ensuring you can enjoy our services without any surprises.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="accordion-item border-0">
                                <h2 class="accordion-header" id="headingThree">
                                    <button class="accordion-button collapsed rounded-top" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                        How will I be notified about my laundry pickup and delivery?
                                    </button>
                                </h2>
                                <div id="collapseThree" class="accordion-collapse collapse" aria-labelledby="headingThree" data-bs-parent="#accordionExample">
                                    <div class="accordion-body my-2">
                                       
                                        <p>You will receive real-time notifications via our platform when your laundry is about to be picked up or delivered. This ensures you stay informed and can prepare accordingly, making the process seamless and hassle-free.</p>
                                    </div>
                                </div>
                            </div>
                       </div>
                    </div>
                    <div class="col-lg-6 wow fadeInRight" data-wow-delay="0.3s">
                        <div class="FAQ-img RotateMoveRight rounded">
                            <img src="img/laundry-3.png" class="img-fluid w-100" alt="">
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- FAQ End -->




        <!-- Testimonial Start -->
        <div class="container-fluid testimonial py-5">
            <div class="container py-5">
                <div class="text-center mx-auto mb-5 wow fadeInUp" data-wow-delay="0.1s" style="max-width: 900px;">
                    <h4 class="text-primary">Testimonial</h4>
                    <h1 class="display-5 mb-4">What Our Customer Say About Us</h1>
					<p class="mb-0">Our customers love the convenience and quality that WashIt brings to their lives. From prompt service to exceptional care for every item, we are proud to be trusted by countless users who rely on us for their laundry needs. Discover why so many choose WashIt for a seamless laundry experience.</p>
                </div>
                <div class="testimonial-carousel owl-carousel wow zoomInDown" data-wow-delay="0.2s">
                    <div class="testimonial-item" data-dot="<img class='img-fluid' src='img/harsh.png' alt=''>">
                        <div class="testimonial-inner text-center p-5">
                            <div class="d-flex align-items-center justify-content-center mb-4">
                                <div class="testimonial-inner-img border border-primary border-3 me-4" style="width: 100px; height: 100px; border-radius: 50%;">
                                    <img src="img/harsh.png" class="img-fluid rounded-circle" alt="">
                                </div>
                                <div>
                                    <h5 class="mb-2">Harsh Patel</h5>
                                    <p class="mb-0">Baroda, Gujarat</p>
                                </div>
                            </div>
							<p class="fs-7">"WashIt has made my life so much easier! Their service is fast, reliable, and my clothes come back perfectly cleaned every time. I couldn't be happier with the results!"</p>
                            
                            <div class="text-center">
                                <div class="d-flex justify-content-center">
                                    <i class="fas fa-star text-primary"></i>
                                    <i class="fas fa-star text-primary"></i>
                                    <i class="fas fa-star text-primary"></i>
                                    <i class="fas fa-star text-primary"></i>
                                    <i class="fas fa-star text-primary"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="testimonial-item" data-dot="<img class='img-fluid' src='img/harsh.png' alt=''>">
                        <div class="testimonial-inner text-center p-5">
                            <div class="d-flex align-items-center justify-content-center mb-4">
                                <div class="testimonial-inner-img border border-primary border-3 me-4" style="width: 100px; height: 100px; border-radius: 50%;">
                                    <img src="img/harsh.png" class="img-fluid rounded-circle" alt="">
                                </div>
                                <div>
                                    <h5 class="mb-2">Anmol Bhaiya</h5>
                                    <p class="mb-0">Karelibaug, Gujarat</p>
                                </div>
                            </div>
							<p class="fs-7">"I am amazed by the quality and efficiency of WashIt. Their attention to detail and customer care make them stand out from other services. It is the best decision I made for my laundry needs!"</p>
                            
                            <div class="text-center">
                                <div class="d-flex justify-content-center">
                                    <i class="fas fa-star text-primary"></i>
                                    <i class="fas fa-star text-primary"></i>
                                    <i class="fas fa-star text-primary"></i>
                                    <i class="fas fa-star text-primary"></i>
                                    <i class="fas fa-star text-primary"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="testimonial-item" data-dot="<img class='img-fluid' src='img/harsh.png' alt=''>">
                        <div class="testimonial-inner text-center p-5">
                            <div class="d-flex align-items-center justify-content-center mb-4">
                                <div class="testimonial-inner-img border border-primary border-3 me-4" style="width: 100px; height: 100px; border-radius: 50%;">
                                    <img src="img/harsh.png" class="img-fluid rounded-circle" alt="">
                                </div>
                                <div>
                                    <h5 class="mb-2">Aarchi Pancholi</h5>
                                    <p class="mb-0">Manjalpur, Gujarat</p>
                                </div>
                            </div>
                			<p class="fs-7">"WashIt delivers outstanding service every time. The process is so easy and convenient, and the results speak for themselves. I highly recommend it to anyone looking for dependable laundry care!"</p>
				            <div class="text-center">
                                <div class="d-flex justify-content-center">
                                    <i class="fas fa-star text-primary"></i>
                                    <i class="fas fa-star text-primary"></i>
                                    <i class="fas fa-star text-primary"></i>
                                    <i class="fas fa-star text-primary"></i>
                                    <i class="fas fa-star text-primary"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Testimonial End -->


        <!-- Footer Start -->
        <div class="container-fluid footer py-5 wow fadeIn" data-wow-delay="0.2s">
            <div class="container py-5">
                <div class="row g-5">            
                    <div class="col-md-6 col-lg-6 col-xl-3">
                        <div class="footer-item d-flex flex-column">
                            <h4 class="mb-4 text-dark">Quick Links</h4>
                            <a href=""> About Us</a>
                            <a href=""> Contact Us</a>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-6 col-xl-3">
                        <div class="footer-item d-flex flex-column">
                            <h4 class="mb-4 text-dark">Contact Info</h4>
                            <a href=""><i class="fa fa-map-marker-alt me-2"></i> Oslo House, Vadodara, Gujarat</a>
                            <a href=""><i class="fas fa-envelope me-2"></i> harshtutorials127@gmail.com</a>
                            <a href=""><i class="fas fa-phone me-2"></i> 8401401106</a>
                            <a href="" class="mb-3"><i class="fas fa-print me-2"></i> 8401401106</a>
                            <div class="d-flex align-items-center">
                                <i class="fas fa-share fa-2x text-secondary me-2"></i>
                                <a class="btn-square btn btn-primary rounded-circle mx-1" href=""><i class="fab fa-facebook-f"></i></a>
                                <a class="btn-square btn btn-primary rounded-circle mx-1" href=""><i class="fab fa-twitter"></i></a>
                                <a class="btn-square btn btn-primary rounded-circle mx-1" href=""><i class="fab fa-instagram"></i></a>
                                <a class="btn-square btn btn-primary rounded-circle mx-1" href=""><i class="fab fa-linkedin-in"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Footer End -->

        
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