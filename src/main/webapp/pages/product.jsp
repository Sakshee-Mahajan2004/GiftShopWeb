<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<section class="shop_section layout_padding">
  <div class="container">
    <div class="heading_container heading_center">
      <h2>
        Latest Products
      </h2>
    </div>

  
	<div class="row">
	     <c:forEach items="${temp}" var="e">
	       <div class="col-sm-6 col-md-4 col-lg-3">
	         <div class="box">
	           <a href="">
	             <div class="img-box">
	               <img src="images/${e.pimage}" alt=""> 
	             </div>
	             <div class="detail-box">
	               <h6>
	                 ${e.pname}
	               </h6>
	               <h6>
	                 Price:
	                 <span>
	                   ${e.pprice}
	                 </span>
	               </h6>
	             </div>
				 <div>
					<button><a href="AddToCart/${e.pid}">Add To Cart</a></button>
					</div>
	           </a>
	         </div>
	       </div>
	     </c:forEach>
	   </div>
	   

     <!-- <div class="col-sm-6 col-md-4 col-lg-3">
        <div class="box">
          <a href="">
            <div class="img-box">
              <img src="images/p2.png" alt="">
            </div>
            <div class="detail-box">
              <h6>
                Watch
              </h6>
              <h6>
                Price
                <span>
                  $300
                </span>
              </h6>
            </div>
            <div class="new">
              <span>
                New
              </span>
            </div>
          </a>
        </div>
      </div>
      <div class="col-sm-6 col-md-4 col-lg-3">
        <div class="box">
          <a href="">
            <div class="img-box">
              <img src="images/p3.png" alt="">
            </div>
            <div class="detail-box">
              <h6>
                Teddy Bear
              </h6>
              <h6>
                Price
                <span>
                  $110
                </span>
              </h6>
            </div>
            <div class="new">
              <span>
                New
              </span>
            </div>
          </a>
        </div>
      </div>
      <div class="col-sm-6 col-md-4 col-lg-3">
        <div class="box">
          <a href="">
            <div class="img-box">
              <img src="images/p4.png" alt="">
            </div>
            <div class="detail-box">
              <h6>
                Flower Bouquet
              </h6>
              <h6>
                Price
                <span>
                  $45
                </span>
              </h6>
            </div>
            <div class="new">
              <span>
                New
              </span>
            </div>
          </a>
        </div>
      </div>
      <div class="col-sm-6 col-md-4 col-lg-3">
        <div class="box">
          <a href="">
            <div class="img-box">
              <img src="images/p5.png" alt="">
            </div>
            <div class="detail-box">
              <h6>
                Teddy Bear
              </h6>
              <h6>
                Price
                <span>
                  $95
                </span>
              </h6>
            </div>
            <div class="new">
              <span>
                New
              </span>
            </div>
          </a>
        </div>
      </div>
      <div class="col-sm-6 col-md-4 col-lg-3">
        <div class="box">
          <a href="">
            <div class="img-box">
              <img src="images/p6.png" alt="">
            </div>
            <div class="detail-box">
              <h6>
                Flower Bouquet
              </h6>
              <h6>
                Price
                <span>
                  $70
                </span>
              </h6>
            </div>
            <div class="new">
              <span>
                New
              </span>
            </div>
          </a>
        </div>
      </div>
      <div class="col-sm-6 col-md-4 col-lg-3">
        <div class="box">
          <a href="">
            <div class="img-box">
              <img src="images/p7.png" alt="">
            </div>
            <div class="detail-box">
              <h6>
                Watch
              </h6>
              <h6>
                Price
                <span>
                  $400
                </span>
              </h6>
            </div>
            <div class="new">
              <span>
                New
              </span>
            </div>
          </a>
        </div>
      </div>
      <div class="col-sm-6 col-md-4 col-lg-3">
        <div class="box">
          <a href="">
            <div class="img-box">
              <img src="images/p8.png" alt="">
            </div>
            <div class="detail-box">
              <h6>
                Ring
              </h6>
              <h6>
                Price
                <span>
                  $450
                </span>
              </h6>
            </div>
            <div class="new">
              <span>
                New
              </span>
            </div>
          </a>
        </div>
      </div>
    </div>
    <div class="btn-box">
      <a href="">
        View All Products
      </a>
    </div>
  </div>
</section>-->

