<%@ page import="java.util.Enumeration" %><%--
  Created by IntelliJ IDEA.
  User: skyzz
  Date: 2018-08-29
  Time: 오후 7:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<html lang="ko">
<head>
	<%@include file="../partials/head.html" %>
	<title>헤더 목록 출력</title>
</head>
<body>
<%@include file="../partials/nav.html" %>
<div class="starter-template" style="background-size: auto">
	<h3>request 헤더 관련 메소드</h3><br>
	<%
		Enumeration enumeration = request.getHeaderNames();
		while (enumeration.hasMoreElements()) {
			String headerName = (String) enumeration.nextElement();
			String headerValue = request.getHeader(headerName);
	%>
	<%=headerName%> = <%=headerValue%> <br><br>
	<%
		}
	%>
</div>
</body>
</html>