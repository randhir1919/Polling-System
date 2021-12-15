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
text-decoration:none;
background-color:lightblue;
width: 350px;
height: 420px;
position: absolute;
top: 50%;
left: 50%;
transform: translate(-50%,-50%);
padding: 80px 40p;
box-sizing: border-box;
}

</style>
<body>
	<h1> List Of Approved Candidate </h1>
	<%
	try
	{		
	
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/login","root","12345678");
		String id=(String)session.getAttribute("id");
		
		String sql="select * from candidate_reg natural join approve";
		PreparedStatement pst= con.prepareStatement(sql);
		ResultSet rs=pst.executeQuery();
		%>
		<table border="1">
		<tr>
		<th> Candidate ID</th>
		<th> Name</th>
		<th> Party Name</th>
		<th> Election Region</th>
		</tr>
		<%
		while(rs.next())
		{
			%>
			<tr>
			<td><%= rs.getInt(1) %></td>
			<td><%= rs.getString(2)+"	"+rs.getString(3)%></td>
			<td><%= rs.getString(8)%></td>
			<td><%= rs.getString(15)%></td>
			<% 
			//out.println(rs.getInt(1)+"	  "+rs.getString(2)+"	"+rs.getString(3)+"	"+rs.getString(4)+"		"+rs.getString(5));
		}
		
}
catch(Exception e)
{
	out.println(e);
}


%>
<a href ="conductelection3.jsp"><button>Start the Election</button></a> <br><br>
</body>
</html>