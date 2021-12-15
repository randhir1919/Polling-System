<%@ page import="java.sql.*" %>
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
String Username=request.getParameter("t1");
String Password=request.getParameter("t2");
if("admin@gmail.com".equals(Username) && "randhir".equals(Password))
{
	session.setAttribute("t1",Username);
	response.sendRedirect("adminhome.jsp");
}

%>
</body>
</html>