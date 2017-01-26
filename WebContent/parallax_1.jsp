<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>FRANCHISE</title>
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
<link href="x_rotating_card_v1.4\css\bootstrap.css" rel="stylesheet" />
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<link href="http://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
<link href="http://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<link href="x_rotating_card_v1.4\css\rotating-card.css" rel="stylesheet" />
<link href="ionicons-2.0.1\css\ionicons.css" rel="stylesheet" />
<link href="ionicons-2.0.1\css\ionicons.min.css" rel="stylesheet" />
<link href="http://netdna.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css" rel="stylesheet" />
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<style>
body,h1,h2,h3,h4,h5,h6 {font-family: "Lato", sans-serif;}
body, html {
    height: 100%;
    color: #777;
    line-height: 1.8;
    background-color: white;
}

.container {
padding: 20px 0px;
width: 90%;
 

}


/* Create a Parallax Effect */
.bgimg-1, .bgimg-2, .bgimg-3 {
    opacity: 0.7;
    background-attachment: fixed;
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
}

/* First image (Logo. Full height) */
.bgimg-1 {
    background-image: url('images/open.jpg');
    min-height: 100%;
}

/* Second image (Portfolio) */
.bgimg-2 {
    background-image: url("images/ios7.jpg");
    min-height: 400px;
}

/* Third image (Contact) */
.bgimg-3 {
    background-image: url("images/clouds.jpg");
    min-height: 400px;
}

.w3-wide {letter-spacing: 10px;}
.w3-hover-opacity {cursor: pointer;}

#googleMap {
    width: 100%;
    height: 400px;
    -webkit-filter: grayscale(90%);
    filter: grayscale(90%);
}


</style>
</head>

<body><!-- Navbar (sit on top) -->
<div class="w3-top">
  <ul class="w3-navbar" id="myNavbar">
    <li><a href="#" onclick="window.close()" class="w3-padding-large"><span class="glyphicon glyphicon-home"></span> HOME</a></li> 
  </ul>
</div>

<!-- First Parallax Image with Logo Text -->
<div class="bgimg-1 w3-opacity w3-display-container"id="start">
  <div class="w3-display-middle" style="white-space:nowrap;">
    <span class="w3-center w3-padding-xlarge w3-black w3-xlarge w3-wide w3-animate-opacity">FRANCHISE</span>
  </div>
</div>

<!-- Container (About Section) -->
<div class="w3-content w3-container w3-padding-64">
    <h3 class="w3-center">EARLY ESTABLISHMENTS</h3>
    <br>
  <p class="w3-center"><em>Simple promise, genuine success</em></p>
  </br>
  </div>
  <div class="container">
    <div class="row">
         <div class="col-sm-6">
			<div class="card-container">
				<div class="card ">
					<div class="front">
						<div class="cover">
							<img src="images/pic5.jpg" />
						</div>
						<div class="user">
							<img class="img-circle" src="images/el_cortez.jpg"/>
						</div>
						<div class="content">
							<div class="main">
								<h3 class="name">EL CORTEZ</h3>
								<p class="profession">Rajajinagar</p>
								<h5><i class="fa fa-phone fa-fw text-muted"></i> 080 23324808</h5>
								<h5><i class="fa fa-building-o fa-fw text-muted"></i> Prestige </h5>
								<h5><i class="fa fa-envelope-o fa-fw text-muted"></i> R_Nagar@elcortez.com</h5>
							</div>
							<div class="footer">
								<div class="rating">
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
								</div>
							</div>
						</div>
					</div> <!-- end front panel -->
						<div class="back">
							<div class="header">
								<h5 class="motto">"Yours Truly Restaurant. For AM & PM people "</h5>
							</div> 
							<div class="content">
								<div class="main">
								<div class="w3-content w3-container w3-padding-30">
									<li ><em>Address: </em> 12th Main, 2nd Block, Rajajinagar, Bangalore</li>
									<br>
									<li ><em>Cost for two: </em>RS 500</li>
									<br>
									<li ><em>Hours: </em>   9 AM to 9 PM (Mon, Wed-Sun), Tue Closed</li>
									</div>
								</div>
							</div>
							<div class="footer">
								<div class="social-links text-center">
									<a href="http://elcortezhotelcasino.com" class="facebook"><i class="fa fa-facebook fa-fw"></i></a>
									<a href="http://elcortezhotelcasino.com" class="google"><i class="fa fa-google-plus fa-fw"></i></a>
									<a href="http://elcortezhotelcasino.com" class="twitter"><i class="fa fa-twitter fa-fw"></i></a>
								</div>
							</div>
						</div> <!-- end back panel -->
					</div> <!-- end card -->
			</div> <!-- end card-container -->
			</div>
			
			  <div class="col-sm-6">
			<div class="card-container">
				<div class="card">
					<div class="front">
						<div class="cover">
							<img src="images/pic1.jpg"/>
						</div>
						<div class="user">
							<img class="img-circle" src="images/El-Cortez3.jpg"/>
						</div>
						<div class="content">
							<div class="main">
								<h3 class="name">EL CORTEZ</h3>
								<p class="profession">Malleshwaram</p>
								<h5><i class="fa fa-phone fa-fw text-muted"></i> 080 23317531</h5>
								<h5><i class="fa fa-building-o fa-fw text-muted"></i> Shoba </h5>
								<h5><i class="fa fa-envelope-o fa-fw text-muted"></i> M_ram@elcortez.com</h5>
							</div>
							<div class="footer">
								<div class="rating">
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
								</div>
							</div>
						</div>
					</div> <!-- end front panel -->
						<div class="back">
							<div class="header">
									<h5 class="motto">"Yours Truly Restaurant. For AM & PM people "</h5>
							</div> 
							<div class="content">
								<div class="main">
								<div class="w3-content w3-container w3-padding-30">
									<li ><em>Address: </em>7th Cross, Margosa Road, Malleshwaram, Bangalore</li>
									<br>
									<li ><em>Cost for two: </em>RS 600</li>
									<br>
									<li ><em>Hours: </em>   9 AM to 9 PM (Tue-Sun), Mon Closed</li>
									</div>
								</div>
							</div>
							<div class="footer">
								<div class="social-links text-center">
									<a href="http://elcortezhotelcasino.com" class="facebook"><i class="fa fa-facebook fa-fw"></i></a>
									<a href="http://elcortezhotelcasino.com" class="google"><i class="fa fa-google-plus fa-fw"></i></a>
									<a href="http://elcortezhotelcasino.com" class="twitter"><i class="fa fa-twitter fa-fw"></i></a>
								</div>
							</div>
						</div> <!-- end back panel -->
					</div> <!-- end card -->
			</div> <!-- end card-container -->
		</div>  
		</div>
		</div>



