<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2022/3/19
  Time: 17:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>inputTriangle</title>
  </head>
  <body>
    <form action="showTriangle.jsp" method="post">
      <label>
        输入三角形的三边：<br>
        边A:<input type="number" name="a"><br>
        边B:<input type="number" name="b"><br>
        边C:<input type="number" name="c"><br>
      </label>
      <input type="submit" value="提交">
    </form>
  </body>
</html>
