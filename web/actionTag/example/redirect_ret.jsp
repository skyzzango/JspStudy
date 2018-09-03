<%--
  Created by IntelliJ IDEA.
  User: skyzz
  Date: 2018-08-30
  Time: 오후 9:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<html lang="ko">
<head>
	<%@include file="../../partials/head.html" %>
	<title>리다이렉트 결과</title>
</head>
<body>
<%@include file="../../partials/nav.html" %>
<div class="starter-template" style="background-size: auto">
	<h3>새로 요청한 것이므로 요청 URL 부분이 변경되고,<br>request 객체도 새로 생성(값 유지 안함)</h3><br>
	<%
		String name = request.getParameter("name");
		String age = request.getParameter("age");
	%>
	<h5>redirect_ret.jsp 에서 request 파라미터 확인</h5>
	<br>
	<%="이름 : " + name%>
	<br>
	<%="나이 : " + age%>
	<br>
</div>
</body>
</html>