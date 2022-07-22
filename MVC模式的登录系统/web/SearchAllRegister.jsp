<jsp:useBean id="allPage" scope="request" type="Model.Page"/>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8"%>
<html>
  <head>
    <title>注册列表</title>
  </head>
  <body>
  以下是所有注册者信息——
  <table border="1">
    <tr>
      <th>手机号</th>
      <th>姓名</th>
      <th>邮箱</th>
    </tr>
    <jsp:useBean id="allRegister" scope="request" type="java.util.List"/>
    <c:forEach items="${allRegister}" var="Information">
      <tr>
        <td>${Information.phone}</td>
        <td>${Information.name}</td>
        <td>${Information.email}</td>
      </tr>
    </c:forEach>
      <tr>
          <td colspan="3" align="right">
                &nbsp;&nbsp;&nbsp;
              &nbsp;&nbsp;&nbsp;共${allPage.totalCount}条记录 &nbsp;&nbsp;共${allPage.totalPage}页
            &nbsp;&nbsp;
            第${allPage.pageCur}页&nbsp;&nbsp;
            <c:url var="url_pre" value="SearchServlet" >
                <c:param name="pageCur" value="${allPage.pageCur-1}"/>
            </c:url>
            <c:url var="url_next" value="SearchServlet">
                <c:param name="pageCur" value="${allPage.pageCur+1}"/>
            </c:url>
            <c:if test="${allPage.pageCur!=1}">
              <a href="${url_pre}">上一页</a>&nbsp;&nbsp;&nbsp;&nbsp;
            </c:if>
            <c:if test="${allPage.pageCur!=allPage.totalPage&&allPage.totalPage!=0}">
              <a href="${url_next}">下一页</a>
            </c:if>
          </td>
      </tr>
  </table><br>

  <a href="Register.jsp"><button>返回</button></a>
  </body>
</html>
