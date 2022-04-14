<%@ page import="java.util.Enumeration" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2022/3/19
  Time: 15:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Count</title>
</head>
<body>
    这里是结账柜台，请确认以下信息。
    <br>
    您的会员卡号：<% String Str = (String) session.getAttribute("user"); out.print(Str);%>
    <br>
    购物车中的商品清单：
    <br>
    <%
        String[] goods=(String[])session.getAttribute("goods");
        if(goods!=null){
            for (String good : goods) {
                out.print(good);
                out.print("<br>");
            }
        }
    %>
    <br>
    <a href="loginID.jsp">修改卡号</a>
    <br>
    <a href="food.jsp">重新选购</a>
</body>
</html>
