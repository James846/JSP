<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2022/3/19
  Time: 15:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Food</title>
</head>
<body>
<form method="post" action="">
    <label>
        这里是调料柜台，请选择您要购买的调料：<br>
        <input type="checkbox" name="goods" value="调和油"/>调和油
        <input type="checkbox" name="goods" value="强化盐"/>强化盐
        <input type="checkbox" name="goods" value="多维醋"/>多维醋
        <input type="checkbox" name="goods" value="绿色调料"/>绿色调料
        <br>
        <input type="submit" value="购物">
    </label>
    <br>
    <%
        String[] shopping =request.getParameterValues("goods");
        if (shopping != null) {
            session.setAttribute("goods",shopping);
        }
    %>
    <br>
    <a href="loginID.jsp">欢迎修改卡号</a>
    <br>
    <a href="count.jsp">欢迎查看购物车</a>
</form>
</body>
</html>
