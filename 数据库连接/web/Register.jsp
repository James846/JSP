<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2022/4/10
  Time: 22:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="RegisterServlet" method="post">
    <label>
        请输入用户名：
        <input type="text" name="RegisterID"><br>
        请输入密码：
        <input type="Password" name="RegisterPassword"><br>
        <input type="submit" value="注册">
    </label>
</form>
</body>
</html>
