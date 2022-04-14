<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2022/3/11
  Time: 15:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Success</title>
</head>
<body>
    <%
        String str=(String)session.getAttribute("user");
    %>
    恭喜<%=str%>，成功登录！
</body>
</html>
