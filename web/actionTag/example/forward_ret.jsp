<%--
  Created by IntelliJ IDEA.
  User: skyzz
  Date: 2018-08-30
  Time: 오후 8:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<html lang="ko">
<head>
	<%@include file="../../partials/head.html" %>
	<title>포워드 결과</title>
</head>
<body>
<%@include file="../../partials/nav.html" %>
<div class="starter-template" style="background-size: auto">
	<h3>요청 URL 부분이 변경되지 않고 request 객체로 유지됩니다.</h3><br>
	<%
		String name = request.getParameter("name");
		String age = request.getParameter("age");
	%>
	<h5>forward_ret.jsp 에서 request 파라미터 확인</h5>
	<br>
	<%="이름 : " + name%>
	<br>
	<%="나이 : " + age%>
	<br>
</div>
</body>
</html>