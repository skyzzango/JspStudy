<%--
  Created by IntelliJ IDEA.
  User: skyzz
  Date: 2018-08-30
  Time: 오후 12:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<html lang="ko">
<head>
	<%@include file="../head.html" %>
	<title>kakao.Quiz01</title>
</head>
<body>
<%@include file="../nav.html" %>
<div class="starter-template" style="background-size: auto">
	<h3>입력 정보 전송</h3><br>
	<form action="infoResult.jsp" method="get" style="width: 15rem;">
		<div class="form-group">
			<label for="user_id">ID</label>
			<input type="text" class="form-control" name="user_id" id="user_id" aria-describedby="helpId"
			       placeholder="아이디 입력">
			<small id="helpId" class="form-text text-muted">Help text</small>
		</div>
		<div class="form-group">
			<label for="user_pw">PW</label>
			<input type="text" class="form-control" name="user_pw" id="user_pw" aria-describedby="helpPw"
			       placeholder="비밀번호 입력">
			<small id="helpPw" class="form-text text-muted">Help text</small>
		</div>
		<div class="form-group">
			<label for="user_info">자기소개</label>
			<textarea class="form-control" name="user_info" id="user_info" rows="4"></textarea>
		</div>
		<button type="submit" class="btn btn-info">가입 하기</button>
	</form>
</div>
</body>
</html>