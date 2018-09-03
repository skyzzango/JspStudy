<%@ page import="db_quiz01.StudentDao" %>
<%@ page import="db_quiz01.StudentDto" %><%--
  Created by IntelliJ IDEA.
  User: skyzz
  Date: 2018-09-03
  Time: 오후 9:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%
	// studentList.jsp 로 부터 넘어온 num 의 값
	int num = Integer.parseInt(request.getParameter("num"));

	StudentDao manager = StudentDao.getInstance();

	// num 값을 전달하여 getStudent 메서드 호출하여 리턴 된 값 저장
	StudentDto student = manager.getStudent(num);
%>
<html lang="ko">
<head>
	<%@include file="../partials/head.html" %>
	<title>학생 정보 수정 폼</title>
</head>
<body>
<%@include file="../partials/nav.html" %>
<div class="starter-template" style="background-size: auto">
	<h3>학생 정보 수정</h3><br>
	<form action="studentUpdate.jsp" method="post">
		<%--Student 에 저장된 값을 value 속성을 이용하여 출력--%>
		<div class="form-group">
			<label class="sr-only" for="num">번호</label>
			<input type="hidden"
			       class="form-control" name="num" id="num" placeholder="번호" value="<%=student.getNum()%>">
		</div>
		<div class="form-group">
			<label for="user_name">이름</label>
			<input type="text" class="form-control" name="name" id="user_name" aria-describedby="help_name"
			       placeholder="이름 입력" value="<%=student.getName()%>">
			<small id="help_name" class="form-text text-muted">Help text</small>
		</div>
		<div class="form-group">
			<label for="user_phone">핸드폰</label>
			<input type="tel"
			       class="form-control" name="phone" id="user_phone" aria-describedby="help_phone"
			       placeholder="핸드폰 번호 입력" value="<%=student.getPhone()%>">
			<small id="help_phone" class="form-text text-muted">Help text</small>
		</div>
		<div class="form-group">
			<label for="user_email">이메일</label>
			<input type="email"
			       class="form-control" name="email" id="user_email" aria-describedby="help_email"
			       placeholder="이메일 주소 입력" value="<%=student.getEmail()%>">
			<small id="help_email" class="form-text text-muted">Help text</small>
		</div>
		<div class="form-group">
			<label for="user_address">주소</label>
			<input type="text"
			       class="form-control" name="address" id="user_address" aria-describedby="help_address"
			       placeholder="주소 입력" value="<%=student.getAddress()%>">
			<small id="help_address" class="form-text text-muted">Help text</small>
		</div>
		<button type="submit" class="btn btn-primary">수정</button>
	</form>
</div>
</body>
</html>
