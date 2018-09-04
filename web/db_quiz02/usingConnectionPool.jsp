<%@ page import="java.sql.*" %>
<%@ page import="org.h2.jdbcx.JdbcDataSource" %>
<%@ page import="db_ex02.ConnectionPool" %><%--
  Created by IntelliJ IDEA.
  User: skyzz
  Date: 2018-09-04
  Time: 오전 9:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%
	ConnectionPool pool = ConnectionPool.getInstance();
	String id,
			name,
			password,
			mem_num1,
			mem_num2,
			email,
			phone,
			zipcode,
			address,
			job;
	int counter = 0;

	JdbcDataSource ds = new JdbcDataSource();
	ds.setURL("jdbc:h2:C:/Users/skyzz/IdeaProjects/JspStudy/src/db_ex02/h2");
	ds.setUser("iu");
	ds.setPassword("iu1004");

	try (
			Connection conn = pool.getConnection();
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery("select * from TEMPMEMBER")
	) {

%>
<html lang="ko">
<head>
	<%@include file="../partials/head.html" %>
	<title>JSP 에서 데이터베이스 연동하기</title>
</head>
<body>
<%@include file="../partials/nav.html" %>
<div class="starter-template" style="background-size: auto">
	<h3>JSP 스크립틀릿에서 데이터베이스 연동하는 예제</h3><br>
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
		<%
			if (rs != null) {
				while (rs.next()) {
					id = rs.getString("id");
					password = rs.getString("password");
					name = rs.getString("name");
					mem_num1 = rs.getString("mem_num1");
					mem_num2 = rs.getString("mem_num2");
					email = rs.getString("email");
					phone = rs.getString("phone");
					zipcode = rs.getString("zipcode");
					address = rs.getString("address");
					job = rs.getString("job");

		%>
		<tr>
			<td scope="row"><%= id %>
			</td>
			<td><%= name %>
			</td>
			<td><%= password %>
			</td>
			<td><%= mem_num1 %>
			</td>
			<td><%= mem_num2 %>
			</td>
			<td><%= email %>
			</td>
			<td><%= phone %>
			</td>
			<td><%= zipcode %>
			</td>
			<td><%= address %>
			</td>
			<td><%= job %>
			</td>
		</tr>
		<%
					counter++;
				}
			}
		%>
		</tbody>
	</table>
	<h5>total records : <%= counter %>
	</h5>
</div>
</body>
</html>
<%
		pool.releaseConnection(conn);
	} catch (SQLException e) {
		e.printStackTrace();
	}
%>