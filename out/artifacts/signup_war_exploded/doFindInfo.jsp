<%@ page import="com.dao.SelectDao" %>
<%@ page import="com.user.User" %>
<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2017/3/13
  Time: 21:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改</title>
</head>
<body>

<%

    request.setCharacterEncoding("utf-8");
    User user = new User();
    user.setId(request.getParameter("id"));
    user.setUsername(request.getParameter("username"));
    user.setPassword(request.getParameter("password"));
    user.setType(request.getParameter("type"));
    SelectDao selectDao = new SelectDao();
    user = selectDao.selectUser(user);
    System.out.println(user.toString());
%>


<form action="doModifiy.jsp?id=<%=user.getId()%>" method="post">
    <table>
        <tr>
            <td><input type="text" value="<%=user.getUsername()%>" name="username"></td>
            <td><input type="text" value="<%=user.getPassword()%>" name="password"></td>
            <td>
                <select name="type">
                <option value="管理员">管理员</option>
                <option value="普通用户">普通用户</option>
            </select>
            </td>
            <td>

                <input type="submit" value="提交"></td>
        </tr>
    </table>
</form>

</body>
</html>
