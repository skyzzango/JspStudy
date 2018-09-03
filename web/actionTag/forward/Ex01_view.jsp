<%--
  Created by IntelliJ IDEA.
  User: skyzz
  Date: 2018-08-29
  Time: 오후 8:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<html lang="ko">
<head>
	<%@include file="../../partials/head.html" %>
	<title>페이지 이동 라우터</title>
</head>
<body>
<%@include file="../../partials/nav.html" %>
<div class="starter-template" style="background-size: auto">
	<h3>페이지 주소 반환</h3><br>
	<%
		String code = request.getParameter("pageName");
		String viewPageURI = null;

		switch (code) {
			case "A":
				viewPageURI = "/actionTag/forward/viewModule/a.jsp";
				break;
			case "B":
				viewPageURI = "/actionTag/forward/viewModule/b.jsp";
				break;
			case "C":
				viewPageURI = "/actionTag/forward/viewModule/c.jsp";
				break;
		}
	%>
	<jsp:forward page="<%=viewPageURI%>"/>
</div>
</body>
</html>