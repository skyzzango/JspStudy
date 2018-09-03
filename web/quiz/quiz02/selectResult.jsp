<%@ page import="java.util.Arrays" %>
<%@ page import="java.util.Enumeration" %>
<%@ page import="java.util.Collections" %><%--
  Created by IntelliJ IDEA.
  User: skyzz
  Date: 2018-08-30
  Time: 오후 1:01
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
	<h3>입력하신 정보는 아래와 같습니다.</h3><br>
	<h5>학력</h5>
	<%=request.getParameter("user_edu")%>
	<br><br>
	<h5>국가</h5>
	<%=request.getParameter("user_con")%>
	<br><br>
	<h5>관심분야</h5>
	<%
		String[] intes = request.getParameterValues("user_inte");
		for (String inte : intes) {
	%>
	<%=inte %>
	<%
		}
	%>
	<br><br>
	<h5>전달 받은 타입</h5>
	<%
		Enumeration enumeration = request.getParameterNames();
		while (enumeration.hasMoreElements()) {
			String name = (String) enumeration.nextElement();
	%>
	<%=name%>
	<%
		}
	%>
	<br><br>
</div>
</body>
</html>