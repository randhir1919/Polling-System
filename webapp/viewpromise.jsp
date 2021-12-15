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
    body {
padding: 0;
margin: 0;
font-family: sans-serif;
background-color: lightseagreen;
background-size: cover;
width: 562px;
height: 459px;
position: absolute;
top: 50%;
left: 50%;
transform: translate(-50%,-50%);
padding: 92px 126px;
box-sizing: border-box;
font-size: 25px;
}
table{
width:110%;
height:150px;

}
</style>
<body>
<%
try
{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/login","root","12345678");
	String id=(String)session.getAttribute("t1");	
	String sql="select message from candidate_promise where id='"+id+"'";
	PreparedStatement pst=con.prepareStatement(sql);
	ResultSet rs=pst.executeQuery();
	%>
	<table border="2">
	<%
	if(rs.next())
	{
		%>
		<tr>
		    <td> <%=rs.getString(1) %></td>
		</tr>
 <% }
	else
	{
		out.println("Please Enter the Candidate ID First");
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