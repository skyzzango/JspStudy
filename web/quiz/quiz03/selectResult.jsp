<%--
  Created by IntelliJ IDEA.
  User: skyzz
  Date: 2018-08-30
  Time: 오후 1:25
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
	<h3>입력 받은 정보</h3><br>
	<%
		switch (request.getParameter("pageMove")) {
			case "구글":
				response.sendRedirect("http://www.google.com");
				break;
			case "네이버":
				response.sendRedirect("http://www.naver.com");
				break;
			case "다음":
				response.sendRedirect("http://www.daum.net");
				break;
		}
	%>
</div>
</body>
</html>