<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=<device-width>, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" type="text/css" href="admin.css">
</head>
<style>
    body {
padding: 0;
margin: 0;
font-family: sans-serif;
background-image: url("6.jpg");
background-size: cover;
}
</style>
<body>
    <div class="loginBox">


        <h1>Login Here</h1>
        <form action="voterlogin.jsp" method="post">
            <p>Email ID</p>
            <input type="email" name="t1" placeholder="Enter Email Id" required>
            <p>Password</p>
            <input type="password" name="t2" placeholder="Enter password" required>
            <input type="submit" value="Login">
            <a href="VReg.jsp">New User</a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </form>
    </div>
</body>
</html>