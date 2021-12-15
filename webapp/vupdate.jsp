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
    <div class="vu">


        <h1>Update Form</h1>
        <form action="vupdate.jsp" method="post">
            <p>Father Name</p>
            <input type="text" name="t1" placeholder="Enter Father Name" required>
            <p>D.O.B</p>
            <input type="text" name="t2" placeholder="Enter Date of Birth" required>
            <p>State</p>
            <input type="text" name="t3" placeholder="Enter State" required>
            <p>City</p>
            <input type="text" name="t4" placeholder="Enter City" required>
            <p>Address</p>
            <input type="text" name="t5" placeholder="Enter Address" required>
            <p>Email</p>
            <input type="email" name="t6" placeholder="Enter Email" required>
            <p>Contact No</p>
            <input type="number" name="t7" placeholder="Enter Contact Number" required>
            <p>PinCode</p>
            <input type="number" name="t8" placeholder="Enter PinCode" required>
            <p>User Name</p>
            <input type="text" name="t9" placeholder="Enter User Name" required>
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
	
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/login","root","12345678");
	String sql1="update voter_reg set fathername='"+t4+"',Dob='"+t5+"',State='"+t6+"',City='"+t7+"',Address='"+t8+"',Email='"+t9+"',Contactno='"+t10+"',Pincode='"+t11+"'where Username='"+t12+"'";
	if(t4!=null && t5!=null && t6!=null && t7!=null && t8!=null && t9!=null && t10!=null && t11!=null && t12!=null)
	{
		PreparedStatement pst1=con.prepareStatement(sql1);
		int i=pst1.executeUpdate();
		if(i>0)
		{
			response.sendRedirect("voterlogin.jsp");
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