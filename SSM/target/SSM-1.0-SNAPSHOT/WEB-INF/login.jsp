<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2022-06-01
  Time: 9:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
${name} 登录成功
<hr>
<a href="selectAll">查看所有用户</a>
<h2>用户名列表</h2>
<table border="1">
    <tr>
        <th>用户名</th>
    </tr>
    <c:forEach items="${students}" var="s">
        <tr>
            <td align="center">${s.username}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
