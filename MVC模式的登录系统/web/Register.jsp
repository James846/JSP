<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2022-04-14
  Time: 14:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>注册</title>
</head>
<body>
<form action="RegisterServlet" method="post">
    <label>
        请输入手机号：
        <input type="text" name="Phone" required><br>
        请输入姓名：
        <input type="text" name="Name" required><br>
        请输入密码：
        <input type="Password" name="Password" required><br>
        请输入邮箱：
        <input type="text" name="Email" required><br><br>
        <input type="submit" value="注册">
    </label>
</form>
<form action="Login.jsp" method="post">
    <input type="submit" value="登录">
</form>
<form action="SearchServlet" method="post">
    <input type="submit" value="查询所有数据">
</form>
</body>
</html>