<!-- Second Parallax Image with Portfolio Text -->
<div class="bgimg-2 w3-display-container">
  <div class="w3-display-middle">
    <span class="w3-xlarge w3-text-light-grey w3-wide">NEWLY INAUGURATED</span>
  </div>
</div>

<!-- Container (About Section) -->
<div class="w3-content w3-container w3-padding-64">
    <h3 class="w3-center">NEW ESTABLISHMENTS</h3>
    <br>
  <p class="w3-center"><em>Not only looks better, but just is</em></p>
  
  </div>
  <div class="container">
    <div class="row">
         <div class="col-sm-6">
			<div class="card-container">
				<div class="card ">
					<div class="front">
						<div class="cover">
							<img src="images/pic3.jpg"/>
						</div>
						<div class="user">
							<img class="img-circle" src="images/pic7.jpg"/>
						</div>
						<div class="content">
							<div class="main">
								<h3 class="name">EL CORTEZ</h3>
								<p class="profession">Seshadripuram</p>
								<h5><i class="fa fa-phone fa-fw text-muted"></i>  080 23447520</h5>
								<h5><i class="fa fa-building-o fa-fw text-muted"></i> Brigade Group</h5>
								<h5><i class="fa fa-envelope-o fa-fw text-muted"></i>S_ram@elcortez.com</h5>
							</div>
							<div class="footer">
								<div class="rating">
									<i class="fa fa-star"></i>
								</div>
							</div>
						</div>
					</div> <!-- end front panel -->
						<div class="back">
							<div class="header">
								<h5 class="motto">"Yours Truly Restaurant. For AM & PM people "</h5>
							</div> 
							<div class="content">
								<div class="main">
								<div class="w3-content w3-container w3-padding-30">
									<li ><em>Address: </em>29/2, Nagappa Street, Nehrunagar Circle, Seshadripuram, Bangalore</li>
									<br>
									<li ><em>Cost for two: </em>RS 300</li>
									<br>
									<li ><em>Hours: </em>   11 AM to 9 PM (Mon-Sun)</li>
									</div>
								</div>
							</div>
							<div class="footer">
								<div class="social-links text-center">
									<a href="http://elcortezhotelcasino.com" class="facebook"><i class="fa fa-facebook fa-fw"></i></a>
									<a href="http://elcortezhotelcasino.com" class="google"><i class="fa fa-google-plus fa-fw"></i></a>
									<a href="http://elcortezhotelcasino.com" class="twitter"><i class="fa fa-twitter fa-fw"></i></a>
								
								</div>
							</div>
						</div> <!-- end back panel -->
					</div> <!-- end card -->
			</div> <!-- end card-container -->
			</div>
			
			  <div class="col-sm-6">
			<div class="card-container">
				<div class="card">
					<div class="front">
						<div class="cover">
							<img src="images/spain.jpg"/>
						</div>
						<div class="user">
							<img class="img-circle" src="images/pic2.jpg"/>
						</div>
						<div class="content">
							<div class="main">
								<h3 class="name">EL CORTEZ</h3>
								<p class="profession">Basaveshwara Nagar</p>
								<h5><i class="fa fa-phone fa-fw text-muted"></i> 080 42521000</h5>
								<h5><i class="fa fa-building-o fa-fw text-muted"></i> Brigade Group </h5>
								<h5><i class="fa fa-envelope-o fa-fw text-muted"></i> B_nagar@elcortez.com</h5>
							</div>
							<div class="footer">
								<div class="rating">
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
								</div>
							</div>
						</div>
					</div> <!-- end front panel -->
						<div class="back">
							<div class="header">
								<h5 class="motto">"Yours Truly Restaurant. For AM & PM people "</h5>
							</div> 
							<div class="content">
								<div class="main">
								<div class="w3-content w3-container w3-padding-30">
									<li ><em>Address: </em>48, 1st Main Road, 2nd Block, Near Gangadham, 3rd Stage, Basaveshwara Nagar, Bangalore</li>
									<br>
									<li ><em>Cost for two: </em>RS 1000</li>
									<br>
									<li ><em>Hours: </em>   12 AM to 12 PM (Mon-Sun)</li>
									</div>
								</div>
							</div>
							<div class="footer">
								<div class="social-links text-center">
									<a href="http://elcortezhotelcasino.com" class="facebook"><i class="fa fa-facebook fa-fw"></i></a>
									<a href="http://elcortezhotelcasino.com" class="google"><i class="fa fa-google-plus fa-fw"></i></a>
									<a href="http://elcortezhotelcasino.com" class="twitter"><i class="fa fa-twitter fa-fw"></i></a>
								</div>
							</div>
						</div> <!-- end back panel -->
					</div> <!-- end card -->
			</div> <!-- end card-container -->
		</div>  
		</div>
		</div>

