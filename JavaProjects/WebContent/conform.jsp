<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>HOSTELER</title>

<link rel="shortcut icon" href="back.jpg" type="image/x-icon">
<link rel="stylesheet" href="adminbooking.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<style>
.b {
	background-color: #f5b5bd;
	height: 1000px;
	margin-top: -1.2%;
}
</style>


</head>
<body>
	<div style="background-color: #f7ef4a;">
		<div class="host">
			<p style="font-family: 'Times New Roman', Times, serif">HOSTELER</p>
		</div>

		<hr class="hr">
	</div>

	<div class="b">
		<div class="topnav">
			<nav>
				<a href="home.jsp">Home </a> <a href="room.jsp">Rooms</a> <a href=""></a>
				<a href="aboutus.jsp">About Us</a> <a href="contactus.jsp">Contact
					Us</a> <a href="events.jsp">Events</a> <a href="login.jsp">LogOut</a>

			</nav>
		</div>
		<strong style="font-size: 40px; margin-left: 28%;">Booking
			Successfully</strong> 
		<br>
		<div style="margin-left: 30%;">
			<p></p>


			<%@ page import="java.sql.*"%>
			<%@ page import="java.sql.DriverManager"%>
			<%@ page import="java.sql.PreparedStatement"%>
			<%@ page import="java.sql.SQLException"%>
			<%@ page import="java.sql.Connection"%>
			
			
			<style>
			table, th, td {
  border: 2px solid black;

			</style>
			<table>
				<tr style ="background-color: blueviolet">
					<th>F_name</th>
					<th>L_name</th>
					<th>Email</th>
					<th>Mob_no</th>
					<th>Address</th>
				</tr>
			

			<%
				Connection conn = null;
			try {
				Class.forName("com.mysql.jdbc.Driver").newInstance();
				conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/hosteler", "root", "root");
				Statement st = (Statement) conn.createStatement();
				//System.out.println("Records in database are-->");
				ResultSet rs = st.executeQuery("Select * from userinfo");
				while (rs.next()) {
			%>						
						<tr>
							<td><%=rs.getString(1)%></td>
							<td><%=rs.getString(2)%></td>
							<td><%=rs.getString(3)%></td>
							<td><%=rs.getLong(4)  %></td>
							<td><%=rs.getString(5)%></td>
						</tr>
						<%
							}
		   conn.close();
		} catch (Exception e) {
	      System.out.println("Error :-" + e);
}
%>

</table>
<br><br>
	<button onclick="myFunction()" class="btn btn-success">Print</button>
		</div>

		<script>
			function myFunction() {
				window.print();
			}
		</script>
	</div>



</body>
</html>