<%--
  Created by IntelliJ IDEA.
  User: skyzz
  Date: 2018-08-29
  Time: 오후 5:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="utf-8" %>
<html lang="ko">
<head>
	<%@include file="../partials/head.html" %>
	<title>폼 실습 및 파라미터 요청</title>
</head>
<body>
<%@include file="../partials/nav.html" %>
<div class="starter-template" style="background-size: auto">
	<h3>request 파라미터 관련 메서드</h3><br>
	<h5>폼에 데이터를 입력한 후 '전송' 버튼을 클릭하세요.</h5><br>
	<form action="" method="post">
		<div class="form-group">
			<label for="name">이름</label>
			<input type="text" class="form-control" name="name" id="name" aria-describedby="helpName" placeholder="이름">
			<small id="helpName" class="form-text text-muted">Help text</small>
		</div>
		<div class="form-group">
			<label for="address">주소</label>
			<input type="text" class="form-control" name="address" id="address" aria-describedby="helpAddress"
			       placeholder="주소">
			<small id="helpAddress" class="form-text text-muted">Help text</small>
		</div>
		<div class="form-group">
			<label for="name">좋아하는 동물</label>
			<div class="form-check">
				<label class="form-check-label">
					<input type="checkbox" class="form-check-input" name="dog" id="dog" value="dog">
					강아지
				</label>
			</div>
			<div class="form-check">
				<label class="form-check-label">
					<input type="checkbox" class="form-check-input" name="cat" id="cat" value="cat">
					고양이
				</label>
			</div>
			<div class="form-check">
				<label class="form-check-label">
					<input type="checkbox" class="form-check-input" name="pig" id="pig" value="pig">
					돼지
				</label>
			</div>
		</div>
	</form>
</div>
</body>
</html>
