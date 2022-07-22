<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2022-04-16
  Time: 13:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录</title>
</head>
<body>
<form action="LoginServlet" method="post">
    <label>
        请输入手机号：
        <input type="text" name="Phone"><br>
        请输入密码：
        <input type="Password" name="Password"><br>
        <input type="submit" value="登录">
    </label>
</form>
</body>
</html>
