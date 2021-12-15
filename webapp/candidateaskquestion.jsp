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
            background-image: url("8.jpg");
            background-repeat: no-repeat;
        }
    </style>
<body>
<div class="cm">
        <form action="" method="post">
            <p>Candidate ID</p>
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
	String t1     =  request.getParameter("t1");
	String t2     =  request.getParameter("t2");
	
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/login","root","12345678");
		String sql="insert into candidate_message(id,message) values('"+t1+"','"+t2+"') on duplicate key update message='"+t2+"'";
		PreparedStatement pst=con.prepareStatement(sql);
		int i=pst.executeUpdate();
		if(i>0)
		{
			response.sendRedirect("candidatemessage.jsp");
		}
		else
		{
			response.sendRedirect("candidateaskquestion.jsp");
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