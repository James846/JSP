<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body>
<h2>参数绑定</h2>
<form action="${pageContext.request.contextPath}/handlePerson" method="post">
    <label>
        ID：
        <input type="text" name="id"><br>
        姓名：
        <input type="text" name="name"><br>
        电话：
        <input type="text" name="telephone"><br>
        地址：
        <input type="text" name="address"><br>
    </label><br>
    <input type="submit" value="录入">
</form>
</body>
</html>
