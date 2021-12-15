<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
body{
    background-color: gray;
    font-size: 20px;
}
</style>
<body>
<%
try
{	
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/login","root","12345678");
	String sql="select * from candidate_promise";
	PreparedStatement pst=con.prepareStatement(sql);
	ResultSet rs=pst.executeQuery();
	while(rs.next())
	{
		out.println("<b>Candidate ID-</b>"+rs.getInt(1)+" "+"<b>Promise-</b>"+rs.getString(2));
		%>
		<br>
		<br>
		<%
	}
}
catch(Exception e)
{
  e.printStackTrace();
  //out.println(e);
}
%>
</body>
</html>