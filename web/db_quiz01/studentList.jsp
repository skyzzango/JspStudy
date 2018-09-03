<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="db_quiz01.StudentDao" %>
<%@ page import="java.util.List" %>
<%@ page import="db_quiz01.StudentDto" %><%--
  Created by IntelliJ IDEA.
  User: skyzz
  Date: 2018-09-03
  Time: 오후 7:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<html lang="ko">
<%
	SimpleDateFormat sdf = new SimpleDateFormat("yyy-MM-dd HH:mm");
	StudentDao manager = StudentDao.getInstance();
	List<StudentDto> list = manager.getList();
	StudentDto data;
%>
<head>
	<%@include file="../partials/head.html" %>
	<title>학생 리스트</title>
</head>
<body>
<%@include file="../partials/nav.html" %>
<div class="starter-template" style="background-size: auto">
	<h3>학생 리스트</h3><br>
	<table class="table">
		<thead>
		<tr>
			<th>회원번호</th>
			<th>이름</th>
			<th>폰번호</th>
			<th>이메일</th>
			<th>주소</th>
			<th>가입일자</th>
			<th>수정</th>
			<th>삭제</th>
		</tr>
		</thead>
		<tbody>
		<%
			for (StudentDto stu : list) {
				data = stu;
		%>
		<tr>
			<td scope="row"><%=data.getNum() %>
			</td>
			<td><%=data.getName() %>
			</td>
			<td><%=data.getPhone() %>
			</td>
			<td><%=data.getEmail() %>
			</td>
			<td><%=data.getAddress() %>
			</td>
			<td><%=sdf.format(data.getReg_date()) %>
			</td>
			<td>
				<a name="update" id="update" class="btn btn-info"
				   href="studentUpdateForm.jsp?num=<%=data.getNum()%>"
				   role="button"> 수정 </a>
			</td>
			<td>
				<a name="delete" id="delete" class="btn btn-danger"
				   href="studentDelete.jsp?num=<%=data.getNum()%>"
				   role="button"> 삭제 </a>
			</td>
		</tr>
		<%
			}
		%>
		<tr>
			<td colspan="8" align="right">
				<button type="button" value="회원추가" onclick="location.href='studentJoinForm.jsp'"
				        class="btn btn-primary">
					학생 추가
				</button>
			</td>
		</tr>
		</tbody>
	</table>
</div>
</body>
</html>
