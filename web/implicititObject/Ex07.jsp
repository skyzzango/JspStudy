<%@ page import="java.util.Enumeration" %><%--
  Created by IntelliJ IDEA.
  User: skyzz
  Date: 2018-08-29
  Time: 오후 7:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<html lang="ko">
<head>
	<%@include file="../partials/head.html" %>
	<title>초기화 파라미터 읽어오기</title>
</head>
<body>
<%@include file="../partials/nav.html" %>
<div class="starter-template" style="background-size: auto">
	<h3>Application 내장 객체</h3><br>
	<h5>초기화 파라미터 목록</h5>
	<ul class="list-group">
		<%
			Enumeration enumeration = application.getInitParameterNames();
			while (enumeration.hasMoreElements()) {
				String initParamName = (String) enumeration.nextElement();
		%>
		<li class="list-group-item">
			<%=initParamName%> = <%=application.getInitParameter(initParamName)%>
		</li>
		<%
			}
		%>
	</ul>
</div>
</body>
</html>