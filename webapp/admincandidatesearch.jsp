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
    background-color:darkkhaki;
}
</style>
<body>
 


        <h1>Search Form</h1>
        <form action="admincandidatesearch.jsp" method="post">
            <p>Candidate Id</p>
            <input type="text" name="t1" placeholder="Enter Candidate ID" required>
            <input type="submit" value="Submit">
        </form>
<%
try
{
	String id    =  request.getParameter("t1");
	
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/login","root","12345678");
	String sql="select * from Candidate_reg where C_id='"+id+"'";
	PreparedStatement pst=con.prepareStatement(sql);
	ResultSet rs=pst.executeQuery();
	if(rs.next())
	{
		out.println("<b>Candidate ID-</b>"+rs.getInt(1)+" "+"<b>Firstname-</b>"+rs.getString(2)+" "+"<b>Lastname-</b>"+rs.getString(3)+" "+"<b>Fathername-</b>"+rs.getString(4)+" "+"<b>DOB-</b>"+rs.getString(5)+" "+"<b>State-</b>"+rs.getString(6)+" "+"<b>City-</b>"+rs.getString(7)+" "+"<b>Party-</b>"+rs.getString(8)+" "+"<b>Type-</b>"+rs.getString(9)+" "+"<b>Email-</b>"+rs.getString(10)+" "+"<b>Address-</b>"+rs.getString(11)+" "+"<b>Contactno-</b>"+rs.getString(12)+" "+"<b>Username-</b>"+rs.getString(13)+"<b>password-</b>"+rs.getString(14)+"<b>Election Reason-</b>"+rs.getString(15));
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