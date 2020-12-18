<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	String uname=request.getParameter("uname");
	String pass=request.getParameter("pass");
	if(uname.equals("admin")&& pass.equals("admin")){
		response.sendRedirect("adminbooking.jsp");
	}else
	{
		response.sendRedirect("home.jsp");
	}

%>
</body>
</html>