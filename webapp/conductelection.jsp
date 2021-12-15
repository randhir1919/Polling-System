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
background-color:aquamarine;
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
<body> <h1> Approve</h1>
	<form action="conductelection.jsp" method="post">
		<h1 class="h2">Enter the Candidate ID: </h1>
		<input type="number" name="t1"> <br> <br>
		
		<input type="submit" value ="ADD"> <br> <br>
		
		
		<button><a href="conductelection2.jsp">Next</a></button>
		
	</form>
	<%
	try
	{
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/login","root","12345678");
		int id=Integer.parseInt(request.getParameter("t1"));
		String sql="insert into approve values('"+id+"')";
		PreparedStatement pst= con.prepareStatement(sql);
		int i=pst.executeUpdate();
		
		if(i>0)
		{
			
			session.setAttribute("id", String.valueOf(id));
			
			response.sendRedirect("conductelection.jsp");
		}
		else
		{
			out.println("Caddidate ID is not present");
		}
	
	}
	
	
	catch(Exception e)
	{
		//out.println(e);
	}
	
	
	
	%>
</body>
</html>