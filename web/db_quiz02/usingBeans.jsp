<%@ page import="java.util.Vector" %>
<%@ page import="db_ex02.TempMemberVO" %><%--
  Created by IntelliJ IDEA.
  User: skyzz
  Date: 2018-09-04
  Time: 오후 12:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<html lang="ko">
<head>
	<%@include file="../partials/head.html" %>
	<title>JSP 에서 데이터베이스 연동하기</title>
</head>
<body>
<%@include file="../partials/nav.html" %>
<div class="starter-template" style="background-size: auto">
	<h3>Beans 를 사용한 데이터베이스 연동 예제</h3><br>
	<table class="table">
		<thead>
		<tr>
			<th>Id</th>
			<th>Name</th>
			<th>Password</th>
			<th>Mem_num1</th>
			<th>Mem_num2</th>
			<th>Email</th>
			<th>Phone</th>
			<th>ZipCode</th>
			<th>Address</th>
			<th>Job</th>
		</tr>
		</thead>
		<tbody>
		<jsp:useBean id="dao" class="db_ex02.TempMemberDao"/>
		<%
			Vector<TempMemberVO> list = dao.getMemberList();
			int counter = list.size();
			for (int i = 0; i < list.size(); i++) {
				TempMemberVO tmp = list.elementAt(i);
		%>
		<tr>
			<td scope="row"><%= tmp.getId() %></td>
			<td><%= tmp.getName() %></td>
			<td><%= tmp.getPassword() %></td>
			<td><%= tmp.getMem_num1() %></td>
			<td><%= tmp.getMem_num2() %></td>
			<td><%= tmp.getEmail() %></td>
			<td><%= tmp.getPhone() %></td>
			<td><%= tmp.getZipcode() %></td>
			<td><%= tmp.getAddress() %></td>
			<td><%= tmp.getJob() %></td>
		</tr>
		<%
			}
		%>
		</tbody>
	</table>
	<h5>total records : <%= counter %></h5>
</div>
</body>
</html>
