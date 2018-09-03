<%@ page import="db_quiz01.StudentDao" %><%--
  Created by IntelliJ IDEA.
  User: skyzz
  Date: 2018-09-03
  Time: 오후 10:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%
	// get 방식으로 넘어온 num 값을 변수에 저장
	int num = Integer.parseInt(request.getParameter("num"));

	// DAO 의 delete 메서드 호출 / num 전달
	StudentDao manager = StudentDao.getInstance();
	manager.delete(num);
%>
<script>
	alert("삭제 완료");
	location.href = "studentList.jsp";
</script>
