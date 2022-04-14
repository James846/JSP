<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2022/3/27
  Time: 10:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  <form action="HandleComputer" method=post name=form>
    <label>
      输入两个数:
      <input type=text name="numberOne" size=8>
      <select name="operator">
        <Option value="+">+(加)
        <Option value="-">-（减）
        <Option value="*">*（乘）
        <Option value="/">/（除）
      </select>
      <input type=text name="numberTwo"  size=8>
    </label>
    <br>
    <input TYPE="submit" value="提交你的选择" name="submit">
  </form>
  </body>
</html>
