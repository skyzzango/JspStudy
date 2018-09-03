<%--
  Created by IntelliJ IDEA.
  User: skyzz
  Date: 2018-08-19
  Time: 오후 3:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="utf-8" %>
<html>
<head>
	<title>가입화면</title>
	<link href="../example_servlet/style.css" rel="stylesheet" type="text/css">
</head>
<body>
<form>
	<fieldset class="register">
		<legend>가입하기</legend>
		<ul>
			<li>
				<label class="reg" for="new_id">아이디 <em>*</em></label>
				<input type="text" id="new_id" size="20" autocomplete="on" required>
			</li>
			<li>
				<label class="reg" for="new_pw1">비밀번호 <em>*</em></label>
				<input type="password" id="new_pw1" size="20" required>
			</li>
			<li>
				<label class="reg" for="new_pw2">비밀번호 확인 <em>*</em></label>
				<input type="password" id="new_pw2" size="20" required>
			</li>
			<li>
				<label class="reg" for="user_name">이름 <em>*</em></label>
				<input type="text" id="user_name" size="20" required>
			</li>
			<li>
				<label class="reg" for="user_mail">메일 주소 <em>*</em></label>
				<input type="email" id="user_mail" size="20" required>
			</li>
			<li>
				<label class="reg" for="user_tel">전화번호 </label>
				<input type="tel" id="user_tel"  size="20">
			</li>
			<li>
				<label class="reg" for="user_homepage">개인 홈페이지 </label>
				<input type="url" id="user_homepage">
			</li>
		</ul>
	</fieldset>
	<fieldset class="send">
		<input type="submit" value="가입하기">
		<input type="reset" value="다시쓰기">
		<input type="button" value="뒤로가기" onclick="history.back()">
	</fieldset>
	<%=request.getParameter("id")%>
	<%=request.getParameter("pw")%>
</form>
</body>
</html>
