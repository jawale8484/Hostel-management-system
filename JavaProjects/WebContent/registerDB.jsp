<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

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
		
		String uname = request.getParameter("uname");
		String pass = request.getParameter("pass");
		
		/*String qry = "insert into userInfo values('" + fname + "','" + lname + "','" + email + "','" + phno + "','"
		+ address + "')"; */

		
		String qry = "insert into login values(?,?)";
		PreparedStatement ps=conn.prepareStatement(qry);
		ps.setString(1, uname);
		ps.setString(2, pass);
		
		int result=ps.executeUpdate();
		//ResultSet rs=ps.executeQuery();
		/* if(result!=0){
		out.println("<script>Data inserted Successfully</script>");
		} */
	
		
		conn.close();
		
		response.sendRedirect("login.jsp");
		
		
	} catch (Exception e) {
		out.println("Error :" + e);
	}
	%>
</body>
</html>