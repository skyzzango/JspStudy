<%--
  Created by IntelliJ IDEA.
  User: skyzz
  Date: 2018-08-29
  Time: 오후 7:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<html lang="ko">
<head>
	<%@include file="../partials/head.html" %>
	<title>First Page</title>
</head>
<body>
<%@include file="../partials/nav.html" %>
<div class="starter-template" style="background-size: auto">
	<h3>4가지 개체에 새로운 속성을 추가한 후 다음페이지로 포워딩(속성 콘솔 출력)</h3><br>
	<%
		pageContext.setAttribute("name", "page man");
		request.setAttribute("name", "request man");
		session.setAttribute("name", "session man");
		application.setAttribute("name", "application man");
		System.out.println("하나의 페이지 속성 : " + pageContext.getAttribute("name"));
		System.out.println("하나의 요청 속성 : " + request.getAttribute("name"));
		System.out.println("하나의 세션 속성 : " + session.getAttribute("name"));
		System.out.println("하나의 어플리케이션 속성 : " + application.getAttribute("name"));
		request.getRequestDispatcher("Ex10_02.jsp").forward(request, response);
	%>
</div>
</body>
</html>