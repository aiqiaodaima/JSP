<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="com.user.User" %>
<%@ page import="com.dao.SelectDao" %>
<%@ page import="com.dao.UpdateDao" %><%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2017/3/13
  Time: 21:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>


<%
    User user = new User();
    user.setId(request.getParameter("id"));
    user.setUsername(request.getParameter("username"));
    user.setPassword(request.getParameter("password"));
    user.setType(request.getParameter("type"));
    UpdateDao updateDao = new UpdateDao();
    updateDao.updateuser(user);

%>




</body>
</html>
