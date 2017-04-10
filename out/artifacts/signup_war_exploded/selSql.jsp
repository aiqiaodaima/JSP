<%@ page import="com.dao.SelectDao" %>
<%@ page import="com.user.User" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="java.util.List" %>
<%@ page import="java.sql.Connection" %>
<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2017/3/8
  Time: 8:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table border="1px">
    <tr>
        <td>用户名</td>
        <td>密码</td>
        <td>类型</td>
        <td>操作</td>
    </tr>
    <%
        SelectDao selectDao = new SelectDao();
        List<User> list = selectDao.selectAllUser();
        Iterator<User> listuser = list.iterator();
        while (listuser.hasNext()) {
            User user = listuser.next();
    %>

    <tr>
        <td><%=user.getUsername()%>
        </td>
        <td><%=user.getPassword()%>
        </td>
        <td><%=user.getType()%>
        </td>
        <td><a href="doDelete.jsp?id=<%=user.getId()%>">删除 &nbsp;</a><a href="doFindInfo.jsp?id=<%=user.getId()%>">修改 </a></td>
    </tr>



<%
    }
%>
</table>
</body>
</html>
