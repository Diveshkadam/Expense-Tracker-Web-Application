<%@page import="com.db.ConfigurationUtil"%>
<%@page import="org.hibernate.SessionFactory"%>


<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Expense Tracker</title>
    
   

   <%@include file="component/all_css.jsp" %>

      
   
</head>
<body>

<!-- Navbar Start -->

<%@include file="component/navbar.jsp" %>

<!-- Navbar End -->

<div id="carouselExample" class="carousel slide">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="images/img3.jpg" class="d-block w-100" alt="..." height="550px">
    </div>
    <div class="carousel-item">
      <img src="images/img1.jpg" class="d-block w-100" alt="..." height="550px">
    </div>
    <div class="carousel-item">
      <img src="images/img2.jpg" class="d-block w-100" alt="..." height="550px">
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExample" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExample" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
    
    
    
  </button>
  
    <footer class="bg-secondary text-white text-center p-3 mt-4">
    © 2026 Expense Tracker | Developed by Divesh Kadam | All Rights Reserved
</footer>
  

</div>







</body>
</html>
