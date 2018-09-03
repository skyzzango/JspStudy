<%--
  Created by IntelliJ IDEA.
  User: skyzz
  Date: 2018-08-30
  Time: 오후 12:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<html lang="ko">
<head>
	<%@include file="../../partials/head.html" %>
	<title>결과 페이지</title>
</head>
<body>
<%@include file="../../partials/nav.html" %>
<div class="starter-template" style="background-size: auto">
	<h3>입력한 정보는 아래와 같습니다.</h3><br>
	<h5>ID</h5>
	<%=request.getParameter("user_id")%>
	<br><br>
	<h5>PW</h5>
	<%=request.getParameter("user_pw")%>
	<br><br>
	<h5>자기 소개</h5>
	<%=request.getParameter("user_info")%>
	<br><br>
</div>
</body>
</html>