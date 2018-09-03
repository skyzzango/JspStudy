<%--
  Created by IntelliJ IDEA.
  User: skyzz
  Date: 2018-08-30
  Time: 오후 8:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<html lang="ko">
<head>
	<%@include file="../../partials/head.html" %>
	<title>일반적인 요청</title>
</head>
<body>
<%@include file="../../partials/nav.html" %>
<div class="starter-template" style="background-size: auto; width: 20rem">
	<h3>정보 입력</h3><br>
	<form action="forward.jsp" method="get">
		<div class="form-group">
			<label>이름</label>
			<input type="text" class="form-control" name="name" aria-describedby="helpName"
			       placeholder="name">
		</div>
		<div class="form-group">
			<label>나이</label>
			<input type="text" class="form-control" name="age" aria-describedby="helpAge" placeholder="age">
		</div>
		<button type="submit" class="btn btn-primary">포워드 요청</button>
	</form>
	<br>
	<hr color="red">
	<br>
	<form action="redirect.jsp" method="post">
		<div class="form-group">
			<label>이름</label>
			<input type="text" class="form-control" name="name" aria-describedby="helpName"
			       placeholder="name">
		</div>
		<div class="form-group">
			<label>나이</label>
			<input type="text" class="form-control" name="age" aria-describedby="helpAge" placeholder="age">
		</div>
		<button type="submit" class="btn btn-primary">리다이렉트 요청</button>
	</form>
</div>
</body>
</html>