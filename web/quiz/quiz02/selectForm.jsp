<%--
  Created by IntelliJ IDEA.
  User: skyzz
  Date: 2018-08-30
  Time: 오후 12:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<html lang="ko">
<head>
	<%@include file="../head.html" %>
	<title>Quiz02</title>
</head>
<body>
<%@include file="../nav.html" %>
<div class="starter-template" style="background-size: auto">
	<h3>선택 정보 전송</h3><br>
	<form action="selectResult.jsp" method="get" style="width: 15rem">
		<div class="form-group">
			<label for="user_edu">학력</label>
			<select class="form-control" name="user_edu" id="user_edu">
				<option value="edu01">재학생</option>
				<option value="esu02">학사</option>
				<option value="esu03">박사</option>
			</select>
		</div>
		<div class="form-group">
			<label for="user_con">국가</label>
			<select class="form-control" name="user_con" id="user_con">
				<option value="ko">대한민국</option>
				<option value="us">미국</option>
				<option value="ja">일본</option>
			</select>
		</div>
		<div class="form-check">
			<h5>관심 분야</h5>
			<label class="form-check-label">
				<input type="checkbox" class="form-check-input" name="user_inte" value="컨설팅">
				컨설팅
				<br>
				<input type="checkbox" class="form-check-input" name="user_inte" value="프로듀스">
				프로듀스
				<br>
				<input type="checkbox" class="form-check-input" name="user_inte" value="프로그래머">
				프로그래머
				<br>
				<input type="checkbox" class="form-check-input" name="user_inte" value="서버관리자">
				서버관리자
				<br>
			</label>
		</div>
		<button type="submit" class="btn btn-info">전송</button>
		<button type="reset" class="btn btn-warning">초기화</button>
	</form>
</div>
</body>
</html>