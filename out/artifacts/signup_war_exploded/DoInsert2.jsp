<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2017/3/15
  Time: 8:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    response.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="user" class="com.user.User">
    <jsp:setProperty name="user" property="id"/>
    <jsp:setProperty name="user" property="username"/>
    <jsp:setProperty name="user" property="password"/>
    <jsp:setProperty name="user" property="type"/>

</jsp:useBean>
<%=user.getId()%><br>
<%=user.getUsername()%><br>
<%=user.getPassword()%><br>
<%=user.getType()%><br>


</body>
</html>
