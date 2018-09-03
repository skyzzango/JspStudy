<%--
  Created by IntelliJ IDEA.
  User: skyzz
  Date: 2018-08-30
  Time: 오후 7:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<html lang="ko">
<head>
	<%@include file="../partials/head.html" %>
	<title>Customer 가입 정보</title>
</head>
<body>
<%@include file="../partials/nav.html" %>
<div class="starter-template" style="background-size: auto">
	<h3>입력한 정보</h3><br>
	<%
		request.setCharacterEncoding("UTF-8");
	%>
	<jsp:useBean id="customer" class="javaBeans.Customer" scope="page"/>
	<jsp:setProperty name="customer" property="*"/>
	<hr color="red">
	<br>
	<h5>이름</h5>
	<jsp:getProperty name="customer" property="name"/>
	<br><br>
	<h5>이메일</h5>
	<jsp:getProperty name="customer" property="email"/>
	<br><br>
	<h5>전화</h5>
	<jsp:getProperty name="customer" property="phone"/>
	<br><br>
</div>
</body>
</html>
