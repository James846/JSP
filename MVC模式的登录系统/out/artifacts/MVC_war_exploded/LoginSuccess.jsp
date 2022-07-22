<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2022-04-16
  Time: 14:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录成功</title>
</head>
<body>
<jsp:useBean id="selectPeople" type="Model.Information" scope="request"/>
恭喜 <jsp:getProperty name="selectPeople" property="name"/> 登录成功！3秒后跳转至查询所有用户信息
<%
    response.setHeader("refresh","3;url=SearchServlet");
%>
</body>
</html>
