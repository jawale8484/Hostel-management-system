<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>HOSTELER</title>

<link rel="shortcut icon" href="back.jpg" type="image/x-icon">
<link rel="stylesheet" href="home.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity ="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
	
<style>

.b{
background-color: #f5b5bd; 
height: 700px;
  
}

</style>

</head>
<body>
<div style="background-color: #f7ef4a;">
	<div class="host">
		<p style="font-family: 'Times New Roman', Times, serif" >HOSTELER</p>
	</div>

	<hr class="hr">

</div>
<div class="b">
	<div class="topnav" style="margin-top: -1.1%;">
<nav>
		<a href="home.jsp">Home  </a>
		 <a href="room.jsp">Rooms</a> 
		  <a href="aboutus.jsp">About Us</a>
		   <a href="contactus.jsp">Contact Us</a>
		    <a href="events.jsp">Events</a>
		      <a href="login.jsp">LogOut</a>
		</nav>
	</div>


	<div style="margin-left: 30%;">
		<h2 class="w3-center">Rooms which you want's</h2>
		<h4 style="margin-right: 48%;"><marquee>It time to confirm your seats....!</marquee></h4>
		<div class="w3-content w3-section" style="max-width: 500px">
		<img class="mySlides" src="back.jpg"style="width: 500px; height: 300px;"> 
		<img class="mySlides" src="img-1.jpg" style="width: 500px; height: 300px;">
		 <img class="mySlides" src="img-2.jpg" style="width: 500px; height: 300px;">
		 <img class="mySlides" src="img-3.jpg" style="width: 500px; height: 300px;">		
		<img class="mySlides" src="img-4.jpg" style="width: 500px; height: 300px;">
		
		</div>
	</div>

	<script>
		var myIndex = 0;
		carousel();

		function carousel() {
			var i;
			var x = document.getElementsByClassName("mySlides");
			for (i = 0; i < x.length; i++) {
				x[i].style.display = "none";
			}
			myIndex++;
			if (myIndex > x.length) {
				myIndex = 1
			}
			x[myIndex - 1].style.display = "block";
			setTimeout(carousel, 2000); // Change image every 2 seconds
		}
	</script>
	
	
	<address style="margin-left: 30%;">
	<b style="font-size: 30px; ">Address-</b><br><b>
	Near JSPM College,<br>Hadpasar,<br>Pune.<br>411028.<br>
	
	Find Location on Google map
	</b>
	<a href="https://www.google.com/maps/place/Runwal+Seagull/@18.
	4806703,73.9307725,18.74z/
	data=!4m5!3m4!1s0x3bc2ea03b3300b43:
	0xf5debb6f38b3112f!8m2!3d18.4807687!4d73.9313881">
	<strong style="  "> click here</strong></a>
	
	</address>
	
	<hr class=hr>
	</div>
	
	
		
</body>
</html>