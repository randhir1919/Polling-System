<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="admin.css">
</head>
<style>
        body{
            padding: 0;
            margin: 0;
            font-family: sans-serif;
            background-image: url("7.jpg");
            background-repeat: no-repeat;
        }
    </style>
<body>
<div class="vm">
        <form action="voteraskquesion.jsp" method="post">
            <p>Voter ID</p>
            <input type="number" name="t1">
            <br>
            <br>
            <br>
            <br>
            <p>Type Your message Here</p>
            <input type="text" name="t2">
            <input type="submit" value="Send">
        </div>
<%
try
{
	String id       =  request.getParameter("t1");
	String message   =  request.getParameter("t2");
	
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/login","root","12345678");
		String sql="insert into voter_message(id,message) values('"+id+"','"+message+"') on duplicate key update message='"+message+"'";
		PreparedStatement pst=con.prepareStatement(sql);
		int i=pst.executeUpdate();
		if(i>0)
		{
			response.sendRedirect("votermessage.jsp");
		}
		else
		{
			response.sendRedirect("voteraskquestion.jsp");
		}
}
catch(Exception e)
{
  e.printStackTrace();
  //out.println(e);
}
%>
</form>
</body>
</html>