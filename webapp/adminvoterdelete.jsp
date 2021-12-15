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
background-color:slateblue;
}
</style>
<body>

	
        <h1>Delete Form</h1>
        <form action="adminvoterdelete.jsp" method="post">
            <p>Voter Id</p>
            <input type="text" name="t1" placeholder="Enter Voter ID" required>
            <input type="submit" value="Submit">
        </form>
<%
try
{
	String id    =  request.getParameter("t1");
	
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/login","root","12345678");
	String sql="delete from voter_reg where voter_id='"+id+"'";
		PreparedStatement pst=con.prepareStatement(sql);
		int i=pst.executeUpdate();
		if(i>0)
		{
			response.sendRedirect("adminmanagevoter.jsp");
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