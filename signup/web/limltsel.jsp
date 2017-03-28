<%@ page import="com.user.User" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="com.dao.SelectDao" %><%--
  Created by IntelliJ IDEA.
  User: young
  Date: 2017/3/28
  Time: 14:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>分页查询</title>
</head>
<body>

<%

    int pagess = Integer.parseInt(request.getParameter("page"));

    SelectDao dao = new SelectDao();
    List<User> userList = dao.limitUser(pagess);%>
<table border="1">
    <tr>
        <td>id</td>
        <td>用户名</td>
        <td>密码</td>
        <td>账户类型</td>
    </tr>
    <%
        for (User user : userList) {
    %>
    <tr>
        <td><%=user.getId()%>
        </td>
        <td><%=user.getUsername()%>
        </td>
        <td><%=user.getPassword()%>
        </td>
        <td><%=user.getType()%>
        </td>

    </tr>

    <%
        }
    %>
</table>
<jsp:include page="bar.jsp"/>
<%=request.getAttribute("bar")%>

</body>
</html>
