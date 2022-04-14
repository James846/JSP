<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2022/3/19
  Time: 15:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        String str=request.getParameter("user");
        session.setAttribute("user",str);
    %>
    <a href= "food.jsp">这里是调料柜台，欢迎选购您喜欢的调料</a>
    <br>
    <a href= "loginID.jsp">欢迎修改会员卡号</a>
</body>
</html>
