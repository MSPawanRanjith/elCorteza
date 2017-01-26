<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.*" %>
    <%@ page import="java.sql.*" %>
    <%@ page import="javax.servlet.*" %>
    <%@page import="javax.servlet.http.*" %>
    <%@ page import="javax.servlet.annotation.WebServlet;" %>
<!DOCTYPE html>
<html lang="en">
<head>

  <title>el CortezA</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <link href="http://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
  <link href="http://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
   <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  <style>
  body {
      font: 400 15px/1.8 Lato, sans-serif;
      color: #777;
  }
  h3, h4 {
      margin: 10px 0 30px 0;
      letter-spacing: 10px;
      font-size: 20px;
      color: #111;
  }
  .container {
      padding: 80px 120px;
  }
  .person {
      border: 10px solid transparent;
      margin-bottom: 25px;
      width: 80%;
      height: 80%;
      opacity: 0.7;
  }
  .person:hover {
      border-color: #f1f1f1;
  }
  .carousel-inner img {

      width: 100%; /* Set width to 100% */
      margin: auto;
  }
  .carousel-caption h3 {
      color:#000000;
      <!--#fff !important;-->
  }
  @media (max-width: 600px) {
    .carousel-caption {
      display: none; /* Hide the carousel text when the screen is less than 600 pixels wide */
    }
  }
  .bg-11 {
      background: #2d2d30;
      color: #bdbdbd;
  }
  .bg-11 h3 {color: #fff;}
  .bg-11 h4 {color: #fff;font-family:"Californian FB"}
  .bg-11 p {font-style: italic;font-size:120%;}
  .bg-1 {
      background: #2d2d30;
      color: #bdbdbd;
  }
  .bg-1 h3 {color: #fff;}
  .bg-1 p {font-style: none;}
  .list-group-item:first-child {
      border-top-right-radius: 0;
      border-top-left-radius: 0;
  }
  .list-group-item:last-child {
      border-bottom-right-radius: 0;
      border-bottom-left-radius: 0;
  }
  .thumbnail {
      padding: 0 0 15px 0;
      border: none;
      border-radius: 0;
  }
  .thumbnail p {
      margin-top: 15px;
      color: #555;
  }
  .btn {
      padding: 10px 20px;
      background-color: #333;
      color: #f1f1f1;
      border-radius: 0;
      transition: .2s;
  }
  .btn:hover, .btn:focus {
      border: 1px solid #333;
      background-color: #fff;
      color: #000;
  }
  .modal-bodysignup{

    padding: 20px 50px;
    height:  390px;
    overflow-y: auto;
}


  .modal-header, h4, .close {
      background-color: #333;
      color: #fff !important;
      text-align: center;
      font-size: 30px;
  }
  .modal-header, .modal-body {
      padding: 40px 50px;
  }

  .nav-tabs li a {
      color: #777;
  }
  #googleMap {
      width: 100%;
      height: 400px;
      -webkit-filter: grayscale(100%);
      filter: grayscale(100%);
  }
  .navbar {
      font-family: Montserrat, sans-serif;
      margin-bottom: 0;
      background-color: #2d2d30;
      border: 0;
      font-size: 11px !important;
      letter-spacing: 4px;
      opacity: 0.9;
  }
  .navbar li a, .navbar .navbar-brand {
      color: #d5d5d5 !important;
  }
  .navbar-nav li a:hover {
      color: #fff !important;
  }
  .navbar-nav li.active a {
      color: #fff !important;
      background-color: #29292c !important;
  }
  .navbar-default .navbar-toggle {
      border-color: transparent;
  }
  .open .dropdown-toggle {
      color: #fff;
      background-color: #555 !important;
  }
  .dropdown-menu li a {
      color: #000 !important;
  }
  .dropdown-menu li a:hover {
      background-color: red !important;
  }
  footer {
      background-color: #2d2d30;
      color: #ffffff;
      padding: 32px;
  }
  footer a {
      color: #ffffff;
  }
  footer a:hover {
      color: #f5f5f5;
      text-decoration: none;
  }
  .form-control {
      border-radius: 0;
  }
  textarea {
      resize: none;
  }
  </style>
</head>
<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="50">
<%!int s;  %>
<%
HttpSession sessionsa=request.getSession(true);
Integer s = (Integer)sessionsa.getAttribute("s");
if (s == null) {
    s = new Integer(0);
}
sessionsa.setAttribute("s",s);
String heading = null;

if((Integer)sessionsa.getAttribute("s")>0){ %>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
 <script type="text/javascript">
jQuery(document).ready(function($) {

	if (window.history && window.history.pushState) {

	window.history.pushState('forward', null, '');

	$(window).on('popstate', function() {
	window.location.href = "/elcorteza";
	});

	}
	});

</script>
<%} %>

<nav class="navbar navbar-inverse navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#myPage">el CortezA</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#myPage">HOME</a></li>
        <li><a href="#about">ABOUT US</a></li>
        <li><a href="#menu">MENU</a></li>
        <li><a href="#contact">CONTACT</a></li>


            <li><a href="parallax_1.jsp" target="blank">FRANCHISE</a></li>




        <li><a href="#signupModal" data-toggle="modal" data-target="#signupModal"><span class="glyphicon glyphicon-user"></span>SIGN UP</a></li>
        <li><a href="#loginModal" data-toggle="modal" data-target="#loginModal"><span class="glyphicon glyphicon-log-in"></span>LOGIN</a></li>

      </ul>
    </div>
  </div>
</nav>

<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="${pageContext.request.contextPath}/images/carousel1.jpg" alt="Cream cheese corteza pizza" title="Cream Cheese corteza pizza" width="1200" height="700"/>
        <div class="carousel-caption">
          <h3><b>ITALIAN ZORBA</b></h3>
          <p>The cream cheese with black olives and capsicum </p>
          <center><p>with Exotic Italian herbs.</p></center>
        </div>
      </div>

      <div class="item">
        <img src="${pageContext.request.contextPath}/images/carousel2.jpg" alt="Cottage Cheese with black olives" title="Cottage Cheese with black olives" width="1200" height="700"/>
        <div class="carousel-caption">
          <h3><b> BORN 		 MEXICAN </b></h3>
          <p>Finest cottage cheese from mexico </p>
          <center><p>with Italian twist.</p></center>
        </div>
      </div>

      <div class="item">
        <img src="${pageContext.request.contextPath}/images/carousel3.jpg" alt="Jalepano delgado corteza pizza" title="Halepano delgado corteza pizza" width="1200" height="700"/>
        <div class="carousel-caption">
          <h3><b>THE DELGADO</b> </h3>
          <p>The crust which mesmerises the mesmerisers</p>
          <center><p>Butter crust with halepano for you</p></center>
        </div>
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
</div>

<!-- Container (The Band Section) -->
<div id="about" class="container text-center">
  <h3>THE CRUST</h3>
  <p><em>Fresh Taste Sensation !<br>Experience an era of magnificence & splendour.</em></p>

  <p>We have created a mind boggling Pizza store. <br>

  This ornate, palatial tribute to Southern India's greatest empires  the Imperial El Corteza  overlooks verdant foliage in the heart of Bangalore. It embodies the highest standards in modern cooking  balanced with elegant restraint in a prime property with a distinct personality. The El Corteza has a exquisite varities of crunchy starters, mouth watering main courses and  rejuvenating deserts which meets the  needs of both the enthusiastic traveller as well as the bespoke requirements of the destination connoisseur.

  </p>
  <br>
  <div class="row">
    <div class="col-sm-4">
      <p class="text-center"><strong>Past</strong></p><br>
      <a href="#demo" data-toggle="collapse">
        <img src="${pageContext.request.contextPath}/images/el_cortez.jpg" class="img-circle person" alt="first establishment" width="255" height="255">
      </a>
      <div id="demo" class="collapse">
        <p>The first establishment in year 1984.</p>
        <p>We were the best local cafe in bangalore.</p>
        <p>Its the past!!</p>
      </div>
    </div>
    <div class="col-sm-4">
      <p class="text-center"><strong>Present</strong></p><br>
      <a href="#demo2" data-toggle="collapse">
        <img src="${pageContext.request.contextPath}/images/pic2.jpg" class="img-circle person" alt="Medival time" width="255" height="255">
      </a>
      <div id="demo2" class="collapse">
        <p>The early 2010's.</p>
        <p>The travel from local bistro to a fine dine.</p>
        <p>The start.</p>
      </div>
    </div>
    <div class="col-sm-4">
      <p class="text-center"><strong>Future</strong></p><br>
      <a href="#demo3" data-toggle="collapse">
        <img src="${pageContext.request.contextPath}/images/El-Cortez2.jpg" class="img-circle person" alt="Comming soon" width="255" height="255">
      </a>
      <div id="demo3" class="collapse">
        <p>The state of Art Sky Lounge</p>
        <p>To the next level.</p>
        <p>The Future.</p>
      </div>
    </div>
  </div>
</div>

<!-- Container (TOUR Section) -->
<div id="menu" class="bg-1">
  <div class="container">
    <h3 class="text-center">MENU</h3>
    <h4 class="text-center">Here is the list</h4>

    <div>
         <h4  class="text-left"><ul><li>Starters</li></ul></h4><hr>
         <p></p>
         <p class="text-right"><img src="${pageContext.request.contextPath}/images/garlic.JPG" alt="garlic" title="Plain roasted garlic bread" class="img-circle" style="float:left;width:200px; height:200px;" font-size:100%><strong>Garlic Bread</strong></p>
         <p class="text-right">Finely roasted bread <br> with golden brown glaze<br><br>Pieces : 4 | Cost : <i class="fa fa-rupee" style="font-size:15px;"></i>  99</p><br><br><br><br><br><hr>
         <p></p>
         <p><img src="${pageContext.request.contextPath}/images/cheesegarlic.JPG" alt="cheese garlic" class="img-circle" style="float:right;width:200px; height:200px;" font-size:100%><strong>Cheese Garlic Bread</strong></p>
         Garlic Bread loaded with<br>Parmesan cheese<br><br>Pieces : 4 | Cost : <i class="fa fa-rupee" style="font-size:15px;"></i>  129<br><br><br><br><br><hr>
         <p></p>
         <p class="text-right"><img src="${pageContext.request.contextPath}/images/exotic.JPG" alt="exotic" class="img-circle" style="float:left;width:200px; height:200px;" font-size:100%><strong>Exotic Garlic Bread</strong></p>
         <p class="text-right">Spicy paprika with <br>Colourfull bell peppers<br><br>Pieces : 4 | Cost : <i class="fa fa-rupee" style="font-size:15px;"></i>  149</p><br><br><br><br><br><hr>


         <h4  class="text-left"><ul><li>Main Course</li></ul></h4><hr>
         <p></p>
         <p class="text-right"><img src="${pageContext.request.contextPath}/images/margherita.jpg" alt="margherita" class="img-rounded" style="float:left;width:200px; height:200px;" font-size:100%><strong>Margherita</strong></p>
         <p class="text-right">Single cheese layer with<br> fluffy crust<br><br>Serves : 2 | Cost : <i class="fa fa-rupee" style="font-size:15px;"></i>  245</p><br><br><br><br><br><hr>
         <p></p>
         <p><img src="${pageContext.request.contextPath}/images/sefas.jpg" alt="sefas" class="img-rounded" style="float:right;width:200px; height:200px;" font-size:100%><strong>Sefas</strong></p>
         The country harvested jalepano <br>
          with dairy fresh panner<br><br>Serves : 2 | Cost : <i class="fa fa-rupee" style="font-size:15px;"></i>  349<br><br><br><br><br><hr>


         <h4  class="text-left">Chef's Special Pizza</h4><hr>
         <p></p>
         <p class="text-right"><img src="${pageContext.request.contextPath}/images/carousel1.jpg" alt="Cream Cheese corteza pizza" class="img-rounded" style="float:left;width:200px; height:200px;" font-size:100%><strong>Italian Zorba</strong></p>
         <p class="text-right">The cream cheese with black olives with Exotic Italian herbs.<br><br>Serves : 4 | Cost : <i class="fa fa-rupee" style="font-size:15px;"></i>  499</p><br><br><br><br><hr>
          <p></p>
         <p><img src="${pageContext.request.contextPath}/images/carousel2.jpg" alt="Cottage Cheese with black olives" class="img-rounded" style="float:right;width:200px;height:200px;" font-size:100%><strong>Born Mexican</strong></p>
         Finest cottage cheese from mexico with Italian twist.<br><br>Serves : 4 | Cost : <i class="fa fa-rupee" style="font-size:15px;"></i>  499<br><br><br><br><hr>
          <p></p>
          <p class="text-right"> <img src="${pageContext.request.contextPath}/images/carousel3.jpg" alt="Halepano delgado corteza pizza" class="img-rounded" style="float:left;width:200px;height:200px;" font-size:100%><strong>The Delgado</strong></p>
         <p class="text-right">The crust which mesmerises Butter crust with Jalepano for you<br><br>Serves : 4 | Cost : <i class="fa fa-rupee" style="font-size:15px;"></i>  499</p><br><br><br><br><hr>


         <h4  class="text-left"><ul><li>Desert</li></ul></h4><hr>
          <p></p>
         <p class="text-right"><img src="${pageContext.request.contextPath}/images/truufle.jpg" alt="truufle" class="img-circle" style="float:left;width:200px; height:200px;" font-size:100%><strong>Truffa Pastel</strong></p>
        <p class="text-right"> Multi layer cheese cake embedded with dark choco<br><br>Pieces : 1 | Cost : <i class="fa fa-rupee" style="font-size:15px;"></i>  69</p><br><br><br><br><br><br><hr>
          <p></p>
         <p><img src="${pageContext.request.contextPath}/images/helado1.JPG" alt="bonhelado" class="img-circle" style="float:right;width:200px; height:200px;" font-size:100%><strong>Bonhelado</strong></p>
         The Chocolately way themed vanila ice cream<br><br>Serves : 1 | Cost : <i class="fa fa-rupee" style="font-size:15px;"></i>  69<br><br><br><br><br><br><hr>
      <div class="row">
  <div class="col-sm-4"></div>
  <div class="col-sm-4">


              <button  class="btn btn-block" data-toggle="modal" data-target="#loginModal"><b>ORDER NOW !!</b>
                <span class="glyphicon glyphicon-ok"></span>
              </button>

   </div>
   <div class="col-sm-4"></div>
  </div>
  </div>
  </div>
  </div>

  <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">

      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">�</button>
          <h4><span class="glyphicon glyphicon-lock"></span> Tickets</h4>
        </div>
        <div class="modal-body">
          <form role="form">
            <div class="form-group">
              <label for="psw"><span class="glyphicon glyphicon-shopping-cart"></span> Tickets, $23 per person</label>
              <input type="number" class="form-control" id="psw" placeholder="How many?">
            </div>
            <div class="form-group">
              <label for="usrname"><span class="glyphicon glyphicon-user"></span> Send To</label>
              <input type="text" class="form-control" id="usrname" placeholder="Enter email">
            </div>
              <button type="submit" class="btn btn-block">Pay
                <span class="glyphicon glyphicon-ok"></span>
              </button>
          </form>
        </div>
        <div class="modal-footer">
          <button type="submit" class="btn btn-danger btn-default pull-left" data-dismiss="modal">
            <span class="glyphicon glyphicon-remove"></span> Cancel
          </button>
          <p>Need <a href="#">help?</a></p>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- login modal -->
<div class="modal fade" id="loginModal" role="dialog">

    <div class="modal-dialog">

      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">�</button>
          <h4><span class="glyphicon glyphicon-log-in"></span>Login</h4>
        </div>
        <div class="modal-body">
          <form role="form" name="loginform" method="post" action="LoginValidation.jsp">
            <div class="form-group">
              <label for="user"><span class="glyphicon glyphicon-user"></span>Username :</label>
              <input type="text" class="form-control" name="user" id="user"  placeholder="Enter username "required ng-model="data.myNumber">
            </div>
            <div class="form-group">
              <label for="pass"><span class="glyphicon glyphicon-lock"></span>Password :</label>
              <input type="password" class="form-control" name="pass" id="pass" placeholder="Enter password" required ng-model="data.myNumber" >
            </div>

              <button type="submit"  class="btn btn-block">LOGIN
                <span class="glyphicon glyphicon-ok"></span>
              </button>
          </form>
        </div>
        <div class="modal-footer">
          <button class="btn pull-left"  data-toggle="modal" href="#signupModal">
            <span class="glyphicon glyphicon-user"></span>Sign Up
          </button>
          <p>Need <a href="#">help?</a></p>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- Sign up modal -->
<div class="modal fade" id="signupModal" role="dialog">

    <div class="modal-dialog modal-lg" >

      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">�</button>
          <h4><span class="glyphicon glyphicon-user"></span>Sign Up</h4>
        </div>
        <div class="modal-bodysignup" style="overflow-y: scroll; max-height:85%;  margin-top: 0px; margin-bottom:0px;">
          <form role="form" name="signupform" method="post" action="SignUpValidation.jsp">
            <div class="form-group">
              <label for="user"><span class="glyphicon glyphicon-user"></span> Username   :</label>
              <input type="text" class="form-control" name="user" id="user"  placeholder="Enter username "required ng-model="data.myNumber">
            </div>
            <div class="form-group">
              <label for="pass"><span class="glyphicon glyphicon-lock"></span> Password   :</label>
              <input type="password" class="form-control" name="pass" id="pass" placeholder="Enter password" required ng-model="data.myNumber" >
            </div>
            <div class="form-group">
              <label for="mail"><span class="glyphicon glyphicon-envelope"></span> E-mail id  :</label>
              <input type="text" class="form-control" name="mail" id="mail" placeholder="email_id@mail.com" required ng-model="data.myNumber" >
            </div>
            <div class="form-group">
              <label for="phone"><span class="glyphicon glyphicon-phone"></span> Phone no. :</label>
              <input type="text" class="form-control" name="phone" id="phone" placeholder="+91 " type="number" required ng-model="data.myNumber" >
            </div>

              <button type="submit"  class="btn btn-block">SIGN UP
                <span class="glyphicon glyphicon-ok"></span>
              </button>
          </form>
        </div>
        <div class="modal-footer">
          <button type="submit" class="btn btn-danger btn-default pull-left" data-dismiss="modal">
            <span class="glyphicon glyphicon-remove"></span> Cancel
          </button>
          <p>Need <a href="#">help?</a></p>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- Container (Contact Section) -->
<div id="contact" class="container">
  <h3 class="text-center">Contact</h3>
  <p class="text-center"><em>We love our Coustemers!</em></p>

  <div class="row">
    <div class="col-md-4">
      <p>Fan? Drop a note.</p>
      <p><span class="glyphicon glyphicon-map-marker"></span>MSRIT, Bangalore</p>
      <p><span class="glyphicon glyphicon-phone"></span>Phone: +91 948837923</p>
      <p><span class="glyphicon glyphicon-envelope"></span>Email: elcorteza@glassmail.com</p>
    </div>
    <div class="col-md-8">
      <div class="row">
        <div class="col-sm-6 form-group">
          <input class="form-control" id="name" name="name" placeholder="Name" type="text" required>
        </div>
        <div class="col-sm-6 form-group">
          <input class="form-control" id="email" name="email" placeholder="Email" type="email" required>
        </div>
      </div>
      <textarea class="form-control" id="comments" name="comments" placeholder="Comment" rows="5"></textarea>
      <br>
      <div class="row">
        <div class="col-md-12 form-group">
          <button class="btn pull-right" type="submit"><span class="glyphicon glyphicon-send"></span> Send</button>
        </div>
      </div>
    </div>
  </div>
  <br>
  <h3 class="text-center">From The Blog</h3>
  <ul class="nav nav-tabs">
    <li class="active"><a data-toggle="tab" href="#home">Anush</a></li>
    <li><a data-toggle="tab" href="#menu1">Vishal</a></li>
    <li><a data-toggle="tab" href="#menu2">Pawan</a></li>
  </ul>

  <div class="tab-content">
    <div id="home" class="tab-pane fade in active">
      <h2>Anush, Manager</h2>
      <p>Man, The taste was so good, as it would drive me into trance state!!</p>
    </div>
    <div id="menu1" class="tab-pane fade">
      <h2>Vishal, Guitarist</h2>
      <p>Always a pleasure people! The delivery service is on promise<br> and Italian Zorba must try!!</p>
    </div>
    <div id="menu2" class="tab-pane fade">
      <h2>Pawan, Student</h2>
      <p>I mean, sometimes I feel pitty for other Pizza shops that are open.<br>They have Mindblowing taste. </p>
    </div>
  </div>
</div>

<!-- <div id="googleMap"></div>-->

<!-- Add Google Maps -->
<!-- <script src="http://maps.googleapis.com/maps/api/js"></script>
<script>
var myCenter = new google.maps.LatLng(41.878114, -87.629798);

function initialize() {
var mapProp = {
center:myCenter,
zoom:12,
scrollwheel:false,
draggable:false,
mapTypeId:google.maps.MapTypeId.ROADMAP
};

var map = new google.maps.Map(document.getElementById("googleMap"),mapProp);

var marker = new google.maps.Marker({
position:myCenter,
});

marker.setMap(map);
}

google.maps.event.addDomListener(window, 'load', initialize);
</script>
-->
<!-- Footer -->
<link href="ionicons-2.0.1\css\ionicons.css" rel="stylesheet" />
  <link href="ionicons-2.0.1\css\ionicons.min.css" rel="stylesheet" />
<footer class="text-center">
  <a class="up-arrow" href="#myPage" data-toggle="tooltip" title="TO TOP">
    <span class="glyphicon glyphicon-chevron-up"></span>
  </a>
  <p style="font-size:20px">Developed & Maintained by</p><p style="font-size:45px"><a data-toggle="tooltip" title="Code to view the next"><Span class="ion-ios-wineglass"style="font-size:70px;"></Span> </a></p>

</footer>

<script>
$(document).ready(function(){
  // Initialize Tooltip
  $('[data-toggle="tooltip"]').tooltip();

  // Add smooth scrolling to all links in navbar + footer link
  $(".navbar a, footer a[href='#myPage']").on('click', function(event) {

    // Make sure this.hash has a value before overriding default behavior
    if (this.hash !== "") {

      // Prevent default anchor click behavior
      event.preventDefault();

      // Store hash
      var hash = this.hash;

      // Using jQuery's animate() method to add smooth page scroll
      // The optional number (900) specifies the number of milliseconds it takes to scroll to the specified area
      $('html, body').animate({
        scrollTop: $(hash).offset().top
      }, 900, function(){

        // Add hash (#) to URL when done scrolling (default click behavior)
        window.location.hash = hash;
      });
    } // End if
  });
})
</script>

</body>
</html>
