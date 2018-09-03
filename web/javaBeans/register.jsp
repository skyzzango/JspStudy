<%--
  Created by IntelliJ IDEA.
  User: skyzz
  Date: 2018-08-30
  Time: 오후 7:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<html lang="ko">
<head>
	<%@include file="../partials/head.html" %>
	<title>Customer 가입 페이지</title>
</head>
<body>
<%@include file="../partials/nav.html" %>
<div class="starter-template" style="background-size: auto">
	<h3>빈즈 사용하여 회원 가입</h3><br>
	<div class="card" style="width: 20rem;">
		<div class="card-body">
			<h4 class="card-title">회원 정보 입력</h4>
			<form action="add.jsp" method="post">
				<div class="form-group">
					<label for="name">이름</label>
					<input type="text" class="form-control" name="name" id="name" aria-describedby="helpName"
					       placeholder="name">
					<small id="help" class="form-text text-muted">Help text</small>
				</div>
				<div class="form-group">
					<label for="email">이메일</label>
					<input type="text" class="form-control" name="email" id="email" aria-describedby="helpEmail"
					       placeholder="email">
					<small id="helpEmail" class="form-text text-muted">Help text</small>
				</div>
				<div class="form-group">
					<label for="tel">전화</label>
					<input type="text" class="form-control" name="tel" id="tel" aria-describedby="helpTel"
					       placeholder="tel">
					<small id="helpTel" class="form-text text-muted">Help text</small>
				</div>
				<button type="submit" class="btn btn-info">가입</button>
			</form>
		</div>
	</div>
</div>
</body>
</html>