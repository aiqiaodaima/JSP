<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="com.user.User" %>
<%@ page import="com.dao.DelectDao" %>
<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2017/3/8
  Time: 8:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>delet</title>
</head>
<body>

<%
    try {
        User user = new User();
        user.setId(request.getParameter("id"));
        DelectDao delectDao = new DelectDao();
        delectDao.delectUser(user);
    } catch (Exception e) {
        System.out.println(e);
    }
%>
</body>
</html>
