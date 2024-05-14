<%--
  Created by IntelliJ IDEA.
  User: amaan
  Date: 06/12/23
  Time: 9:27 am
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
            <a href="http://localhost:8080/home"><img src="images/logo.png" alt="logo"></a>
            MovieDB
        </div>
        <div class="navlinks">
            <a href="login.jsp">Register Movie</a>
        </div>
    </div>
    <div class="loginform">
        <form action="${pageContext.request.contextPath}/movieregister" method="post">
            <div class="formtitle">Movie Registration</div>

            <div class="formitem">
                <label for="movie_id">ID</label>
                <input type="number" name="movie_id" id="movie_id" placeholder="Enter movie id">
            </div>
            <div class="formitem">
                <label for="title"></label>
                <input type="text" name="title" id="title" placeholder="Enter Movie Title">
            </div>
            <div class="formitem">
                <label for="overview"></label>
                <input type="text" name="overview" id="overview" placeholder="Enter Movie Overview">
            </div>
            <div class="formitem">
                <label for="release_date"></label>
                <input type="text" name="release_date" id="release_date" placeholder="Enter Movie release date">
            </div>
            <div class="formitem">
                <label for="title"></label>
                <input type="number" name="runtime" id="runtime" placeholder="Enter Movie Runtime (in min)">
            </div>
            <div >
                <input class="submit-button" type="submit" value="Register">
            </div>
        </form>
    </div>
</div>
</body>
</html>
