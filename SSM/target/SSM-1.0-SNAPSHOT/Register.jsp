<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2022-05-31
  Time: 16:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Register</title>
</head>
<body>
<form action="register" method="post">
    <label>
        姓名：
        <input type="text" name="username" placeholder="用户名不可重复"><br>
        密码：
        <input type="text" name="password"><br>
        <input type="submit" value="注册">
    </label><br>
</form>
<a href="Login.jsp">登录</a>
</body>
</html>
