<%--
  Created by IntelliJ IDEA.
  User: skyzz
  Date: 2018-08-30
  Time: 오후 1:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<html lang="ko">
<head>
	<%@include file="../../partials/head.html" %>
	<title>Quiz03</title>
</head>
<body>
<%@include file="../../partials/nav.html" %>
<div class="starter-template" style="background-size: auto">
	<h3>선택 정보 확인 실행</h3><br>
	<form action="selectResult.jsp" method="get" style="width: 15rem">
		<div class="form-group">
			<label for="pageMove">검색 엔진 선택</label>
			<select class="form-control" name="pageMove" id="pageMove">
				<option value="구글">구글</option>
				<option value="네이버">네이버</option>
				<option value="다음">다음</option>
			</select>
		</div>
		<button type="submit" class="btn btn-primary">이동</button>
	</form>
</div>
</body>
</html>