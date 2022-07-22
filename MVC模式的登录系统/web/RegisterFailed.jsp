<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2022-04-14
  Time: 14:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
    <title>注册失败</title>
</head>
<body>
    注册失败！注意手机号码是否正确！3秒后重新返回注册页面
    <%
        response.setHeader("refresh","3;url=Register.jsp");
    %>
</body>
</html>
