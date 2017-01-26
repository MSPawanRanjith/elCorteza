<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%! int s=0; %>
<%
  HttpSession sessionsa=request.getSession(true);
  s=(Integer)sessionsa.getAttribute("s");
s=s+1;
sessionsa.setAttribute("s", s);
%>
<%
 session=request.getSession(false);
 if(session!=null){
	 session.invalidate();
 }
 RequestDispatcher view=request.getRequestDispatcher("/index.jsp");
	view.forward(request,response);

%>

</body>
</html>