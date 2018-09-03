<%--
  Created by IntelliJ IDEA.
  User: skyzz
  Date: 2018-08-30
  Time: 오후 8:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<html lang="ko">
<head>
	<%@include file="../../../partials/head.html" %>
	<title>전송 페이지</title>
</head>
<body>
<%@include file="../../../partials/nav.html" %>
<div class="starter-template" style="background-size: auto">
	<h3>정보 입력</h3><br>
	<form action="beansret.jsp" method="post" style="width: 15rem">
		<div class="form-group">
			<label for="name">이름</label>
			<input type="text" class="form-control" name="nameValue" id="name" aria-describedby="helpName"
			       placeholder="name">
			<small id="helpName" class="form-text text-muted">Help text</small>
		</div>
		<div class="form-group">
			<label for="age">나이</label>
			<input type="text" class="form-control" name="age" id="age" aria-describedby="helpAge" placeholder="age">
			<small id="helpAge" class="form-text text-muted">Help text</small>
		</div>
		<button type="submit" class="btn btn-primary">전송</button>
	</form>
</div>
</body>
</html>