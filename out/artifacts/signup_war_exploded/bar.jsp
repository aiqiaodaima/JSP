<%@ page import="com.dao.SelectDao" %>
<%@ page import="com.user.User" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: young
  Date: 2017/3/28
  Time: 14:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<%
    int currPage = 1;
    if (request.getParameter("page")!=null){
        currPage = Integer.parseInt(request.getParameter("page"));
    }
    SelectDao selectDao = new SelectDao();
    List<User> userList = selectDao.limitUser(currPage);
    request.setAttribute("list",userList);
    int pages;
    int count = selectDao.countUser();
    if (count % User.PAGE == 0) {
        pages = count / User.PAGE;
    } else {
        pages = count / User.PAGE + 1;
    }
    StringBuilder sb = new StringBuilder();
    for (int i = 1; i <= pages; i++) {
        if (i==currPage){
            sb.append(i);
        }else {
            request.setAttribute("page",i);
            sb.append("<a href=\"limltsel.jsp?page="+i+"\">"+i+"</a>");
        }
        sb.append(" ");


//        request.getRequestDispatcher("limltsql.jsp").forward(request,response);

    } System.out.println("sb = " + sb);
    request.setAttribute("bar",sb.toString());
%>
</body>
</html>
