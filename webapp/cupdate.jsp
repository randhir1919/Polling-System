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
            background-color: linen;
            background-repeat: no-repeat;
        }
    </style>
<body>
<div class="cu">


        <h1>Update Form</h1>
        <form action="cupdate.jsp" method="post">
            <p>State</p>
            <input type="text" name="t1" placeholder="Enter State" required>
            <p>City</p>
            <input type="text" name="t2" placeholder="Enter City" required>
            <p>Party</p>
            <input type="text" name="t3" placeholder="Enter Party Name" required>
            <p>Type</p>
            <input type="text" name="t4" placeholder="Enter Your Gender" required>
            <p>Email</p>
            <input type="email" name="t5" placeholder="Enter Email" required>
            <p>Address</p>
            <input type="text" name="t6" placeholder="Enter Address" required>
            <p>Contact No</p>
            <input type="number" name="t7" placeholder="Enter Contact Number" required>
            <p>User Name</p>
            <input type="text" name="t8" placeholder="Enter User Name" required>
            <p>Password</p>
            <input type="password" name="t9" placeholder="Enter your password" required>
            <p>Election Reason</p>
            <input type="text" name="t10" placeholder="Enter Area Name" required>
            <input type="submit" value="Submit">
        </form>
    </div>
<%
try
{
	String t4    =  request.getParameter("t1");
	String t5    =  request.getParameter("t2");
	String t6    =  request.getParameter("t3");
	String t7    =  request.getParameter("t4");
	String t8    =  request.getParameter("t5");
	String t9    =  request.getParameter("t6");
	String t10   =  request.getParameter("t7");
	String t11   =  request.getParameter("t8");
	String t12   =  request.getParameter("t9");
	String t13   =  request.getParameter("t10");
	
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/login","root","12345678");
	String sql1="update candidate_reg set State='"+t4+"',City='"+t5+"',Party='"+t6+"',Type='"+t7+"',Email='"+t8+"',Address='"+t9+"',Contactno='"+t10+"',Password='"+t12+"',Election_reason='"+t13+"' where Username='"+t11+"'";
	if(t4!=null && t5!=null && t6!=null && t7!=null && t8!=null && t9!=null && t10!=null && t11!=null && t12!=null && t13!=null)
	{
		PreparedStatement pst1=con.prepareStatement(sql1);
		int i=pst1.executeUpdate();
		if(i>0)
		{
			response.sendRedirect("candidatelogin.jsp");
		}
	}
}
catch(Exception e)
{
  //e.printStackTrace();
  out.println(e);
}
%>
</body>
</html>