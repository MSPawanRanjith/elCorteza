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
   String pass_up=request.getParameter("pass_up");
   String phone_up=request.getParameter("phone_up");
   String mail_up=request.getParameter("mail_up");
   String user=request.getParameter("user");
  // out.println(user+" <br>");
    Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/elcorteza","root","network");
	Statement stmt=con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
   if(pass_up !=""){
	   String pass_query="update user set password='"+pass_up+"' where user_name='"+user+"';";
	   int c=stmt.executeUpdate(pass_query);
	   //out.println("pass " +c);
	   //out.println("<br>"+pass_query);
   }
   if(phone_up !=""){
	   String phone_query="update user set phone_no ='"+phone_up+"' where user_name='"+user+"';";
	   int c=stmt.executeUpdate(phone_query);
	  // out.println("phone " +c);
	  // out.println("<br>"+phone_query);
   }
   if(mail_up !=""){
	   String mail_query="update user set email_id ='"+mail_up+"' where user_name='"+user+"';";
	   int c=stmt.executeUpdate(mail_query);
	  // out.println("mail " +c);
	  // out.println("<br>"+mail_query);
   }
   
   
   RequestDispatcher view=request.getRequestDispatcher("/OrderLogin.jsp");
	view.include(request,response);
%>



</body>
</html>