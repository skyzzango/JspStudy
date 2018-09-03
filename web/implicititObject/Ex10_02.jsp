<%--
  Created by IntelliJ IDEA.
  User: skyzz
  Date: 2018-08-29
  Time: 오후 8:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<html lang="ko">
<head>
	<%@include file="../partials/head.html" %>
	<title>Second Page</title>
</head>
<body>
<%@include file="../partials/nav.html" %>
<div class="starter-template" style="background-size: auto">
	<h3>첫번째 페이지 속성 값을 브라우저에 출력(페이지 속성 제외)</h3><br>
	<h5>하나의 페이지 속성</h5>
	<%=pageContext.getAttribute("name")%>
	<br><br>
	<h5>하나의 요청 속성</h5>
	<%=request.getAttribute("name")%>
	<br><br>
	<h5>하나의 세셩 속성</h5>
	<%=session.getAttribute("name")%>
	<br><br>
	<h5>하나의 어플리케이션 속성</h5>
	<%=application.getAttribute("name")%>
	<br><br>
	<a href="Ex10_03.jsp">또 다른 페이지</a>
	<br><br>
</div>
</body>
</html>