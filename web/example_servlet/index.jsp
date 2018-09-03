<%--
  Created by IntelliJ IDEA.
  User: skyzz
  Date: 2018-08-17
  Time: 오후 8:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="utf-8" %>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
	<title>로그인</title>
</head>
<body>
<section>
	<form action="../example/request.jsp" method="post">
		<fieldset class="search">
			<legend>검색</legend>
			<label>
				검색
				<input type="search" name="user_search" autofocus>
			</label>
			<input type="submit" value="검색">
		</fieldset>
	</form>
	<form action="../example/LoginOk.jsp" method="post">
		<fieldset class="login">
			<legend>로그인</legend>
			<label>
				아이디
				<input type="text" name="user_id" size="10" autofocus>
			</label>
			<label>
				비밀번호
				<input type="password" name="user_pw" size="10">
			</label>
			<input type="submit" value="로그인">
		</fieldset>
	</form>
</section>
<section>
</section>
<br>
<%--<%@include file="hello.jsp" %>--%>
<%--<jsp:forward page="signup.jsp">--%>
	<%--<jsp:param name="id" value="song"/>--%>
	<%--<jsp:param name="pw" value="123"/>--%>
<%--</jsp:forward>--%>
</body>
</html>
