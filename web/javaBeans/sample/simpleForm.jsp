<%--
  Created by IntelliJ IDEA.
  User: skyzz
  Date: 2018-08-30
  Time: 오후 6:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<html lang="ko">
<head>
	<%@include file="../../partials/head.html" %>
	<title>Java Beans</title>
</head>
<body>
<%@include file="../../partials/nav.html" %>
<div class="starter-template" style="background-size: auto">
	<h3>간단한 자바빈즈 프로그램</h3><br>
	<hr color="red">
	<br><br>
	<form action="simpleBean.jsp" method="post">
		<div class="form-group">
			<label for="message">메시지</label>
			<input type="text" class="form-control" name="message" id="message" aria-describedby="help"
			       placeholder="message">
			<small id="help" class="form-text text-muted">Help text</small>
		</div>
		<button type="submit" class="btn btn-primary">전송</button>
	</form>
</div>
</body>
</html>