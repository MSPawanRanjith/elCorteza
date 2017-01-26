<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
    <%@page import="java.util.*" %>
    <%@ page import="java.sql.*" %>
    <%@ page import="javax.servlet.*" %>
    <%@page import="javax.servlet.http.*" %>
    <%@ page import="javax.servlet.annotation.WebServlet;" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
  .bg-1 {
      background: #2d2d30;
      color: #bdbdbd;
  }
  .bg-1 h3 {color: #fff;}
  .bg-1 p {}
  .list-group-item:first-child {
      border-top-right-radius: 0;
      border-top-left-radius: 0;
       color:#000000;
  }
  .list-group-item:last-child {
      border-bottom-right-radius: 0;
      border-bottom-left-radius: 0;
       color:#000000;
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
  .glyphicon.glyphicon-map-marker {
    font-size: 17px;
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
<%
request.setAttribute("alertMsg", "Profile Updated Sucessfully !!");
String message = (String)request.getAttribute("alertMsg");
%>
<%! static String[] itmcode=new String[20]; %>
<%! static int[] qty=new int[20]; %>
<%!int i=0; %>

 <script type="text/javascript">
 	function load(){
    var msg = "<%=message%>";
    alert(msg);
 	}
</script>
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
        <li><a href="#band">ABOUT US</a></li>
        <li><a href="#order">ORDER</a></li>
        <li><a href="#feedback">FEEDBACK</a></li>

            <li><a href="parallax_1.jsp" target="blank">FRANCHISE</a></li>


        <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">
         <%! String username; String user; %>
         <%
               username=request.getParameter("user");
              // out.println(username+"out");
              session.setAttribute("username",username);
         %>
        <%
        	 user=(String)session.getAttribute("username");
       // out.println(user+"out");
        %>
        Hola, <%=user %>
       <span class="caret"></span></a>
        <ul class="dropdown-menu">
            <li><a href="#preordModal" data-toggle="modal" data-target="#preordModal"><span class="glyphicon glyphicon-th-list"></span>Previous Orders</a></li>
            <li><a href="#settingModal" data-toggle="modal" data-target="#settingModal"><span class="glyphicon glyphicon-cog"></span>Profile Settings</a></li>
            <li><a href="#logoutModal" data-toggle="modal" data-target="#logoutModal"><span class="glyphicon glyphicon-log-out"></span>Log Out</a></li>
          </ul>
         </li>




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
        <img src="${pageContext.request.contextPath}/images/carousel3.jpg" alt="Halepano delgado corteza pizza" title="Halepano delgado corteza pizza" width="1200" height="700"/>
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
</div>

<!-- Container (The Band Section) -->
<div id="band" class="container text-center">
  <h3>THE CRUST</h3>
  <p><em>Fresh Taste Sensation !<br>Experience an era of magnificence & splendour.</em></p>

  <p>We have created a mind boggling Pizza store. <br>

  This ornate, palatial tribute to Southern India's greatest empires . the Imperial El Corteza  overlooks verdant foliage in the heart of Bangalore. It embodies the highest standards in modern cooking  balanced with elegant restraint in a prime property with a distinct personality. The El Corteza has a exquisite varities of crunchy starters, mouth watering main courses and  rejuvenating deserts which meets the  needs of both the enthusiastic traveller as well as the bespoke requirements of the destination connoisseur.

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
<div id="order" class="bg-1">
  <div class="container">
    <h3 class="text-center">PLACE YOUR ORDER</h3>
    <p class="text-center">We bring you the world's best Pizza with our classic crust<br>Book your order to bring them to your Door-Step !!</p>
    <div class="row">
      <div class="col-sm-8">
       <input class="form-control" type="text" name="location" placeholder= " Enter your delivery location">
      <!-- <p><span class="glyphicon glyphicon-phone"></span>Phone: +00 1515151515</p> -->
      </div>
       <div class="col-sm-4">


              <button  class="btn btn-block" data-toggle="modal" data-target="#emptyModal"><b>View Cart</b>
                <span class="glyphicon glyphicon-shopping-cart"></span>
              </button>

   </div>

    </div>
    <br>
    <ul class="list-group">
      <li class="list-group-item"><b>STARTERS</b> <span class="badge"></span></li>
    </ul>

    <div class="row text-center">
      <div class="col-sm-4">
        <div class="thumbnail">
          <img src="${pageContext.request.contextPath}/images/garlic.JPG" title="Plain roasted garlic bread" alt="Garlic Bread" width="400" height="300">
          <p><strong>Garlic Bread</strong></p>
          <p>Finely roasted bread <br> with golden brown glaze</p>
          <p>Pieces : 4 | Cost : <i class="fa fa-rupee" style="font-size:15px;"></i>  99</p>
          <form name="itmform" role="form"  method="post" action="counter.jsp" >
          <input type="hidden" name="itmcode" value="11">
          <label  for="qty">Qty :</label>
          <input  type="number" name="qty"style="font-size:14px;" id="qty_1" min="1" max="999"  value ="1" placeholder="1">
          <p>    </p>
          <button class="btn" type="submit">Add To Cart </button>
          </form>
        </div>
      </div>
      <div class="col-sm-4">
        <div class="thumbnail">
          <img src="${pageContext.request.contextPath}/images/cheesegarlic.JPG" title="cheese garlic bread" alt="Cheese Garlic Bread" width="400" height="300">
          <p><strong>Cheese Garlic Bread</strong></p>
          <p>Garlic Bread loaded with<br>Parmesan cheese</p>
          <p>Pieces : 4 | Cost : <i class="fa fa-rupee" style="font-size:15px;"></i>  129</p>
          <form name="itmform" role="form"  method="post" action="counter.jsp">
          <input type="hidden" name="itmcode" value="12">
          <label  for="qty">Qty :</label>
          <input  type="number" name="qty" style="font-size:14px;" id="qty_1" min="1" max="999"  value ="1" placeholder="1">
          <p>    </p>
          <button class="btn" type="submit">Add To Cart </button>
          </form>
        </div>
      </div>
      <div class="col-sm-4">
        <div class="thumbnail">
          <img src="${pageContext.request.contextPath}/images/exotic.JPG" title="loaded with papirika,olive and capsicum" alt="Exotic Garlic Bread" width="400" height="300">
          <p><strong>Exotic Garlic Bread</strong></p>
          <p>Spicy paprika with <br>Colourfull bell peppers </p>
          <p>Pieces : 4 | Cost : <i class="fa fa-rupee" style="font-size:15px;"></i>  149</p>
          <form name="itmform" role="form"  method="post" action="counter.jsp">
          <input type="hidden" name="itmcode" value="13">
          <label  for="qty">Qty :</label>
          <input  type="number" name="qty"style="font-size:14px;" id="qty_1" min="1" max="999"  value ="1" placeholder="1">
          <p>    </p>
          <button class="btn" type="submit">Add To Cart </button>
          </form>
        </div>
      </div>
    </div>
    <!-- Second page of order form -->
    <ul class="list-group">

      <li class="list-group-item"><b> MAIN COURSE </b> <span class="badge"></span></li>

    </ul>
    <div class="row text-center">
      <div class="col-sm-4">
        <div class="thumbnail">
          <img src="${pageContext.request.contextPath}/images/margherita.jpg" title="Single layer cheese" alt="Single cheese margherita" width="400" height="300">
          <p><strong>Margherita</strong></p>
          <p>Single cheese layer with<br> fluffy crust</p>

           <p>Serves : 2 | Cost : <i class="fa fa-rupee" style="font-size:15px;"></i>  245</p>
          <form name="itmform" role="form"  method="post" action="counter.jsp">
          <input type="hidden" name="itmcode" value="21">
          <label  for="qty">Qty :</label>
          <input  type="number" name="qty" style="font-size:14px;" id="qty_1" min="1" max="999"  value ="1" placeholder="1">
          <p>    </p>
          <button class="btn" type="submit">Add To Cart </button>
          </form>
        </div>
      </div>
      <div class="col-sm-4">
        <div class="thumbnail">
          <img src="${pageContext.request.contextPath}/images/sefas.jpg" title="Mushrooms, onions, panner and olive" alt="les sefas" width="400" height="300">
          <p><strong>las Sefas</strong></p>
          <p>The country harvested jalepano <br>
          with dairy fresh panner</p>
           <p>Serves : 2 | Cost : <i class="fa fa-rupee" style="font-size:15px;"></i>  349</p>
          <form name="itmform" role="form"  method="post" action="counter.jsp">
          <input type="hidden" name="itmcode" value="22">
          <label  for="qty">Qty :</label>
          <input  type="number" name="qty" style="font-size:14px;" id="qty_1" min="1" max="999"  value ="1" placeholder="1">
          <p>    </p>
          <button class="btn" type="submit">Add To Cart </button>
          </form>
        </div>
      </div>
      <div class="col-sm-4">

      </div>
    </div>
    <!-- third page -->
    <ul class="list-group">

      <li class="list-group-item"><b>CHEF'S SPECIAL PIZZA </b> <span class="badge"></span></li>

    </ul>
     <div class="row text-center">
      <div class="col-sm-4">
        <div class="thumbnail">
          <img src="${pageContext.request.contextPath}/images/carousel1.jpg" title="Cream Cheese corteza pizza"  alt="Italian Zorba" width="400" height="300">
          <p><strong>Italian Zorba</strong></p>
          <p>The cream cheese with black olives  </p>
          <p>with Exotic Italian herbs.</p>

           <p>Serves : 4 | Cost : <i class="fa fa-rupee" style="font-size:15px;"></i>  499</p>
          <form name="itmform" role="form"  method="post" action="counter.jsp">
          <input type="hidden" name="itmcode" value="31">
          <label  for="qty">Qty :</label>
          <input  type="number" name="qty" style="font-size:14px;" id="qty_1" min="1" max="999"  value ="1" placeholder="1">
          <p>    </p>
          <button class="btn" type="submit">Add To Cart </button>
          </form>
        </div>
      </div>
      <div class="col-sm-4">
        <div class="thumbnail">
          <img src="${pageContext.request.contextPath}/images/carousel2.jpg" alt="Born Mexican" title="Cottage Cheese with black olives" title="Cottage Cheese with black olives,onion,peppers and mushrooms" width="400" height="300">
          <p><strong>Born Mexican</strong></p>
          <p>Finest cottage cheese from mexico </p>
          <p>with Italian twist.</p>
          <p>Serves : 4 | Cost : <i class="fa fa-rupee" style="font-size:15px;"></i>  499</p>
          <form name="itmform" role="form"  method="post" action="counter.jsp">
          <input type="hidden" name="itmcode" value="32">
          <label  for="qty">Qty :</label>
          <input  type="number" name="qty" style="font-size:14px;" id="qty_1" min="1" max="999"  value ="1" placeholder="1">
          <p>    </p>
          <button class="btn" type="submit">Add To Cart </button>
          </form>
        </div>
      </div>
      <div class="col-sm-4">
        <div class="thumbnail">
          <img src="${pageContext.request.contextPath}/images/carousel3.jpg" alt="The Delgado" title="Jalepano,olives,and double layer cheese" width="400" height="300">
          <p><strong>THE DELGADO</strong></p>
          <p>The crust which mesmerises</p>
          <p>Butter crust with halepano for you</p>
           <p>Serves : 4 | Cost : <i class="fa fa-rupee" style="font-size:15px;"></i>  499</p>
          <form name="itmform" role="form"  method="post" action="counter.jsp">
          <input type="hidden" name="itmcode" value="33">
          <label  for="qty">Qty :</label>
          <input  type="number" name="qty" style="font-size:14px;" id="qty_1" min="1" max="999"  value ="1" placeholder="1">
          <p>    </p>
          <button class="btn" type="submit">Add To Cart </button>
          </form>
        </div>
      </div>
    </div>
    <!-- desert -->
    <ul class="list-group">

      <li class="list-group-item"><b>DESERT  </b> <span class="badge"></span></li>

    </ul>
     <div class="row text-center">
      <div class="col-sm-4">
        <div class="thumbnail">
          <img src="${pageContext.request.contextPath}/images/truufle.jpg"title="Chocalate truffle cacke with starwberry" alt="Trufa Pastel" width="400" height="300">
          <p><strong>Truffa Pastel</strong></p>
          <p>Multi layer cheese cake embedded<br> with dark choco</p>

           <p>Pieces : 1 | Cost : <i class="fa fa-rupee" style="font-size:15px;"></i>  69</p>
          <form name="itmform" role="form"  method="post" action="counter.jsp">
          <input type="hidden" name="itmcode" value="41">
          <label  for="qty">Qty :</label>
          <input  type="number" name="qty" style="font-size:14px;" id="qty_1" min="1" max="999"  value ="1" placeholder="1">
          <p>    </p>
          <button class="btn" type="submit">Add To Cart </button>
          </form>
        </div>
      </div>
      <div class="col-sm-4">
        <div class="thumbnail">
          <img src="${pageContext.request.contextPath}/images/helado.JPG" alt="Bon Helado" title="The chocolate ice cream" width="400" height="300">
          <p><strong>Bon Helado</strong></p>
          <p>The Chocolately way themed <br> vanila ice cream</p>
           <p>Serves : 1 | Cost : <i class="fa fa-rupee" style="font-size:15px;"></i>  69</p>
          <form name="itmform" role="form"  method="post" action="counter.jsp">
          <input type="hidden" name="itmcode" value="42">
          <label  for="qty">Qty :</label>
          <input  type="number" name="qty" style="font-size:14px;" id="qty_1" min="1" max="999"  value ="1" placeholder="1">
          <p>    </p>
          <button class="btn" type="submit">Add To Cart </button>
          </form>
        </div>
      </div>
      <div class="col-sm-4">
      </div>
    </div>
  </div>
  <div class="row">
  <div class="col-sm-4"></div>
  <div class="col-sm-4">


              <button  class="btn btn-block"data-toggle="modal" data-target="#emptyModal" ><b>View Cart</b>
                <span class="glyphicon glyphicon-shopping-cart"></span>
              </button>

   </div>
   <div class="col-sm-4"></div>
  </div>
  <br><br><br>

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
<!--Empty cart Modal -->
  <div class="modal fade" id="emptyModal" role="dialog">
    <div class="modal-dialog">

      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">�</button>
          <h4><span class="glyphicon glyphicon-shopping-cart"></span> Cart</h4>
        </div>
        <div class="modal-body">
          The Cart is Empty..
          <br>
          Select item from Order Menu.
        </div>
        <div class="modal-footer">
          <button type="submit" class="btn btn-danger btn-default pull-left" data-dismiss="modal">
            <span class="glyphicon glyphicon-remove"></span> Cancel
          </button>

        </div>
      </div>
    </div>
  </div>
</div>
<!-- logout modal -->
<div class="modal fade" id="logoutModal" role="dialog">
    <div class="modal-dialog">

      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">�</button>
          <h4><span class="glyphicon glyphicon-log-out"></span>Log Out</h4>
        </div>
        <div class="modal-body">
        <p><b>Do you want to Log Out ?</b></p>
          <form role="form" name="logoutform" method="post" action="logout.jsp">


              <button type="submit"  class="btn btn-block">LOG OUT
                <span class="glyphicon glyphicon-ok"></span>
              </button>
          </form>
        </div>
        <div class="modal-footer">

          <p>Need <a href="#">help?</a></p>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- Previous order -->
<div class="modal fade" id="preordModal" role="dialog">
    <div class="modal-dialog modal-lg">

      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">�</button>
          <h4><span class="glyphicon glyphicon-shopping-cart"></span> Previous orders</h4>
        </div>
        <div class="modal-bodycart"style="overflow-y: scroll; max-height:85%;  margin-top: 0px; margin-bottom:0px;">
        <%! String query; %>
        <%
       Class.forName("com.mysql.jdbc.Driver");
		Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3306/elcorteza","root","network");
		Statement s=c.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
		Statement stmts=c.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);

		%>
		<table class="table table-striped">
        <thead>
        <tr>
        <th><b>Order no</b></th>
        <th><b>Item Name</b></th>
        <th><b>Item quantity</b></th>
        <th><b>Total cost</b>
        <th><b>Date and time</b></th>
        <th> </th>
        </tr>
        </thead>
        <tbody>
        <%!int on,ic,iq;String dt,nm; %>
        <%
        String query="Select distinct order_no,itm_qty,itm_cost,date_time,itm_name from order_detail,menu where(order_detail.user_name='"+user+"' and order_detail.itm_code=menu.itm_code);" ;
        //String select="select * from menu where(itm_code="+Integer.parseInt(itmcode_m[j])+");";
 	   //ResultSet rs= stmt.executeQuery(select);
 	  // while(rs.next()){
 		   //itmname=rs.getString(2);
 		   //itmcost=rs.getInt(3);
 	  // }
 	 // String s1="Select itm_name from menu where itm_code="+ic+";";
     //   	ResultSet r1=stmts.executeQuery(s1);


        ResultSet r=s.executeQuery(query);
        if(r.next()==true){
        r.previous();

        while(r.next())
        {
        	on=r.getInt(1);
        	ic=r.getInt(3);
        	nm=r.getString(5);
        	iq=r.getInt(2);
        	dt=r.getString(4);
        	out.println("<tr>");
        	out.println("<td>");
        	out.println("A00"+on);
        	out.println("</td>");
        	out.println("<td>");
        	//out.println(ic);

        	out.println(nm);
        	out.println("</td>");
        	out.println("<td>");
        	out.println(iq);
        	out.println("</td>");
        	out.println("<td>");
        	out.println(iq*ic);
        	out.println("</td>");
        	out.println("<td>");
        	out.println(dt);
        	out.println("</td>");

        }
        }
        else
        {
        	out.println("<td></td><td></td><td><p> <center>This is your first order !!</center></p></td><td></td></td>");
        }
        %>
        </tbody>
        </table>
        </div>
        <div class="modal-footer">
          <button class="btn pull-left"  data-dismiss="modal" >
            <span class="glyphicon glyphicon-remove"></span>CANCEL
          </button>

        </div>
        </div>
              </div>
              </div>
              </div>
<!-- Setting modal -->
<div class="modal fade" id="settingModal" role="dialog">

    <div class="modal-dialog">

      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">�</button>
          <h4><span class="glyphicon glyphicon-cog"></span>Profile Settings</h4>
        </div>
        <div class="modal-body">
          <form role="form" name="settingform" method="post" action="UpdateSetting.jsp">

            <div class="form-group">
              <label for="pass"><span class="glyphicon glyphicon-lock"></span>Password :</label>
              <input type="password" class="form-control" name="pass_up" id="pass_up" placeholder="Enter new password" >
            </div>
            <div class="form-group">
              <label for="user"><span class="glyphicon glyphicon-phone"></span>Phone no. :</label>
              <input type="text" class="form-control" name="phone_up" id="phone_up"  placeholder="Enter new phone no.  ">
            </div>
            <div class="form-group">
              <label for="user"><span class="glyphicon glyphicon-envelope"></span>E-mail Id :</label>
              <input type="text" class="form-control" name="mail_up" id="mail_up"  placeholder="Enter new email id  ">
            </div>
            	<%
            	 String usr=request.getParameter("user");
            	 out.println("<input type=\"hidden\" name=\"user\" value=\""+usr+"\">");
            	%>
              <button type="submit"  class="btn btn-block" onclick="load()">UPDATE
                <span class="glyphicon glyphicon-ok"></span>
              </button>
          </form>
        </div>
        <div class="modal-footer">
          <button class="btn pull-left"  data-dismiss="modal" >
            <span class="glyphicon glyphicon-remove"></span>CANCEL
          </button>
          <p>Need <a href="#">help?</a></p>
        </div>
      </div>
    </div>
  </div>
</div>

<!-- Container (Contact Section) -->
<div id="feedback" class="container">
  <h3 class="text-center">Feedback</h3>
  <p class="text-center"><em>We love to help our Customers!</em></p>

  <div class="row">
    <div class="col-md-4">
      <p>Your feedback is our prime priority</p>
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
  </div>
  <%--
  <h3 class="text-center">From The Blog</h3>
  <ul class="nav nav-tabs">
    <li class="active"><a data-toggle="tab" href="#home">Mike</a></li>
    <li><a data-toggle="tab" href="#menu1">Chandler</a></li>
    <li><a data-toggle="tab" href="#menu2">Peter</a></li>
  </ul>

  <div class="tab-content">
    <div id="home" class="tab-pane fade in active">
      <h2>Mike Ross, Manager</h2>
      <p>Man, we've been on the road for some time now. Looking forward to lorem ipsum.</p>
    </div>
    <div id="menu1" class="tab-pane fade">
      <h2>Chandler Bing, Guitarist</h2>
      <p>Always a pleasure people! Hope you enjoyed it as much as I did. Could I BE.. any more pleased?</p>
    </div>
    <div id="menu2" class="tab-pane fade">
      <h2>Peter Griffin, Bass player</h2>
      <p>I mean, sometimes I enjoy the show, but other times I enjoy other things.</p>
    </div>
  </div>
</div>
--%>
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
  <p style="font-size:20px">Developed & Maintained by</p><p style="font-size:45px"><a data-toggle="tooltip" title="Code to view the next"><Span class="ion-ios-wineglass"style="font-size:70px;"></Span></a></p>

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
<script>
$(document).ready(function(){
    var scroll_start = 0;
    var startchange = $('#startchange');
    var offset = startchange.offset();
        if (startchange.length){
    $(document).scroll(function() {
        scroll_start = $(this).scrollTop();
        if(scroll_start > offset.top) {
              $(".navbar-default").css('background-color', '#ffffff');
           } else {
              $('.navbar-default').css('background-color', 'transparent');
           }
       });
        }
    });
</script>
<%!int n=0; %>
<%
  String strn=request.getParameter("qty");
  String strm=request.getParameter("itmcode");

 // out.println(strn +"   "+strm+"  ");
  if(strn != null && strm != null){

		  itmcode[i]=request.getParameter("itmcode");
   	      qty[i]=Integer.parseInt(request.getParameter("qty"));
		  out.println(itmcode[i]+"  "+qty[i]+"  "+i);
		  i=i+1;

	for(n=0;n<i;n++){
		out.println(itmcode[n]);

	}
 }
 else{

 }

%>

</body>
</html>
