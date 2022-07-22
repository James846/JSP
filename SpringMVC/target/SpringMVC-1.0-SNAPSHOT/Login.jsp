<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false"%>
<html>
<body>
<h2>登录</h2>
<form action="${pageContext.request.contextPath}/login" method="post">
    <label>
        用户名：
        <input type="text" name="username">
    </label><br>
    <label>
        密码：
        <input type="password" name="password">
    </label><br>
    <input type="submit" value="登录">
</form>
</body>
</html>
