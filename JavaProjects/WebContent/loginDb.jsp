<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%-- 
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<%!
    Connection con;
    PreparedStatement ps1, ps2;
    public void jspInit()
    {
        try
        {
            //loading the driver            
            Class.forName("com.mysql.jdbc.Driver").newInstance();
             //create statement object
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/hosteler", "root", "root");
		
             //establish the connection
            
            ps1 = con.prepareStatement("select * from login where username = ? and password=?");
            ps2 = con.prepareStatement("select * from login");
        }
        catch(Exception ex)
        {
            ex.printStackTrace();
        }
    }
%>
<%
    String param = request.getParameter("s1");
    if(param =="link")
    {
        ResultSet rs = ps2.executeQuery();
        out.println("<table>");
        while(rs.next())
        {
            out.println("<tr>");
            out.println("<td>"+rs.getString(1)+"</td>");
            out.println("<td>"+rs.getString(2)+"</td");
            out.println("</tr>");
        }
        out.println("</table>");
        rs.close();
    }
    else
    {
        //write jdbc code for authentication
        String uname = request.getParameter("uname");
        String pass = request.getParameter("pass");
        //set form data as param value
        ps1.setString(1,uname);
        ps1.setString(2,pass);
        //excute the query
        ResultSet rs = ps1.executeQuery();
        int cnt = 0;
        if (rs.next())
            cnt = rs.getInt(1);
        if(cnt == 0)
            out.println("<b><i><font color=red>Invalid credential</fonr></i></b>");
        else
        {
            out.println("<form><fieldset style= width:25%; >");
            out.println("<b><i><font color=red>valid credential..</fonr></i></b><br>");
            out.println("<b><i><font size=6 color=blue>Welcome to My Page</fonr></i></b>");
            out.println("</fieldset></form>");
        }
    }
%>
<%!
    public void jspDestroy()
    {
        try
        {
            //colse
            ps1.close();
            ps2.close();
            con.close();
        }
        catch(Exception ex)
        {
            ex.printStackTrace();
        }
    }
%>

 --%>

<%@page import="java.sql.*"%>



<%
	String user=request.getParameter("uname");
	String pass=request.getParameter("pass");
	if(user.equals("admin")&& pass.equals("admin")){
		response.sendRedirect("adminbooking.jsp");
	}else
	{
		//response.sendRedirect("home.jsp");
	





try{
//String user=request.getParameter("uname");
//String pass=request.getParameter("pass");
 Class.forName("com.mysql.jdbc.Driver").newInstance();
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hosteler","root","root");  
           Statement st=con.createStatement();
           ResultSet rs=st.executeQuery("select * from login where uname='"+user+"' and pass='"+pass+"'");
           int count=0;
           while(rs.next()){
           count++;
          }
          if(count>0){
           //out.println("welcome "+user);
           response.sendRedirect("home.jsp");
           }
          else{
           response.sendRedirect("login_Invalid.jsp");
          }
        }
    catch(Exception e){
   
    out.println("Error-"+e);
}

	}
%>



</body>
</html>