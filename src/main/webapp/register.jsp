<%--
  Created by IntelliJ IDEA.
  User: amaan
  Date: 26/11/23
  Time: 4:29 pm
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MovieDB Login</title>
    <link rel="stylesheet" href="css/style.css">
    <link rel="icon" href="images/logo.png"/>
</head>
<body>
<div class="loginpage">
    <div class="navbar">
        <div class="logo">
            <a href="http://localhost:8080/home.jsp"><img src="images/logo.png" alt="logo"></a>
            MovieDB
        </div>
        <div class="navlinks">
            <a href="login.jsp">Sign in</a>
        </div>
    </div>
    <div class="loginform">
        <form action="${pageContext.request.contextPath}/register" method="post">
            <div class="formtitle">Register</div>

            <div class="formitem">
                <label for="username">Username</label>
                <input type="text" name="username" id="username" placeholder="Enter your username">
            </div>
            <div class="formitem">
                <label for="password">Password</label>
                <input type="password" name="password" id="password" placeholder="Enter your password">
            </div>
            <div >
                <input class="submit-button" type="submit" value="Register">
            </div>
        </form>
    </div>
</div>
</body>
</html>
