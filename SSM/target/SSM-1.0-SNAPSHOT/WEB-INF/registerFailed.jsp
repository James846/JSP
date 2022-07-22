<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2022-06-01
  Time: 9:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
注册用户失败，请重新尝试！3秒后返回注册页面
<%
    response.setHeader("refresh","3,url=Register.jsp");
%>
</body>
</html>
