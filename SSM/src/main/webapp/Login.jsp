<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2022-06-01
  Time: 13:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
</head>
<body>
<form action="login" method="post">
    <label>
        姓名：
        <input type="text" name="username" placeholder="用户名不可重复"><br>
        密码：
        <input type="text" name="password"><br>
        <input type="submit" value="登录">
    </label><br>
</form>
<a href="Register.jsp">注册</a>
</body>
</html>
