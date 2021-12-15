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

	<%
	try{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/login","root","12345678");
		String sql1="select C_id, count(C_id) as 'no_of_vote' from result group by C_id order by 'no_of_vote' desc";
		PreparedStatement pst1=con.prepareStatement(sql1);
		ResultSet rs=pst1.executeQuery();
		%><table border="1">
	<tr>
	<th> Candidate ID </th>
	<th> Number of Vote </th>
	<%
		while(rs.next())
		{
			
			int id =rs.getInt(1);
			%><tr>
			
			<td><%= rs.getInt(1)%>
			<td><%= rs.getInt(2)%>
			<%
		}
		
	
}
	catch(Exception e)
	{
	
	out.println(e);
	
	}
	%>

</body>
</html>