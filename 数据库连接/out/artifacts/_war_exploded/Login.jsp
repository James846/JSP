<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2022/4/10
  Time: 16:02
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
      请输入用户名：
      <input type="text" name="ID"><br>
      请输入密码：
      <input type="Password" name="Password"><br>
      <input type="submit" value="登录">
    </label>
      <a href="Register.jsp">注册</a>

  </form>
  </body>
</html>
