<%--
  Created by IntelliJ IDEA.
  User: skyzz
  Date: 2018-08-29
  Time: 오후 8:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<html lang="ko">
<head>
	<%@include file="../../partials/head.html" %>
	<title>페이지 선택 화면</title>
</head>
<body>
<%@include file="../../partials/nav.html" %>
<div class="starter-template" style="background-size: auto">
	<h3>페이지 이동 선택</h3><br>
	<%=request.getContextPath()%>
	<form action="./Ex01_view.jsp">
		<div class="form-group">
			<label for="pageName">보고 싶은 페이지 선택</label>
			<select class="form-control" name="pageName" id="pageName" style="width: 15rem">
				<option value="A">A 페이지</option>
				<option value="B">B 페이지</option>
				<option value="C">C 페이지</option>
			</select>
		</div>
		<button type="submit" class="btn btn-info">이동</button>
	</form>
</div>
</body>
</html>