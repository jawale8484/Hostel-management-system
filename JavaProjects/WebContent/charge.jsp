<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>HOSTELER</title>

<link rel="shortcut icon" href="back.jpg" type="image/x-icon">
<link rel="stylesheet" href="charge.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity ="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
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
	 <form action="payment.jsp">	
<div style="background-color: #f7ef4a;">
	<div class="host">
		<p style="font-family: 'Times New Roman', Times, serif;" >HOSTELER</p>
	</div>

	<hr class="hr">
</div>

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
<div><br>

            <fieldset class="fieldset">
                <legend style="width: 210px;  margin-left: 10px">
                    <h4>Term & Conditions</h4>
                </legend>
		<div style="padding-left: 10%;">
			<strong>Note :-</strong><br>
			<b>Only single bed are allocated at a time <br>Due to One Year<br><br>
			<label>Select date of joining -</label>
			<input type="date" required>
			
			<label>Amount -1200/-</label><br><br>
		
			<input type="Submit" class="btn btn-danger" value="Pay Amount">

  
			</b></div><br>
			</fieldset>

</div>

	
	</div>
			</form>
			
	<%-- 		
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
		
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String email = request.getParameter("email");
		long phno = Long.parseLong(request.getParameter("phno"));
		String address = request.getParameter("add");
/* 
		String qry = "insert into userInfo values('" + fname + "','" + lname + "','" + email + "','" + phno + "','"
		+ address + "')"; */

		
		String qry = "insert into userinfo values(?,?,?,?,?)";
		PreparedStatement ps=conn.prepareStatement(qry);
		ps.setString(1, fname);
		ps.setString(2, lname);
		ps.setString(3, email);
		ps.setLong(4, phno);
		ps.setString(5, address);
	
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
	
 --%></body>
</html>