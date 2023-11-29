<%@ page import="com.projects.moviedb.dao.UserDao" %>
<%@ page import="java.sql.SQLException" %><%--
  Created by IntelliJ IDEA.
  User: amaan
  Date: 26/11/23
  Time: 5:24 pm
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Error 404</title>
</head>
<body>
    <h1>Invalid Credentials</h1>
    <a href="login.jsp">Click here to login again</a>
    <% try {
        response.getWriter().println(UserDao.findUser("test"));
    } catch (SQLException | ClassNotFoundException e) {
        throw new RuntimeException(e);
    }%>
</body>
</html>
