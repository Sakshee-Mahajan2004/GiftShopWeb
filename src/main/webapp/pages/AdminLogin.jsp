<!DOCTYPE html>
<html>

<head>
  <!-- Basic -->
  <meta charset="utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <!-- Mobile Metas -->
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
  <!-- Site Metas -->
  <meta name="keywords" content="" />
  <meta name="description" content="" />
  <meta name="author" content="" />
  <link rel="shortcut icon" href="images/favicon.png" type="image/x-icon">

  <title>
    GiftHouse
  </title>

  <!-- slider stylesheet -->
  <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css" />

  <!-- bootstrap core css -->
  <link rel="stylesheet" type="text/css" href="css/bootstrap.css" />

  <!-- Custom styles for this template -->
  <link href="css/style.css" rel="stylesheet" />
  <!-- responsive style -->
  <link href="css/responsive.css" rel="stylesheet" />
</head>
<body>
	
	<div class="hero_area">
	    <!-- header section strats -->
	    <header class="header_section">
	      <nav class="navbar navbar-expand-lg custom_nav-container ">
	        <a class="navbar-brand" href="/">
	          <span>
	            GiftHouse
	          </span>
	        </a>
	        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
	          <span class=""></span>
	        </button>

	        <div class="collapse navbar-collapse innerpage_navbar" id="navbarSupportedContent">
	          <ul class="navbar-nav  ">
	            <li class="nav-item ">
	              <a class="nav-link" href="index">Home <span class="sr-only">(current)</span></a>
	            </li>
	            <li class="nav-item">
	              <a class="nav-link" href="shop">
	                Shop
	              </a>
	            </li>
	            <li class="nav-item">
	              <a class="nav-link" href="why">
	                Why Us
	              </a>
	            </li>
	            <li class="nav-item">
	              <a class="nav-link" href="testimonial">
	                Testimonial
	              </a>
	            </li>
	            <li class="nav-item active">
	              <a class="nav-link" href="contact">Contact Us</a>
	            </li>
	          </ul>
			  <a href="AdminLogin">
			                <i class="fa fa-user" aria-hidden="true"></i>
			                <span>
			                  AdminLogin
			                </span>
			              </a>
	           
	            </form>
	          </div>
	        </div>
	      </nav>
	    </header>
	<center>
		<div class="login-container">
		       <h2>Login</h2>
		       <form action="CheckUserCred" method="post">
		           <div class="form-group">
		               <label for="username">Username</label>
		               <input type="text" id="username" class="form-control" name="un" placeholder="Enter username" required>
		           </div>
		           <div class="form-group">
		               <label for="password">Password</label>
		               <input type="password" id="password" class="form-control" name="pw" placeholder="Enter password" required>
		           </div>
		           <button type="submit" class="btn btn-primary">Login</button>
		           <a href="#" class="forgot-password">Forgot Password?</a>
		       </form>
		   </div>
		   
</center>





 <footer class=" footer_section">
      <div class="container">
        <p>
          &copy; <span id="displayYear"></span> All Rights Reserved By
          <a href="https://html.design/">Free Html Templates</a>
        </p>
      </div>
    </footer>
    <!-- footer section -->

  </section>

  <!-- end info section -->


  <script src="js/jquery-3.4.1.min.js"></script>
  <script src="js/bootstrap.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js">
  </script>
  <script src="js/custom.js"></script>

</body>

</html>

<style>
	

	        .login-container {
				top-margin:50px;
	            background: #fff;
	            padding: 30px;
	            border-radius: 10px;
	            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
	            width: 100%;
	            max-width: 400px;
	        }

	        .login-container h2 {
	            text-align: center;
	            margin-bottom: 20px;
	            color: #333;
	        }

	        .form-group label {
	            font-weight: bold;
	            color: #555;
	        }

	        .btn-primary {
	            width: 100%;
	            background-color: #2874f0;
	            border: none;
	            padding: 10px;
	            font-size: 16px;
	            border-radius: 5px;
	            transition: background-color 0.3s;
	        }

	        .btn-primary:hover {
	            background-color: #0056b3;
	        }

	        .forgot-password {
	            display: block;
	            margin-top: 10px;
	            text-align: center;
	            font-size: 14px;
	            color: #2874f0;
	            text-decoration: none;
	        }

	        .forgot-password:hover {
	            text-decoration: underline;
	        }	
	</style>
