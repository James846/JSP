<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2022/4/10
  Time: 16:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录</title>
</head>
<body>
<jsp:useBean id="selectPeople" type="Data.Information" scope="request"/>
恭喜 <jsp:getProperty name="selectPeople" property="ID"/> 登录成功！
</body>
</html>
