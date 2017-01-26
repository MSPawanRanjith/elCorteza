<%@page import="com.sun.org.glassfish.gmbal.ManagedAttribute"%>
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
<%! String usr; String pass; int count=0; %>

 <%
	 
	 
	 String usr=request.getParameter("user");
	 String pass=request.getParameter("pass");

	 	Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/elcorteza","root","network");
		Statement stmt=con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
		String sel="select password from user where(user_name='"+usr+"');";
		ResultSet rs=stmt.executeQuery(sel);
		//if(count<3){
	
	
		if(rs.next()==true){
			rs.previous();
			while(rs.next()){
				count=0;
				String password=rs.getString(1);
				if(pass.equals(password)){
					
					RequestDispatcher view=request.getRequestDispatcher("/OrderLogin.jsp");
					view.forward(request,response);
					//out.println("The login is Sucessful");
				}
				else{
					//count++;
					//out.println("The username error!!");
					
					RequestDispatcher view=request.getRequestDispatcher("/LoginInvalid.jsp");
					view.include(request,response);
				}
			}
		
		}
		else{
			//count++;
			//out.println("The username error!!");
			
			RequestDispatcher view=request.getRequestDispatcher("/LoginInvalid.jsp");
			view.include(request,response);
		}
 
		// }
		
 
%>
 
</body>
</html>