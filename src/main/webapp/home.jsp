<%--
  Created by IntelliJ IDEA.
  User: amaan
  Date: 26/11/23
  Time: 6:42 pm
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Card Layout</title>
    <link href="css/style.css" rel="stylesheet">
    <link href="css/styleguide.css" rel="stylesheet">
    <link rel="icon" href="images/logo.png"/>
    <style>
        body {
            font-family: 'DM Sans', sans-serif;
            margin: 0;
            padding: 0;
            justify-content: center;
            align-items: center;
            min-height: 90vh;
            background-color: #374151;
        }

        h1 {
            margin-left: 80px;
            color: #F3F4F6;
        }
        .card-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-around;
            width: 100%;
        }

        .card {
            flex: 0 0 calc(25% - 32px); /* Four cards in a row, considering margin */
            max-width: calc(25% - 32px);
            width: fit-content;
            height: 300px;
            border: 1px solid #ccc;
            border-radius: 8px;
            padding: 16px;
            margin: 16px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            background-color: #fff;
            transition: transform 0.3s ease-in-out;
        }

        .card:hover {
            transform: scale(1.05);
        }

        .card h2 {
            color: #333;
            margin-bottom: 8px;
        }

        .card p {
            color: #666;
        }
    </style>
</head>
<body>
<div class="navbar">
    <div class="logo">
        <a href="http://localhost:8080/home.jsp"><img src="images/logo.png" alt="logo"></a>
        MovieDB
    </div>
    <div class="navlinks">
        <a href="register.jsp">Register</a>
    </div>
</div>

<h1>Welcome <%=session.getAttribute("username")%> </h1>

<div class="card-container">

    <c:forEach var="item" items="${movieList}">

    <div class="card">
        <h3>${item.title}</h3>
        <div style=
                     "display: flex;
                     flex-direction: row;
                     justify-content: space-between;"
        ><h6>Release date: ${item.release_date}</h6><h6>${item.runtime} min</h6></div>
        <p>${item.overview}</p>
    </div>
    </c:forEach>

</div>

</body>
</html>
