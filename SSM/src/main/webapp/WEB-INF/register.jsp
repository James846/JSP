<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2022-06-01
  Time: 8:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
恭喜您已成功注册用户！3秒后跳转至登录页面
<%
    response.setHeader("refresh","3,url=Login.jsp");
%>
</body>
</html>
