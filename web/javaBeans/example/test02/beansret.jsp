<%@ page import="javaBeans.PersonBean" %>
<%--
  Created by IntelliJ IDEA.
  User: skyzz
  Date: 2018-08-30
  Time: 오후 8:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<html lang="ko">
<head>
	<%@include file="../../../partials/head.html" %>
	<title>전송 결과</title>
</head>
<body>
<%@include file="../../../partials/nav.html" %>
<div class="starter-template" style="background-size: auto">
	<h3>전달 받은 값</h3><br>
	<hr color="red">
	<%
		request.setCharacterEncoding("UTF-8");
		String name = request.getParameter("name");
		int age = Integer.parseInt(request.getParameter("age"));
		PersonBean personBean = new PersonBean();
		personBean.setNameValue(name);
		personBean.setAge(age);
	%>
	<h5>이름</h5>
	<%=personBean.getNameValue()%>
	<br><br>
	<h5>나이</h5>
	<%=personBean.getAge()%>
</div>
</body>
</html>