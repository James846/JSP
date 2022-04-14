<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2022/3/8
  Time: 13:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<html>
  <head>
    <title>login</title>
  </head>
  <body>
  <h1>
    已知用户：吴天雄
    <br>
    密码：123456
  </h1>
  <hr>
    <form action="validate.jsp" method="post" name="form">
      <label>
        用户：
        <input type="text" name="user" required="required">
        <br>
        密码：
      <input type="password" name="psd" required="required">
      </label>
      <br>
      <br>
      <input type="submit" value="提交">
    </form>
  </body>
</html>
