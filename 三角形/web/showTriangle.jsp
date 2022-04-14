<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2022/3/19
  Time: 17:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>showTriangle</title>
</head>
<body>
    <jsp:useBean id="triangle" class="com.Triangle.Triangle" scope="page"/>
    <jsp:setProperty name="triangle" property="*" />
    三角形的三边是：<br>
    边A：<jsp:getProperty name="triangle" property="a"/>&nbsp;
    边B: <jsp:getProperty name="triangle" property="b"/>&nbsp;
    边C: <jsp:getProperty name="triangle" property="c"/>&nbsp; <br>
    <br>这个三边能构成一个三角形吗？<%=triangle.isTriangle()%> <br>
    <br>面积是: <%=triangle.Area()%>
    <br>周长为：<%=triangle.Circumference()%>
</body>
</html>
