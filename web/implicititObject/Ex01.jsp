<%--
  Created by IntelliJ IDEA.
  User: skyzz
  Date: 2018-08-29
  Time: 오후 5:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="utf-8" %>
<html lang="ko">
<head>
	<%@include file="../partials/head.html" %>
	<title>클라이언트 및 서버 정보</title>
</head>
<body>
<%@include file="../partials/nav.html" %>
<div class="starter-template" style="background-size: auto">
	<h3>request 내장 객체</h3><br>
	클라이언트 IP = <%=request.getRemoteAddr()%>
	<br>
	요청정보 길이 = <%=request.getContentLength()%>
	<br>
	요청정보 인코딩 = <%=request.getCharacterEncoding()%>
	<br>
	요청정보 컨텐트 타입 = <%=request.getContentType()%>
	<br>
	요청정보 프로토콜 = <%=request.getProtocol()%>
	<br>
	요청정보 전송방식 = <%=request.getMethod()%>
	<br>
	요청 URL = <%=request.getRequestURI()%>
	<br>
	요청 URI = <%=request.getRequestURI()%>
	<br>
	컨텍스트 경로 = <%=request.getContextPath()%>
	<br>
	서버 이름 = <%=request.getServerName()%>
	<br>
	서버 포트 = <%=request.getServletPath()%>
	<br>
</div>
</body>
</html>
