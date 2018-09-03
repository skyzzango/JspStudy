<%--
  Created by IntelliJ IDEA.
  User: skyzz
  Date: 2018-09-03
  Time: 오후 5:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<html lang="ko">
<head>
	<%@include file="../partials/head.html" %>
	<title>정보 입력 폼</title>
</head>
<body>
<%@include file="../partials/nav.html" %>
<div class="starter-template" style="background-size: auto">
	<h3>학생 등록 화면</h3><br>
	<form action="studentJoin.jsp" method="post" style="width: 20rem">
		<div class="form-group">
			<label for="user_name">이름</label>
			<input type="text" class="form-control" name="name" id="user_name" aria-describedby="help_name"
			       placeholder="이름 입력">
			<small id="help_name" class="form-text text-muted">Help text</small>
		</div>
		<div class="form-group">
			<label for="user_phone">핸드폰</label>
			<input type="tel"
			       class="form-control" name="phone" id="user_phone" aria-describedby="help_phone"
			       placeholder="핸드폰 번호 입력">
			<small id="help_phone" class="form-text text-muted">Help text</small>
		</div>
		<div class="form-group">
			<label for="user_email">이메일</label>
			<input type="email"
			       class="form-control" name="email" id="user_email" aria-describedby="help_email"
			       placeholder="이메일 주소 입력">
			<small id="help_email" class="form-text text-muted">Help text</small>
		</div>
		<div class="form-group">
			<label for="user_address">주소</label>
			<input type="text"
			       class="form-control" name="address" id="user_address" aria-describedby="help_address"
			       placeholder="주소 입력">
			<small id="help_address" class="form-text text-muted">Help text</small>
		</div>
		<button type="submit" class="btn btn-primary">등록</button>
	</form>
</div>
</body>
</html>
