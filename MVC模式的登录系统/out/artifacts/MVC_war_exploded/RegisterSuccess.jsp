<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2022-04-16
  Time: 13:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册成功</title>
</head>
<body>
    注册成功！三秒后跳转至登录用户界面
<%
    response.setHeader("refresh","3;url=Login.jsp");
%>
</body>
</html>
