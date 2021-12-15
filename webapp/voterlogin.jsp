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
String t1=request.getParameter("t1");
String t2=request.getParameter("t2");
try
{
	int i=0;
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/login","root","12345678");
	String sql="select Email,Password from voter_reg where Email='"+t1+"' and Password='"+t2+"'";
	PreparedStatement pst=con.prepareStatement(sql);
	ResultSet rs=pst.executeQuery();
	while(rs.next())
	{
		i=1;
		session.setAttribute("t1",t1);
		response.sendRedirect("voterhome.jsp");
	}
	if(i==0)
	{
		response.sendRedirect("voterlogin.jsp");
	}
}
catch(Exception e)
{
	response.sendRedirect("voterlogin.jsp");
}
%>
</body>
</html>