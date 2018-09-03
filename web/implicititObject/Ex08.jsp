<%--
  Created by IntelliJ IDEA.
  User: skyzz
  Date: 2018-08-29
  Time: 오후 7:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<html lang="ko">
<head>
	<%@include file="../partials/head.html" %>
	<title>서버 정보 출력</title>
</head>
<body>
<%@include file="../partials/nav.html" %>
<div class="starter-template" style="background-size: auto">
	<h3>서버 정보 불러오기</h3><br>
	<h5>서버정보</h5>
	<%=application.getServerInfo()%>
	<br><br>
	<h5>서블릿 규약 메이저 버전</h5>
	<%=application.getMajorVersion()%>
	<br><br>
	<h5>서블릿 규약 마이너 버전</h5>
	<%=application.getMinorVersion()%>
	<br><br>
</div>
</body>
</html>