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
    <style>
        body {
    padding: 0;
    margin: 0;
    font-family: sans-serif;
    background-image: url("6.jpg");
    background-size: cover;
}
    </style>
</head>
<body>
    <div class="loginBox">


        <h1>Login Here</h1>
        <form action="adminlogin.jsp" method="post">
            <p>User Id</p>
            <input type="text" name="t1" placeholder="Enter User Id" required>
            <p>Password</p>
            <input type="password" name="t2" placeholder="Enter password" required>
            <input type="submit" value="Login">
        </form>
    </div>
</body>
</html>