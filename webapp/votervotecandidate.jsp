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
background-color:darkcyan;
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
	<form action ="votervotecandidate.jsp" method="post">
	
	<h1 class="h3">VOTE FROM HERE</h1>
	<div class="h1">
	Enter Your Voter ID
	</div>
	<input type="number" name="t1"><br><br><br>
	<h1 class="h2">
	Enter the Candidate ID
	</h1>
	<input type ="number" name="t2"><br><br><br>
	
	<input type="submit" value="VOTE">
	
	</form>
	<p class="p"> <b>NOTE &nbsp; :</b> When You see Vote Sucessfull page then only your vote received otherwise try again!</p>
	<% 
	try
		{
			int vid=Integer.parseInt(request.getParameter("t1"));
			int cid=Integer.parseInt(request.getParameter("t2"));
			int k=0;
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/login","root","12345678");
				String sql ="insert into result(voter_id,C_id) values ('"+vid+"','"+cid+"')";
				PreparedStatement pst=con.prepareStatement(sql);
			
				int i=pst.executeUpdate();
				if(i>0)
				{
					response.sendRedirect("votesucessfull.jsp");		
				}
		}
		catch(Exception e)
		{
				
		}
		%>
		
</body>
</html>