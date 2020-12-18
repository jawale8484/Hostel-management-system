<!DOCTYPE html>
<html>
<head>


<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>HOSTELER</title>

<link rel="shortcut icon" href="back.jpg" type="image/x-icon">
<link rel="stylesheet" href="contactus.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
	
			
<style>

.b{
background-color: #f5b5bd; 
height: 600px;
  margin-top: -1.2%;
}

</style>
</head>
<body>
<form>
<div style="background-color: #f7ef4a;">
<div class="host">
		<p style="font-family: 'Times New Roman', Times, serif">HOSTELER</p>
	</div>

	<hr class="hr"></div>
	
	<div class="b">

	<div class="topnav">
<nav>
		<a href="home.jsp">Home  </a>
		 <a href="room.jsp">Rooms</a> 
		 <a href=""></a>
		  <a href="aboutus.jsp">About Us</a>
		   <a href="contactus.jsp">Contact Us</a>
		   <a href="events.jsp">Events</a>
		      <a href="login.jsp">LogOut</a>
		</nav>
	</div>
	<br><br>
	<div  style="margin-left: 15%;">
	
	 <!-- <div style="margin-left:70%;margin-top:0%; ">
            <img src="back.jpg" style=" height: 250px; width: 80%;"> </div>
             -->
            
            <div style="margin-top: ;">   
                    <h2 style="margin-left: 15%">Contact Us &nbsp;&nbsp;&nbsp;&nbsp;
                            &nbsp;&nbsp;&nbsp;&nbsp;
                            &nbsp;&nbsp;&nbsp;
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            &nbsp; Conact Info </h2>
                         <b style="margin-left: 5%;">  If You Have Any Questions, Comments, Or Requests,<br> 
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                            &nbsp; &nbsp; &nbsp; Please Feel Free To Contact Us.</b> 
</div>
<div >
 <fieldset class="box">
    
<b>
     <table>
         <tr>
             <td><br>
                 <label for="name">Full Name:-</label>&nbsp;&nbsp;
                 <input type="text" name="name" placeholder="@Name"  required ><br>
                 </td></tr><tr><td>	
                 <label for="Email">Email Id:-</label>
                 &nbsp;&nbsp;&nbsp;
                 <input type="email" name="email" placeholder="@Email" required >

<br>
</td>
</tr>

<tr>
    <td>
            <label for="contact no:-">contact no:-</label>
            <input type="number" name="phno" id="" placeholder="@Contact No" required><br>	<td></tr>
            <tr><td>
            <label for="city">city :- &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; </label>
			
            <input type="text" name="city" id="" placeholder="@city" required>

             </td>
         </tr>
         <tr>
             <td>
                 <label for="massege">massage:- &nbsp;&nbsp;</label>
                <textarea name="massege" id="" cols="57" rows="2" required></textarea>
                </td>
         </tr>
         <tr>
             <td><center>
                 <input type="submit" onclick="myFunction()" class="btn btn-danger" value="Submit">
                </center>
             </td>
         </tr>
     </table>
 </fieldset>
</P></b>
</div>

<script>
function myFunction() {
  alert("Successfuly Submitted..!");
}



</script>

<!-- 
<div  class="info">
 -->
 
 <div style="border: 1px solid black;   margin-left: 42%;
  margin-right: 31%;
  margin-top: -28%;	" >
 &nbsp;
    <label for="Email" ><b> Email:- </b></label> 
    vjawale203@gmail.com <br>
   	
    &nbsp;
    <label for="phone"><b>Phone:- </b></label>
    +91 8484907403
     &nbsp;<br>&nbsp;
    <label for="website"> <b> website:-</b></label>
   www.hosteler.com <br>&nbsp;
    <label for="add"> <b>Address:- </b></label>
    Pune, maharashtra.


</div>
</div></div></div>




	<%@ page import="java.sql.*"%>
	<%@ page import="java.sql.DriverManager"%>
	<%@ page import="java.sql.PreparedStatement"%>
	<%@ page import="java.sql.SQLException"%>
	<%@ page import="java.sql.Connection"%>

	<%
		try {
		Class.forName("com.mysql.jdbc.Driver").newInstance();
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/hosteler", "root", "root");
		
		//Statement st = conn.createStatement();
		
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		long phno = Long.parseLong(request.getParameter("phno"));
		String city = request.getParameter("city");
		String massege = request.getParameter("massege");
/* 
		String qry = "insert into userInfo values('" + fname + "','" + lname + "','" + email + "','" + phno + "','"
		+ address + "')"; */

		
		String qry = "insert into contactus values(?,?,?,?,?)";
		PreparedStatement ps=conn.prepareStatement(qry);
		ps.setString(1, name);
		ps.setString(2, email);
		ps.setLong(3, phno);
		ps.setString(4, city);
		ps.setString(5, massege);
	
		int result=ps.executeUpdate();
		//ResultSet rs=ps.executeQuery();
		/* if(result!=0){
		out.println("<script>Data inserted Successfully</script>");
		} */
	
		
		conn.close();
		
		
		
	} catch (Exception e) {
		out.println("Error :" + e);
	}
	%>
	</form>

</body>
</html>