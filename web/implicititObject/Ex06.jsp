<%--
  Created by IntelliJ IDEA.
  User: skyzz
  Date: 2018-08-29
  Time: 오후 7:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<html lang="ko">
<head>
	<%@include file="../partials/head.html" %>
	<title>page Context 기본 객체</title>
</head>
<body>
<%@include file="../partials/nav.html" %>
<div class="starter-template" style="background-size: auto">
	<h3>pageContext 내장 객체</h3><br>
	<%
		HttpServletRequest httpServletRequest = (HttpServletRequest) pageContext.getRequest();
	%>
	request 기본객체와 pageContext.getRequest()의 동일여부 :
	<%=request == httpServletRequest%>
	<br><br>
	pageContext.getOut() 메소드를 사용한 데이터 출력 :
	<%
		pageContext.getOut().println("안녕하세요");
	%>
</div>
</body>
</html>