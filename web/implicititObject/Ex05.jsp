<%--
  Created by IntelliJ IDEA.
  User: skyzz
  Date: 2018-08-29
  Time: 오후 7:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<html lang="ko">
<head>
	<%@include file="../partials/head.html" %>
	<title>SendRedirect</title>
</head>
<body>
<%@include file="../partials/nav.html" %>
<div class="starter-template" style="background-size: auto">
	<h3>response 내장 객체</h3><br>
	<h5>구글 홈페이지로 이동</h5>
	<%
		response.sendRedirect("http://www.google.com");
	%>
</div>
</body>
</html>