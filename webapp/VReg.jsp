<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" type="text/css" href="admin.css">
</head>
<style>
    body {
padding: 0;
margin: 0;
font-family: sans-serif;
background-image: url("2.jpg");
background-size: cover;
}
</style>
<body>
    <div class="re">


        <h1>Registration Form</h1>
        <form action="VReg.jsp" method="post">
            <p>First Name</p>
            <input type="text" name="t1" placeholder="Enter First Name" required>
            <p>Last Name</p>
            <input type="text" name="t2" placeholder="Enter Last Name" required>
            <p>Father Name</p>
            <input type="text" name="t3" placeholder="Enter Father Name" required>
            <p>D.O.B</p>
            <input type="text" name="t4" placeholder="Enter Date of Birth" required>
            <p>State</p>
            <input type="text" name="t5" placeholder="Enter State" required>
            <p>City</p>
            <input type="text" name="t6" placeholder="Enter City" required>
            <p>Address</p>
            <input type="text" name="t7" placeholder="Enter Address" required>
            <p>Email</p>
            <input type="email" name="t8" placeholder="Enter Email" required>
            <p>Contact No</p>
            <input type="number" name="t9" placeholder="Enter Contact Number" required>
            <p>PinCode</p>
            <input type="number" name="t10" placeholder="Enter PinCode" required>
            <p>User Name</p>
            <input type="text" name="t11" placeholder="Enter User Name" required>
            <p>Password</p>
            <input type="password" name="t12" placeholder="Enter Password" required>
            <input type="submit" value="Submit">
        </form>
    </div>
<%
try
{
	String t2    =  request.getParameter("t1");
	String t3    =  request.getParameter("t2");
	String t4    =  request.getParameter("t3");
	String t5    =  request.getParameter("t4");
	String t6    =  request.getParameter("t5");
	String t7    =  request.getParameter("t6");
	String t8    =  request.getParameter("t7");
	String t9    =  request.getParameter("t8");
	String t10   =  request.getParameter("t9");
	String t11   =  request.getParameter("t10");
	String t12   =  request.getParameter("t11");
	String t13   =  request.getParameter("t12");
	
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/login","root","12345678");
	if(t2!=null && t3!=null && t4!=null && t5!=null && t6!=null && t7!=null && t8!=null && t9!=null && t10!=null && t11!=null && t12!=null && t13!=null)
	{
		String sql="insert into voter_reg(Firstname,lastname,fathername,Dob,State,City,Address,Email,Contactno,Pincode,Username,Password) values('"+t2+"','"+t3+"','"+t4+"','"+t5+"','"+t6+"','"+t7+"','"+t8+"','"+t9+"','"+t10+"','"+t11+"','"+t12+"','"+t13+"')";
		PreparedStatement pst=con.prepareStatement(sql);
		int i=pst.executeUpdate();
		if(i>0)
		{
			response.sendRedirect("voter.jsp");
		}
		else
		{
			response.sendRedirect("VReg.jsp");
		}
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