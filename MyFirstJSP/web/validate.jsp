<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2022/3/11
  Time: 14:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>validate</title>
</head>
<body>
    <%
    String str=request.getParameter("user");
    session.setAttribute("user",str);
    String str1=request.getParameter("psd");
    if(!"吴天雄".equals(str)||!"123456".equals(str1)) {
        out.print("登陆失败，3秒后重新进入login.jsp页面");
        response.setHeader("refresh","3;url=login.jsp");
    }
    else{
        out.print("您已成功登录，3秒后进入success.jsp页面");
        response.setHeader("refresh","3;url=success.jsp");
        }
    %>
</body>
</html>