<!-- Third Parallax Image with Portfolio Text -->
<div class="bgimg-3 w3-display-container">
  <div class="w3-display-middle">
     <span class="w3-xlarge w3-text-light-grey w3-wide">COMING SOON!</span>
  </div>
</div>

<!-- Container (About Section) -->
<div class="w3-content w3-container w3-padding-64">
    <h3 class="w3-center">UPCOMING ESTABLISHMENTS</h3>
    <br>
  <p class="w3-center"><em>DINING TAKEN TO THE NEXT LEVEL!</em></p>
  </br>
  </div>
  <div class="container">
    <div class="row">
         <div class="col-sm-12">
			<div class="card-container">
				<div class="card ">
					<div class="front">
						<div class="cover">
							<img src="images/thirty8.jpg"/>
						</div>
						<div class="user">
							<img class="img-circle" src="images/El-Cortez2.jpg"/>
						</div>
						<div class="content">
							<div class="main">
								<h3 class="name">EL CORTEZ</h3>
								<p class="profession">Electronic City</p>
								<h5><i class="fa fa-phone fa-fw text-muted"></i> 080 42080065</h5>
								<h5><i class="fa fa-building-o fa-fw text-muted"></i> Goyal Group </h5>
								<h5><i class="fa fa-envelope-o fa-fw text-muted"></i> E_City@elcortez.com</h5>
							</div>
							<div class="footer">
								<div class="rating">
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
								</div>
							</div>
						</div>
					</div> <!-- end front panel -->
						<div class="back">
							<div class="header">
								
									<h4 class="motto">"Yours Truly Restaurant. For AM & PM people "</h4>
							</div> 
							<div class="content">
								<div class="main">
								<div class="w3-content w3-container w3">
									<li ><em>Address: </em>48, 15th Main Road, Electronic City Phase 2, Bangalore</li>
									<br>
									<li ><em>Cost for two: </em>RS 2000</li>
									<br>
									<li ><em>Hours: </em>   10 AM to 10 PM (Mon-Sun)</li>
									</div>
								</div>
							</div>
							<div class="footer">
								<div class="social-links text-center">
									<a href="http://elcortezhotelcasino.com" class="facebook"><i class="fa fa-facebook fa-fw"></i></a>
									<a href="http://elcortezhotelcasino.com" class="google"><i class="fa fa-google-plus fa-fw"></i></a>
									<a href="http://elcortezhotelcasino.com" class="twitter"><i class="fa fa-twitter fa-fw"></i></a>
								</div>
							</div>
						</div> <!-- end back panel -->
					</div> <!-- end card -->
			</div> <!-- end card-container -->
			</div>
		</div>
		</div>


<!-- Footer -->
<footer class="w3-center w3-dark-grey w3-padding-48 w3-hover-black">
<a class="up-arrow" href="#start" data-toggle="tooltip" title="TO TOP">
    <span class="glyphicon glyphicon-chevron-up"></span>
  </a><br><br>
  <p> <a  target="_blank" class="w3-hover-opacity">EL CORTEZ</a></p>
</footer>
 


<script>



// Change style of navbar on scroll
window.onscroll = function() {myFunction()};
function myFunction() {
    var navbar = document.getElementById("myNavbar");
    if (document.body.scrollTop > 100 || document.documentElement.scrollTop > 100) {
        navbar.className = "w3-navbar" + " w3-card-2" + " w3-animate-top" + " w3-white";
    } else {
        navbar.className = navbar.className.replace(" w3-card-2 w3-animate-top w3-white", "");
    }
}
</script>

</body>
</html>
