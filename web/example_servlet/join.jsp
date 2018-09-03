<%--
  Created by IntelliJ nameEA.
  User: skyzz
  Date: 2018-08-20
  Time: 오전 12:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
	<title>회원가입</title>
	<link href="style.css" rel="stylesheet" type="text/css">
</head>
<body>
<form action="/ji" method="post">
	<fieldset class="register">
		<legend>가입하기</legend>
		<ul>
			<li>
				<label class="reg">아이디 <em>*</em></label>
				<input type="text" name="new_id" size="20" autocomplete="on" required title="">
			</li>
			<li>
				<label class="reg">비밀번호 <em>*</em></label>
				<input type="password" name="new_pw1" size="20" required title="">
			</li>
			<li>
				<label class="reg">비밀번호 확인 <em>*</em></label>
				<input type="password" name="new_pw2" size="20" required title="">
			</li>
			<li>
				<label class="reg">이름 <em>*</em></label>
				<input type="text" name="user_name" size="20" required title="">
			</li>
			<li>
				<label class="reg">성별 <em>*</em></label>
				<label>남자<input type="radio" name="gender" value="남"/></label>
				<label>여자<input type="radio" name="gender" value="여"/></label>
			</li>
			<li>
				<label class="reg">메일 주소 <em>*</em></label>
				<input type="email" name="user_mail" size="20" required title="">
			</li>
			<li>
				<label class="reg">전화번호 </label>
				<select name="user_tel1" title="">
					<option>010</option>
					<option>011</option>
					<option>016</option>
				</select>
				<input type="tel" name="user_tel2" size="3" title="">
				<input type="tel" name="user_tel3" size="4" title="">
			</li>
			<li>
				<label class="reg">개인 홈페이지 </label>
				<input type="url" name="user_homepage" title="">
			</li>
		</ul>
		<fieldset class="send">
			<input type="submit" value="가입하기">
			<input type="reset" value="다시쓰기">
			<a href="test.jsp"><input type="button" value="뒤로가기"></a>
		</fieldset>
	</fieldset>
</form>
</body>
</html>
