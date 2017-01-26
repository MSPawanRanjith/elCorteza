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
<title>Insert title here</title>
</head>
<body>


 <%
     try{
    	 String usr=request.getParameter("user");
	 	 String pass=request.getParameter("pass");
	 	 String email=request.getParameter("mail");
	 	 String phone=request.getParameter("phone");
     
	 	Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/elcorteza","root","network");
		Statement stmt=con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
		PreparedStatement ps=con.prepareStatement("insert into user values(?,?,?,?);");
		
			ps.setString(1,usr);
			ps.setString(2, pass);
			ps.setString(4, email);
			ps.setString(3,phone);
			int c=ps.executeUpdate();
			
			//out.println("<p>"+c+"</p>");
			RequestDispatcher view=request.getRequestDispatcher("/OrderLogin.jsp");
			view.forward(request,response);
			
		}
		catch(Exception e){
			out.println("plss choose new username sorry its asigned already!!");
			RequestDispatcher view=request.getRequestDispatcher("/SignUpInvalid.jsp");
			view.forward(request,response);
			
		}
		
		
		
%>



</body>
</html>