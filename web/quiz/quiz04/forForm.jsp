<%--
  Created by IntelliJ IDEA.
  User: skyzz
  Date: 2018-08-30
  Time: 오후 1:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<html lang="ko">
<head>
	<%@include file="../../partials/head.html" %>
	<title>입력 페이지</title>
</head>
<body>
<%@include file="../../partials/nav.html" %>
<div class="starter-template" style="background-size: auto">
	<h3>For 문으로 누적 덧셈</h3><br>
	<form action="forResult.jsp" method="get" style="width: 15rem;">
		<div class="form-group">
			<label for="number">1 부터 덧셈할 숫자 입력</label>
			<input type="text" class="form-control" name="number" id="number" aria-describedby="helpNum"
			       placeholder="number">
			<small id="helpNum" class="form-text text-muted">Help text</small>
		</div>
		<button type="submit" class="btn btn-info">확인</button>
	</form>
</div>
</body>
</html>