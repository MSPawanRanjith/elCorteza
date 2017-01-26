<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.*" %>
    <%@ page import="java.sql.*" %>
    <%@ page import="javax.servlet.*" %>
    <%@page import="javax.servlet.http.*" %>
    <%@ page import="javax.servlet.annotation.WebServlet;" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  <script src="http://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css"></script>
  <link href="ionicons-2.0.1\css\ionicons.css" rel="stylesheet" />
  <link href="ionicons-2.0.1\css\ionicons.min.css" rel="stylesheet" />
  <style >

  .icon {

   font-family:"Ionicons";
  }
  .progress-bar{
   background-color :'red';
  }
  </style>
</head>
<body>
<i class="icon ion-home"></i>

<footer class="text-center">
  <a class="up-arrow" href="#myPage" data-toggle="tooltip" title="TO TOP">
    <span class="glyphicon glyphicon-chevron-up"></span>
  </a><br><br>
  <p style="font-size:45px;">Developed by<br><Span class="ion-ios-wineglass-outline"style="font-size:96px;"></Span></p>
</footer>
<footer class="text-center">
  <a class="up-arrow" href="#myPage" data-toggle="tooltip" title="TO TOP">
    <span class="glyphicon glyphicon-chevron-up"></span>
  </a><br><br>
  <p style="font-size:45px;">Developed by<br><Span class="glyphicon glyphicon-glass"style="font-size:96px;"></Span></p>
</footer>
<p></p>
<div class="container">
  <h2>OREDR FORM</h2>

  <script>
  var i = 0;
	var counterBack = setInterval(function(){
    i = i+25;
    if(i < 101){
      $('.progress-bar').css('width', i+'%');
      if(i == 25)
      document.getElementById("demo").innerHTML = "MAKING";
      if( i == 50)
   	  document.getElementById("demo").innerHTML = "BAKING";
      if( i == 75)
      document.getElementById("demo").innerHTML = "PACKING";
      if( i == 100)
      document.getElementById("demo").innerHTML = "DISPATCHED";
    } else {
      clearTimeout(counterBack);
    }

  }, 2000);
  </script>
  <div class="progress">
    <div class="progress-bar progress-bar-success progress-bar-striped active" role="progressbar" aria-valuemin="0" aria-valuemax="100" style="width:0%">
    </div>
  </div>
   <h4 id="demo"> ORDER RECEIVED</h4>
</div>

</body>
</html>
