<%@ page import="java.sql.*" %>
<%@ page import="com.user.User" %>
<%@ page import="com.dao.SelectDao" %><%--
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

    User user = new User();
    SelectDao selectDao = new SelectDao();
    user=selectDao.selectUser(user);
%>


<form action="doModifiy.jsp?id=<%=user.getId()%>">
    <table>
        <tr>
            <td><input type="text" value="<%=user.getUsername()%>"></td>
            <td><input type="text" value="<%=user.getPassword()%>"></td>
            <td><select name="用户类型">
                <option value= "管理员">管理员</option>
                <option value= "普通用户">普通用户</option>
            </select></td>
            <td><input type="submit" value="提交"></td>
        </tr>
    </table>
</form>

</body>
</html>
