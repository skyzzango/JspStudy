<%@ page import="java.util.Enumeration" %>
<%@ page import="java.util.Map" %><%--
  Created by IntelliJ IDEA.
  User: skyzz
  Date: 2018-08-29
  Time: 오후 5:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="utf-8" %>
<html lang="ko">
<head>
	<%@include file="../partials/head.html" %>
	<title>요청 파라미터 출력</title>
</head>
<body>
<%@include file="../partials/nav.html" %>
<div class="starter-template" style="background-size: auto">
	<h3>request 파라미터 관련 메서드</h3><br>
	<h5>request.getParameter() 메소드 사용</h5><br>
	name 파라미터 = <%=request.getParameter("name")%>
	<br>
	address 파라미터 = <%=request.getParameter("address")%>
	<br>
	<br>
	<h5>request.getParameterValues() 메소드 사용</h5>
	<%
		String[] values = request.getParameterValues("pet");
		if (values != null) {
			for (String value : values) {
	%>
	<%=value%>
	<%
			}
		}
	%>
	<br>
	<br>
	<h5>request.getParameterNames() 메서드 사용</h5>
	<%
		Enumeration enumeration = request.getParameterNames();
		while (enumeration.hasMoreElements()) {
			String name = (String) enumeration.nextElement();
	%>
	<%=name%>
	<%
		}
	%>
	<br>
	<br>
	<h5>request.getParameterMap() 메소드 사용</h5>
	<%
		Map parameterMap = request.getParameterMap();
		String[] nameParam = (String[]) parameterMap.get("name");
		if (nameParam != null) {
	%>
	name = <%=nameParam[0]%>
	<%
		}
	%>
	<br>
	<br>
</div>
</body>
</html>