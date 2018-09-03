<%@ page import="db_quiz01.StudentDao" %>
<%@ page import="db_quiz01.StudentDto" %><%--
  Created by IntelliJ IDEA.
  User: skyzz
  Date: 2018-09-03
  Time: 오후 6:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%
	// post 방식으로 전송된 값 인코딩 타입 설정
	request.setCharacterEncoding("UTF-8");

	// form 으로 넘어온 값을 변수에 저장
	String name = request.getParameter("name");
	String phone = request.getParameter("phone");
	String email = request.getParameter("email");
	String address = request.getParameter("address");

	// DTO 객체에 값을 저장
	StudentDto data = new StudentDto();
	data.setName(name);
	data.setPhone(phone);
	data.setEmail(email);
	data.setAddress(address);

	// DAO 의 insert 메서드 호출 / DTO 객체(data) 전달
	StudentDao manager = StudentDao.getInstance();
	manager.insert(data);
%>
<%--memberList.jsp 로 이동--%>
<script>
	alert("회원가입 성공!");
	location.href = "studentList.jsp";
</script>