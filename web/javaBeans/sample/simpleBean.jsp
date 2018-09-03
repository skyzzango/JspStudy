<%--
  Created by IntelliJ IDEA.
  User: skyzz
  Date: 2018-08-30
  Time: 오후 6:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<html lang="ko">
<head>
	<%@include file="../../partials/head.html" %>
	<title>빈즈 실습</title>
</head>
<body>
<%@include file="../../partials/nav.html" %>
<div class="starter-template" style="background-size: auto">
	<h3>간단한 빈즈 프로그램 결과</h3><br>
	<hr color="red">
	<br>
	<%
		request.setCharacterEncoding("UTF-8");
		String message = request.getParameter("message");
	%>
	<jsp:useBean id="msg" class="javaBeans.sample.SimpleData"/>
	<%--SimpleData message = new SimpleDate();--%>
	<jsp:setProperty name="msg" property="message"/>
	<%--msg.setMessage(?);--%>
	<%--주의점 : 기본 자료형, String--%>

	<h5>자바 빈즈</h5>
	메세지 : <jsp:getProperty name="msg" property="message"/>
	<br><br>
	<h5>내장 객체</h5>
	메세지 : <%=message%>
</div>
</body>
</html>