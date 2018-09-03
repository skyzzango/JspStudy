<%--
  Created by IntelliJ IDEA.
  User: skyzz
  Date: 2018-08-30
  Time: 오후 1:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<html lang="ko">
<head>
	<%@include file="../../partials/head.html" %>
	<title>결과 페이지</title>
</head>
<body>
<%@include file="../../partials/nav.html" %>
<div class="starter-template" style="background-size: auto">
	<h3>입력 받은 정보로 계산</h3><br>
	<h5>계산 결과</h5>
	<%
		int num = Integer.parseInt(request.getParameter("number"));
		int result = 0;
		StringBuilder str = new StringBuilder();
		for (int i = 1; i <= num; i++) {

			if (i != (num)) {
				str.append(i).append(" + ");
			} else {
				str.append(i).append(" = ");
			}
			result += i;
		}
	%>
	<%=str.toString() + result%>
</div>
</body>
</html>
