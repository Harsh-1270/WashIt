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
        

        <!-- write your page code here -->
        
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Laundry Signup Page</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f8f9fa;
            
        }
        .login-container {
            width: 100vw;
            margin: 60px;
            height: 100%;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .login-form {
            background: white;
         
            width: 500px;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
        }
        .login-form h2 {
            margin-bottom: 20px;
            color: #343a40;
        }
        .btn-primary {
            background-color: #007bff;
            border: none;
        }
        .btn-primary:hover {
            background-color: #0056b3;
        }

        .h2 {
            margin-bottom: 20px;
            color: pink; 
        }

        #laundrylabel{
            color: #F74780;
        }
        .top-icons {
            position: absolute;
            top: 20px;
            right: 40px;
            display: flex;
            gap: 15px;
        }
        .icon-btn {
            position: relative;
            color: #F74780;
            font-size: 24px;
            cursor: pointer;
        }
        .icon-btn:hover {
            color: #0056b3;
        }
        .icon-btn::after {
            content: attr(data-title);
            position: absolute;
            top: 30px;
            left: 50%;
            transform: translateX(-50%);
            background-color: #343a40;
            color: white;
            padding: 5px 10px;
            border-radius: 5px;
            opacity: 0;
            visibility: hidden;
            transition: opacity 0.3s;
            white-space: nowrap;
            font-size: 14px;
        }
        .icon-btn:hover::after {
            opacity: 1;
            visibility: visible;
        }
    </style>
</head>
<body>
    <div class="top-icons">
        <a href="studentlogin.jsp" class="icon-btn" data-title="Student">
            <i class="fas fa-user-graduate"></i>
        </a>
        <a href="admin.jsp" class="icon-btn" data-title="Admin">
            <i class="fas fa-user"></i>
        </a>
    </div>
    
    <div class="container login-container">
        <form class="login-form" action="LaundryPersonRegisterServlet" method="post">
            
            <h2 class="text-center" id="laundrylabel">LAUNDRY SIGN UP</h2>
            <div class="form-group">
                <label for="First Name ">First Name</label>
                <input type="name" class="form-control" id="fname" name="fname" placeholder="Enter First Name" required>
            </div>
            <div class="form-group">
                <label for="Last Name ">Last Name</label>
                <input type="name" class="form-control" id="lname" name="lname"placeholder="Enter Last Name" required>
            </div>
            <div class="form-group">
                <label for="Contact">Contact</label>
                <input type="Contact" class="form-control" id="contact" name="contact" placeholder="Enter Contact Number" required>
            </div>
            <div class="form-group">
                <label for="E-mail">E-mail</label>
                <input type="email" class="form-control" id="email" name="email" placeholder="Enter Email address" required>
            </div>
            <div class="form-group">
                <label for="Password">Create Password</label>
                <input type="password" class="form-control" id="password" name="password" placeholder="Enter Password" required>
            </div>
            <div class="form-group">
                <label for="password">Confirm Password</label>
                <input type="password" class="form-control" id="cpassword" name="cpassword" placeholder="Confirm Password" required>
            </div>
            <button type="submit" class="btn btn-primary btn-block" onclick="return validate()">Sign Up</button>
            <p class="text-center mt-3">
                <a href="#">Forgot password?</a>
            </p>
            <p class="text-center mb-0">Already have an Account? <a href="laundrylogin.jsp">Sign In</a></p>
        </form>
        <script>
            function validate() {
            
                const fname = document.getElementById('fname').value.trim();
                const lname = document.getElementById('lname').value.trim();
                const contact = document.getElementById('contact').value.trim();
                const email = document.getElementById('email').value.trim();
                const password = document.getElementById('password').value.trim();
                const cpassword = document.getElementById('cpassword').value.trim();
    
                
                if (fname === "" || /\d/.test(fname)) {
                    alert("First Name is required and should not contain numbers.");
                    return false;
                }
    
               
                if (lname === "" || /\d/.test(lname) ) {
                    alert("Last Name is required and should not contain numbers.");
                    return false;
                }
    
    
                if (!/^\d{10}$/.test(contact)) {
                    alert("Contact Number must be a 10-digit number.");
                    return false;
                }
    
        
                const emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
                if (!emailPattern.test(email)) {
                    alert("Please enter a valid email address.");
                    return false;
                }
    
                if (password.length < 6) {
                    alert("Password must be at least 6 characters long.");
                    return false;
                }
    
                
                if (password !== cpassword) {
                    alert("Passwords do not match.");
                    return false;
                }
    
                
                alert("Form submitted successfully!");
                return true; 
            }
        </script>
    </div>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

           
       

    <script src="js/main.js"></script>
    </body>

</html>