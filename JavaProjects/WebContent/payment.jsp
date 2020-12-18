<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html> <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>HOSTELER</title>

    <link rel="shortcut icon" href="back.jpg" type="image/x-icon">
    <link rel="stylesheet" href="home.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
        integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<style>
body {
  font-family: Arial;
  font-size: 17px;
  padding: 8px;
}

* {
  box-sizing: border-box;
}

.row {
  display: -ms-flexbox; /* IE10 */
  display: flex;
  -ms-flex-wrap: wrap; /* IE10 */
  flex-wrap: wrap;
  margin: 0 -16px;
}

.col-25 {
  -ms-flex: 25%; /* IE10 */
  flex: 25%;
}

.col-50 {
  -ms-flex: 50%; /* IE10 */
  flex: 50%;
}

.col-75 {
  -ms-flex: 75%; /* IE10 */
  flex: 75%;
}

.col-25,
.col-50,
.col-75 {
  padding: 0 60px;
  padding-left: 35%;
  padding-right: 35%;
}

.container {
  background-color: #f2f2f2;
  padding: 5px 5px 15px 20px;
  border: 1px solid lightgrey;
  border-radius: 3px;
}

input[type=text] {
  width: 100%;
  margin-bottom: 20px;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 3px;
}

label {
  margin-bottom: 10px;
  display: block;
}

.icon-container {
  margin-bottom: 20px;
  padding: 7px 0;
  font-size: 24px;
}

.btn {
  background-color: #4CAF50;
  color: white;
  padding: 12px;
  margin: 10px 0;
  border: none;
  width: 100%;
  border-radius: 3px;
  cursor: pointer;
  font-size: 17px;
}

.btn:hover {
  background-color: #45a049;
}

a {
  color: #2196F3;
}

hr {
  border: 1px solid lightgrey;
}

span.price {
  float: right;
  color: grey;
}

/* Responsive layout - when the screen is less than 800px wide, make the two columns stack on top of each other instead of next to each other (also change the direction - make the "cart" column go on top) */
@media (max-width: 800px) {
  .row {
    flex-direction: column-reverse;
  }
  .col-25 {
    margin-bottom: 20px;
  }
}





.b{
background-color: #f5b5bd; 
height: 900px;
  margin-top: -1.2%;
}
	

</style>





</head>
<body>




<div style="background-color: #f7ef4a;">
	<div class="host">
		<p style="font-family: 'Times New Roman', Times, serif"; >HOSTELER</p>
	</div>

	<hr class="hr"></div>
<div class="b">
	<div class="topnav">

		<a href="home.jsp">Home  </a>
		 <a href="room.jsp">Rooms</a> 
		  <a href="aboutus.jsp">About Us</a>
		   <a href="contactus.jsp">Contact Us</a>
		    <a href="events.jsp">Events</a>
		      <a href="login.jsp">LogOut</a>
		</nav>
	</div><br><br>
	

<div class="row">
  <div class="col-75">
    <div class="container">
     

            <h3>Payment</h3>
            <label for="fname">Accepted Cards</label>
            <div class="icon-container">
              <i class="fa fa-cc-visa" style="color:navy;"></i>
              <i class="fa fa-cc-amex" style="color:blue;"></i>
              <i class="fa fa-cc-mastercard" style="color:red;"></i>
              <i class="fa fa-cc-discover" style="color:orange;"></i>
            </div>
            <label for="cname">Name on Card</label>
            <input type="text" id="cname" name="cardname" placeholder="Enter your name" required>
            <label for="ccnum">Credit card number</label>
            <input type="text" id="ccnum" name="cardnumber" placeholder="1111-2222-3333-4444" required>
           
           
           <div style="">
           
            <label for="expmonth">Exp Month</label>
            <input type="text" id="expmonth" name="expmonth" placeholder="enter month" required>
           
              
                <label for="expyear">Exp Year</label>
                <input type="text" id="expyear" name="expyear" placeholder="enter year" required>
              
             
                <label for="cvv">CVV</label>
                <input type="password" id="cvv" name="cvv" placeholder="enter cvv" required>
                
                </div>
       <input type="submit" onclick="myfunction()" id="submit" class="btn btn-danger" value="Submit" >
              </div>
            </div>
          </div>
          
        </div>
        
        
        
<script>
function myfunction() {
    var ask = window.confirm("Please Confirm Your information...!");
    if (ask) {
       

        window.location.href = "conform.jsp";
        
      
		

    }
}</script>
        
    </div>
  </div>
 </div>
  </div>
</div>

</body>
</html>
