<%--
  Created by IntelliJ IDEA.
  User: skyzz
  Date: 2018-08-29
  Time: 오후 7:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<html lang="ko">
<head>
	<%@include file="../partials/head.html" %>
	<title>out 객체 버퍼 크기 확인</title>
</head>
<body>
<%@include file="../partials/nav.html" %>
<div class="starter-template" style="background-size: auto">
	<h3>Out 내장 객체</h3><br>
	<%
		int bufferSize = out.getBufferSize();
		int remainSize = out.getRemaining();
		int usedSize = bufferSize - remainSize;
	%>
	<h5>버퍼 전체 크기</h5>
	<%=bufferSize%>
	<br><br>
	<h5>사용한 버퍼 크기</h5>
	<%=usedSize%>
	<br><br>
	<h5>남은 버퍼 크기</h5>
	<%out.println(remainSize);%> byte
	<br><br>
</div>
</body>
</html>