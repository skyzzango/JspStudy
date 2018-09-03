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
	<!-- Bootstrap core CSS -->
	<link href="/static/css/bootstrap.min.css" rel="stylesheet">
	<!--Font Awesome-->
	<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
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
	<fieldset class="login">
		<form action="../example/LoginOk.jsp" method="post">
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
			<a href="join.jsp"><input type="button" value="회원가입"></a>
		</form>
	</fieldset>
</section>
<div class="btn-group btn-group-lg">
	<button type="button" class="btn btn-primary">애플</button>
	<button type="button" class="btn btn-primary">삼성</button>
	<button type="button" class="btn btn-primary">소니</button>
</div>
<div class="btn-group">
	<button type="button" class="btn btn-primary">애플</button>
	<button type="button" class="btn btn-primary">삼성</button>
	<nav class="btn-group">
		<button type="button" class="btn-primary dropdown-toggle" data-toggle="dropdown">
			소니
		</button>
		<div class="dropdown-menu">
			<button class="dropdown-item" href="#">Tablet</button>
			<a class="dropdown-item" href="#">SamartPhone</a>
		</div>
	</nav>
</div>
<br>
<%--<%@include file="hello.jsp" %>--%>
<%--<jsp:forward page="signup.jsp">--%>
<%--<jsp:param name="id" value="song"/>--%>
<%--<jsp:param name="pw" value="123"/>--%>
<%--</jsp:forward>--%>
</body>
</html>
